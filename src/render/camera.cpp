#include "camera.h"

Camera::Camera(int pWidth, int pHeight, glm::vec3 pPosition, glm::vec3 pOrientation) {
    Camera::width = pWidth;
    Camera::height = pHeight;
    Position = pPosition;
    Orientation = pOrientation;
}

void Camera::updateMatrix(float pFOVdeg, float pNearPlane, float pFarPlane) {
    glm::mat4 view = glm::mat4(1.0f);
    glm::mat4 projection = glm::mat4(1.0f);
    FOVdeg = pFOVdeg;
    nearPlane = pNearPlane;
    farPlane = pFarPlane;

    view = glm::lookAt(Position, Position + Orientation, Up);
    projection = GetProjectionMatrix();
    cameraMatrix = projection * view;
}

glm::mat4 Camera::GetProjectionMatrix() {
    return glm::perspective(glm::radians(FOVdeg), (float)((float)width/(float)height), nearPlane, farPlane);;
}

void Camera::updateResolution(int pWidth, int pHeight) {
    Camera::width = pWidth;
    Camera::height = pHeight;
}

void Camera::Matrix(Shader& shader, const char* uniform) {
    glUniformMatrix4fv(glGetUniformLocation(shader.Id, uniform), 1, GL_FALSE, glm::value_ptr(cameraMatrix));
}

void Camera::setDelta(double delta) {
    Camera::delta = delta;
}

glm::mat4 Camera::GetViewMatrix() {
    return glm::lookAt(Position, Position + Orientation, Up);
}

void Camera::Inputs(GLFWwindow* window) {
    float tSpeed = speed * delta;

    // WASD
    if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS)
        Velocity += tSpeed * Orientation;
    if (glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS)
        Velocity += tSpeed * -glm::normalize(glm::cross(Orientation, Up));
    if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS)
        Velocity += tSpeed * -Orientation;
    if (glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS)
        Velocity += tSpeed * glm::normalize(glm::cross(Orientation, Up));
    // Up / Down
    if (glfwGetKey(window, GLFW_KEY_SPACE) == GLFW_PRESS)
        Velocity += tSpeed * Up;
    if (glfwGetKey(window, GLFW_KEY_LEFT_SHIFT) == GLFW_PRESS)
        Velocity += tSpeed * -Up;

    // Speed control
    if (glfwGetKey(window, GLFW_KEY_0) == GLFW_PRESS)
        speed = 0.1f;
    if (glfwGetKey(window, GLFW_KEY_Q) == GLFW_PRESS && !speedModified) {
        speed *= 2;
        speedModified = true;
    }
    if (glfwGetKey(window, GLFW_KEY_E) == GLFW_PRESS && !speedModified) {
        speed *= 0.5f;
        speedModified = true;
    }
    if (glfwGetKey(window, GLFW_KEY_Q) == GLFW_RELEASE && glfwGetKey(window, GLFW_KEY_E) == GLFW_RELEASE && speedModified)
        speedModified = false;

    // Cursor control
    if (glfwGetMouseButton(window, GLFW_MOUSE_BUTTON_LEFT) == GLFW_PRESS) {
        glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);
        firstClick = false;
    }

    if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS) {
        glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_NORMAL);
        firstClick = true;
    }

    if (!firstClick) {
        static double lastX = width / 2.0;
        static double lastY = height / 2.0;

        double mouseX, mouseY;
        glfwGetCursorPos(window, &mouseX, &mouseY);

        float deltaX = (float)(mouseX - lastX);
        float deltaY = (float)(mouseY - lastY);

        lastX = mouseX;
        lastY = mouseY;

        float rotationX = sensitivity * deltaY / height;
        float rotationY = sensitivity * deltaX / width;

        // Rotate vertically (around right vector)
        glm::vec3 right = glm::normalize(glm::cross(Orientation, Up));
        glm::vec3 newOrientation = glm::rotate(Orientation, glm::radians(-rotationX), right);

        float angleFromUp = glm::angle(newOrientation, Up);
        if (angleFromUp > glm::radians(10.0f) && angleFromUp < glm::radians(170.0f))
            Orientation = newOrientation;

        // Rotate horizontally (around Up)
        Orientation = glm::rotate(Orientation, glm::radians(-rotationY), Up);
    }

    Position += Velocity;

    // Apply drag
    Velocity /= 1.1f;
}