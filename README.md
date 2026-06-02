# 🐦 Flappy Bird Coin Collector (Godot 4)

A fun 2D arcade game built with **Godot Engine 4**, inspired by the classic Flappy Bird. The player controls a bird that must fly through pipes while collecting coins to increase the score. The game ends when the bird collides with an obstacle or falls out of bounds.

## Gameplay:

https://github.com/user-attachments/assets/63901365-5aa6-4741-9f0e-f7b7547f38b7


## 🎮 Features

- Smooth bird movement with gravity
- Spacebar / Click to flap
- Randomly generated pipe obstacles
- Coin collection system
- Score counter
- High-score tracking
- Game Over screen
- Restart functionality


## 🚀 How to Play

### Controls

| Key | Action |
|------|---------|
| Space | Flap Up |


### Objective

1. Fly through pipe gaps.
2. Avoid colliding with pipes.
3. Collect coins to increase your score.
4. Survive as long as possible.
5. Beat your highest score.

## ⚙️ Game Mechanics

### Bird Movement

The bird is affected by gravity continuously.

```gdscript
velocity.y += gravity * delta
```

When the player presses Space:

```gdscript
velocity.y = jump_force
```

### Pipe Generation

```gdscript
func spawn_pipe():
    var pipe = pipe_scene.instantiate()
    add_child(pipe)
```

### Coin Collection

```gdscript
score += 1
queue_free()
```

### Collision Detection

```gdscript
func _on_body_entered(body):
    game_over()
```

## 🏆 Scoring System

- +1 point for passing a pipe
- +1 point for collecting a coin

## 📖 Learning Outcomes

This project demonstrates:

- Godot Node System
- CharacterBody2D
- Physics Processing
- Signals
- Scene Instancing
- UI Management
- Collision Detection
- Random Number Generation

## 🔮 Future Improvements

- Power-ups
- Multiple Bird Skins
- Sound Effects
- Mobile Controls
- Online Leaderboards
- Day/Night Themes

## ▶️ Installation

```bash
git clone https://github.com/yourusername/flappy-bird-coin-collector.git
```

Open the project in Godot 4 and press **F5** to play.

## 📄 License

No License

## 👨‍💻 Author

Sairam v

Built with ❤️ using Godot Engine 4.
