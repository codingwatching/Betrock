#pragma once

#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>
#include <glm/gtx/rotate_vector.hpp>
#include <glm/gtx/vector_angle.hpp>

#include "shader.h"

class Camera
{
public:
    // Transform
    glm::vec3 Position    = glm::vec3(0.0f, 0.0f, 0.0f);
    glm::vec3 Orientation = glm::vec3(0.0f, 0.0f, -1.0f);
    glm::vec3 Up          = glm::vec3(0.0f, 1.0f,  0.0f);
    glm::vec3 Velocity    = glm::vec3(0.0f);

    // Camera settings
    float sensitivity = 100.0f;
    float speed       = kDefaultSpeed;

    Camera(int width, int height, glm::vec3 position, glm::vec3 orientation);

    void      UpdateMatrix(float fovDeg, float nearPlane, float farPlane);
    void      UpdateResolution(int width, int height);
    void      SetDelta(double delta);
    void      UploadMatrix(Shader& shader, const char* uniform) const;
    void      ProcessInput(GLFWwindow* window);

    glm::mat4 GetProjectionMatrix() const;
    glm::mat4 GetViewMatrix() const;

private:
    // Constants
    static constexpr float kDefaultSpeed = 0.1f;
    static constexpr float kDragFactor   = 1.1f;

    // Viewport
    int width  = 0;
    int height = 0;

    // Projection
    float FOVdeg    = 45.0f;
    float nearPlane = 0.1f;
    float farPlane  = 100.0f;

    // State
    glm::mat4 cameraMatrix = glm::mat4(1.0f);
    double    delta        = 0.0;
    bool      speedModified  = false;
    bool      cursorCaptured = false;

    // Mouse tracking
    double lastMouseX = 0.0;
    double lastMouseY = 0.0;

    // Input helpers
    void ProcessMovement(GLFWwindow* window);
    void ProcessSpeedControl(GLFWwindow* window);
    void ProcessCursorControl(GLFWwindow* window);
};