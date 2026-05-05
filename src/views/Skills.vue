<template>
  <div class="skills">
    <div class="page-hero">
      <div class="container">
        <span class="section-tag">Skills</span>
        <h1 class="section-heading">技能特长</h1>
        <p class="section-sub">专业能力与个人优势</p>
      </div>
    </div>

    <section class="skills-body">
      <div class="container">
        <div class="skills-grid">
          <div class="skill-category glass-card">
            <div class="cat-header">
              <div class="cat-icon">
                <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><rect x="2" y="2" width="20" height="8" rx="2" ry="2"/><rect x="2" y="14" width="20" height="8" rx="2" ry="2"/><line x1="6" y1="6" x2="6.01" y2="6"/><line x1="6" y1="18" x2="6.01" y2="18"/></svg>
              </div>
              <div>
                <span class="cat-label">Professional Skills</span>
                <h2>AI 专业技能</h2>
              </div>
            </div>
            <div class="skill-list">
              <div class="skill-item" v-for="skill in aiSkills" :key="skill.name">
                <div class="skill-top">
                  <span class="skill-name">{{ skill.name }}</span>
                  <span class="skill-level">{{ skill.level }}</span>
                </div>
                <div class="skill-track">
                  <div class="skill-fill" :style="{ width: skill.pct + '%' }">
                    <div class="skill-glow"></div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="skill-category glass-card">
            <div class="cat-header">
              <div class="cat-icon">
                <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"/><path d="M12 6v6l4 2"/></svg>
              </div>
              <div>
                <span class="cat-label">Soft Skills</span>
                <h2>软技能</h2>
              </div>
            </div>
            <div class="skill-list">
              <div class="skill-item" v-for="skill in softSkills" :key="skill.name">
                <div class="skill-top">
                  <span class="skill-name">{{ skill.name }}</span>
                  <span class="skill-level">{{ skill.level }}</span>
                </div>
                <div class="skill-track">
                  <div class="skill-fill soft" :style="{ width: skill.pct + '%' }">
                    <div class="skill-glow"></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="tools-section">
          <span class="section-tag">Tools</span>
          <h2 class="section-heading">常用工具</h2>
          <div class="tools-cloud">
            <span v-for="tool in tools" :key="tool" class="tool-chip">{{ tool }}</span>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script>
export default {
  name: 'Skills',
  data() {
    return {
      aiSkills: [
        { name: '深度学习模型训练', level: '精通', pct: 95 },
        { name: '机器学习算法', level: '精通', pct: 90 },
        { name: '自然语言处理 (NLP)', level: '熟练', pct: 85 },
        { name: 'PyTorch / TensorFlow', level: '熟练', pct: 88 },
        { name: '数据预处理与分析', level: '精通', pct: 92 },
      ],
      softSkills: [
        { name: '技术沟通与讲解', level: '精通', pct: 95 },
        { name: '创意问题解决', level: '熟练', pct: 88 },
        { name: '项目管理', level: '熟练', pct: 82 },
        { name: '跨团队协作', level: '熟练', pct: 85 },
      ],
      tools: ['Python', 'PyTorch', 'TensorFlow', 'Jupyter', 'Git', 'Docker', 'Linux', 'SQL', 'Pandas', 'NumPy', 'Scikit-learn', 'Hugging Face'],
    }
  }
}
</script>

<style scoped>
.skills {
  min-height: 100vh;
  position: relative;
  z-index: 1;
}

.page-hero {
  padding: 7rem 2rem 2rem;
  text-align: center;
}

.skills-body {
  padding: 2rem 2rem 6rem;
}

.skills-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(400px, 1fr));
  gap: 1.5rem;
  margin-bottom: 5rem;
}

.skill-category {
  padding: 2.25rem;
}

.cat-header {
  display: flex;
  align-items: flex-start;
  gap: 1rem;
  margin-bottom: 2rem;
  padding-bottom: 1.5rem;
  border-bottom: 1px solid var(--border-card);
}

.cat-icon {
  width: 44px;
  height: 44px;
  display: flex;
  align-items: center;
  justify-content: center;
  border-radius: var(--radius-md);
  background: rgba(0, 229, 255, 0.08);
  color: var(--cyan);
}

.cat-label {
  font-family: 'SF Mono', 'Fira Code', monospace;
  font-size: 0.68rem;
  font-weight: 600;
  text-transform: uppercase;
  letter-spacing: 0.1em;
  color: var(--text-muted);
  display: block;
  margin-bottom: 0.2rem;
}

.cat-header h2 {
  font-size: 1.25rem;
  font-weight: 650;
  color: var(--text-primary);
}

.skill-list {
  display: flex;
  flex-direction: column;
  gap: 1.4rem;
}

.skill-top {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 0.5rem;
}

.skill-name {
  font-size: 0.92rem;
  color: var(--text-primary);
}

.skill-level {
  font-family: 'SF Mono', 'Fira Code', monospace;
  font-size: 0.7rem;
  font-weight: 550;
  color: var(--cyan);
  padding: 0.15rem 0.65rem;
  background: rgba(0, 229, 255, 0.08);
  border: 1px solid rgba(0, 229, 255, 0.15);
  border-radius: 100px;
}

.skill-track {
  height: 4px;
  background: rgba(255, 255, 255, 0.04);
  border-radius: 2px;
  overflow: hidden;
}

.skill-fill {
  height: 100%;
  background: linear-gradient(90deg, var(--cyan), #00b8d4);
  border-radius: 2px;
  position: relative;
  transition: width 1.2s cubic-bezier(0.16, 1, 0.3, 1);
}

.skill-fill.soft {
  background: linear-gradient(90deg, var(--purple), var(--pink));
}

.skill-glow {
  position: absolute;
  right: 0;
  top: 50%;
  transform: translateY(-50%);
  width: 20px;
  height: 100%;
  background: currentColor;
  filter: blur(4px);
  opacity: 0.6;
}

.tools-section {
  text-align: center;
}

.tools-cloud {
  display: flex;
  flex-wrap: wrap;
  gap: 0.6rem;
  justify-content: center;
  max-width: 720px;
  margin: 2rem auto 0;
}

.tool-chip {
  font-size: 0.85rem;
  color: var(--text-secondary);
  padding: 0.5rem 1.1rem;
  background: rgba(0, 229, 255, 0.04);
  border: 1px solid var(--border-card);
  border-radius: 100px;
  transition: all var(--transition-base);
}

.tool-chip:hover {
  color: var(--cyan);
  border-color: rgba(0, 229, 255, 0.4);
  background: rgba(0, 229, 255, 0.08);
  box-shadow: 0 0 20px rgba(0, 229, 255, 0.12);
}

@media (max-width: 768px) {
  .skills-grid {
    grid-template-columns: 1fr;
  }
}
</style>
