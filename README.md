# 🚀 LoRA Fine-Tuning of a Small Language Model

## 📌 Project Overview

This project demonstrates **parameter-efficient fine-tuning** of a pre-trained Large Language Model (LLM) using **Low-Rank Adaptation (LoRA)**.
The model is trained on a custom instruction-based dataset to convert **informal English text into formal English**.

---

## 🎯 Objective

* Fine-tune a pre-trained LLM using LoRA
* Build a structured instruction-response dataset
* Improve model responses for a specific task
* Compare base model vs fine-tuned model outputs

---

## 🧠 Key Concepts

* **LoRA (Low-Rank Adaptation):** Efficient method that updates only a small subset of parameters instead of the full model
* **Instruction Tuning:** Training using input-output pairs to guide model behavior
* **PEFT (Parameter-Efficient Fine-Tuning):** Reduces memory and computation cost

---

## 🛠️ Technologies Used

* Python
* PyTorch
* Hugging Face Transformers
* Unsloth (for fast LoRA fine-tuning)
* Docker

---

## 📂 Project Structure

```
dataset/
│   training_data.jsonl

output/
│   loss_curve.png
│   comparison.md

train.py
predict.py
README.md
Dockerfile
docker-compose.yml
.env.example
```

---

## 📊 Dataset Details

* Format: JSON Lines (`.jsonl`)
* Total Samples: 120+
* Task: Convert informal English → formal English

### Example:

```
{"instruction": "Convert to formal English", "input": "hey send file", "output": "Please send the file."}
```

---

## ⚙️ Training Configuration

* **Base Model:** LLaMA 3.2 (3B)
* **Fine-Tuning Method:** LoRA
* **Rank (r):** 16
* **Alpha:** 32
* **Batch Size:** 2
* **Epochs:** 1

---

## 📉 Training Output

The training loss curve is generated and stored in:

```
output/loss_curve.png
```

This graph shows the model’s learning progression during training.

---

## 🔍 Model Evaluation

A side-by-side comparison of outputs from the base model and fine-tuned model is stored in:

```
output/comparison.md
```

### Example:

**Input:** hey send file
**Base Model Output:** hey send file
**Fine-Tuned Model Output:** Please send the file.

---

## 🐳 Docker Support

This project includes Docker configuration for reproducibility.

### Build:

```
docker build -t lora-project .
```

### Run:

```
docker-compose up
```

---

## 🚀 How to Run

### 1️⃣ Install Dependencies

```
pip install torch transformers datasets peft accelerate unsloth matplotlib
```

### 2️⃣ Train the Model

```
python train.py
```

### 3️⃣ Run Inference

```
python predict.py
```

---

## 📌 Results & Insights

* The fine-tuned model produces more **polite and professional responses**
* LoRA significantly reduces training cost while maintaining performance
* Instruction-based training improves task-specific accuracy

---

## 📚 Key Learnings

* Implementation of LoRA for efficient fine-tuning
* Creating high-quality instruction datasets
* Evaluating model outputs effectively
* Working with LLMs on limited hardware

---

## 📎 Conclusion

This project demonstrates how a general-purpose LLM can be adapted for a specific task using LoRA.
The fine-tuned model shows clear improvement in converting informal language into formal communication.

---


