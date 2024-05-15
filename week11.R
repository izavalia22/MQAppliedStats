head(bone.growth)

table(bone.growth[, c("gender", "bone.dev")])

with(bone.growth, interaction.plot(gender, bone.dev, growth))

bone.growth$bone.dev = factor(bone.growth$bone.dev)
bone.growth$gender = factor(bone.growth$gender)
head(bone.growth)

boxplot(growth ~ bone.dev:gender, data=bone.growth)

bone.growth.int = lm(growth ~ bone.dev * gender, data = bone.growth)
anova(aov(bone.growth.int))

bone.growth.int = lm(growth ~ bone.dev * gender, data = bone.growth)
anova(aov(bone.growth.int))


0.591761 + 0.464187*10 - 0.014470*10^2
