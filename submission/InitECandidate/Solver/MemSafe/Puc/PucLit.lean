import InitECandidate.Solver.MemSafe.Puc.CFinal

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Puc
variable {σ : Type}
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types

def bPmcPLit : Nat := 45948401619819792293569607778347358079210119018454055482354698364042

theorem bPmcP_eq : bPmcP = bPmcPLit := by
  unfold bPmcP bPmcPLit
  decide +kernel

theorem cbk_pucC : cbdP pucC = 2 := by
  unfold pucC
  try simp only [callD, cbdP, tblP_inc, tblP_pmc, bPmcP_eq]
  try decide_cbv

theorem cbk_pucD : cbdP pucD = 73786976294838206472 := by
  unfold pucD
  try simp only [callD, cbdP, tblP_inc, tblP_pmc, bPmcP_eq, cbk_pucC]
  try decide_cbv

theorem cbk_pucB : cbdP pucB = 73786976294838206472 := by
  unfold pucB
  try simp only [callD, cbdP, tblP_inc, tblP_pmc, bPmcP_eq, cbk_pucC, cbk_pucD]
  try decide_cbv

theorem cbk_pucA : cbdP pucA = 73786976294838206474 := by
  unfold pucA
  try simp only [callD, cbdP, tblP_inc, tblP_pmc, bPmcP_eq, cbk_pucC, cbk_pucD, cbk_pucB]
  try decide_cbv

theorem cbk_pucS31 : cbdP pucS31 = 0 := by
  unfold pucS31
  try simp only [callD, cbdP, tblP_inc, tblP_pmc, bPmcP_eq, cbk_pucC, cbk_pucD, cbk_pucB, cbk_pucA]
  try decide_cbv

theorem cbk_pucS30 : cbdP pucS30 = 73786976294838206474 := by
  unfold pucS30
  try simp only [callD, cbdP, tblP_inc, tblP_pmc, bPmcP_eq, cbk_pucC, cbk_pucD, cbk_pucB, cbk_pucA, cbk_pucS31]
  try decide_cbv

theorem cbk_pucS29 : cbdP pucS29 = 73786976294838206474 := by
  unfold pucS29
  try simp only [callD, cbdP, tblP_inc, tblP_pmc, bPmcP_eq, cbk_pucC, cbk_pucD, cbk_pucB, cbk_pucA, cbk_pucS31, cbk_pucS30]
  try decide_cbv

theorem cbk_pucS28 : cbdP pucS28 = 13159114253257016045473300376595037411620453947680808945847488914 := by
  unfold pucS28
  try simp only [callD, cbdP, tblP_inc, tblP_pmc, bPmcP_eq, cbk_pucC, cbk_pucD, cbk_pucB, cbk_pucA, cbk_pucS31, cbk_pucS30, cbk_pucS29]
  try decide_cbv

theorem cbk_pucS27 : cbdP pucS27 = 13159114253257016045473300376595037411620453947680808945847488914 := by
  unfold pucS27
  try simp only [callD, cbdP, tblP_inc, tblP_pmc, bPmcP_eq, cbk_pucC, cbk_pucD, cbk_pucB, cbk_pucA, cbk_pucS31, cbk_pucS30, cbk_pucS29, cbk_pucS28]
  try decide_cbv

theorem cbk_pucS26 : cbdP pucS26 = 45961560734073049309615081078723953116621739472401736291300545852957 := by
  unfold pucS26
  try simp only [callD, cbdP, tblP_inc, tblP_pmc, bPmcP_eq, cbk_pucC, cbk_pucD, cbk_pucB, cbk_pucA, cbk_pucS31, cbk_pucS30, cbk_pucS29, cbk_pucS28, cbk_pucS27]
  try decide_cbv

theorem cbk_pucS25 : cbdP pucS25 = 45961560734073049309615081078723953116621739472401736291300545852957 := by
  unfold pucS25
  try simp only [callD, cbdP, tblP_inc, tblP_pmc, bPmcP_eq, cbk_pucC, cbk_pucD, cbk_pucB, cbk_pucA, cbk_pucS31, cbk_pucS30, cbk_pucS29, cbk_pucS28, cbk_pucS27, cbk_pucS26]
  try decide_cbv

theorem cbk_pucS24 : cbdP pucS24 = 45961560734073049309615081078723953116621739472401736291300545852957 := by
  unfold pucS24
  try simp only [callD, cbdP, tblP_inc, tblP_pmc, bPmcP_eq, cbk_pucC, cbk_pucD, cbk_pucB, cbk_pucA, cbk_pucS31, cbk_pucS30, cbk_pucS29, cbk_pucS28, cbk_pucS27, cbk_pucS26, cbk_pucS25]
  try decide_cbv

theorem cbk_pucS23 : cbdP pucS23 = 45961560734073049309615081078723953116621739472401736291300545852970 := by
  unfold pucS23
  try simp only [callD, cbdP, tblP_inc, tblP_pmc, bPmcP_eq, cbk_pucC, cbk_pucD, cbk_pucB, cbk_pucA, cbk_pucS31, cbk_pucS30, cbk_pucS29, cbk_pucS28, cbk_pucS27, cbk_pucS26, cbk_pucS25, cbk_pucS24]
  try decide_cbv

theorem cbk_pucS22 : cbdP pucS22 = 45961560734073049309615081078723953116621739472401736291300545852970 := by
  unfold pucS22
  try simp only [callD, cbdP, tblP_inc, tblP_pmc, bPmcP_eq, cbk_pucC, cbk_pucD, cbk_pucB, cbk_pucA, cbk_pucS31, cbk_pucS30, cbk_pucS29, cbk_pucS28, cbk_pucS27, cbk_pucS26, cbk_pucS25, cbk_pucS24, cbk_pucS23]
  try decide_cbv

theorem cbk_pucS21 : cbdP pucS21 = 45961560734073049309615081078723953116621739472401736291300545852983 := by
  unfold pucS21
  try simp only [callD, cbdP, tblP_inc, tblP_pmc, bPmcP_eq, cbk_pucC, cbk_pucD, cbk_pucB, cbk_pucA, cbk_pucS31, cbk_pucS30, cbk_pucS29, cbk_pucS28, cbk_pucS27, cbk_pucS26, cbk_pucS25, cbk_pucS24, cbk_pucS23, cbk_pucS22]
  try decide_cbv

theorem cbk_pucS20 : cbdP pucS20 = 45961560734073049309615081078723953116621739472401736291300545852983 := by
  unfold pucS20
  try simp only [callD, cbdP, tblP_inc, tblP_pmc, bPmcP_eq, cbk_pucC, cbk_pucD, cbk_pucB, cbk_pucA, cbk_pucS31, cbk_pucS30, cbk_pucS29, cbk_pucS28, cbk_pucS27, cbk_pucS26, cbk_pucS25, cbk_pucS24, cbk_pucS23, cbk_pucS22, cbk_pucS21]
  try decide_cbv

theorem cbk_pucS19 : cbdP pucS19 = 45961560734073049309615081078723953116621739472401736291300545852983 := by
  unfold pucS19
  try simp only [callD, cbdP, tblP_inc, tblP_pmc, bPmcP_eq, cbk_pucC, cbk_pucD, cbk_pucB, cbk_pucA, cbk_pucS31, cbk_pucS30, cbk_pucS29, cbk_pucS28, cbk_pucS27, cbk_pucS26, cbk_pucS25, cbk_pucS24, cbk_pucS23, cbk_pucS22, cbk_pucS21, cbk_pucS20]
  try decide_cbv

theorem cbk_pucS18 : cbdP pucS18 = 45961560734073049309615081078723953116621739472401736291300545852983 := by
  unfold pucS18
  try simp only [callD, cbdP, tblP_inc, tblP_pmc, bPmcP_eq, cbk_pucC, cbk_pucD, cbk_pucB, cbk_pucA, cbk_pucS31, cbk_pucS30, cbk_pucS29, cbk_pucS28, cbk_pucS27, cbk_pucS26, cbk_pucS25, cbk_pucS24, cbk_pucS23, cbk_pucS22, cbk_pucS21, cbk_pucS20, cbk_pucS19]
  try decide_cbv

theorem cbk_pucS17 : cbdP pucS17 = 45961560734073049309615081078723953116621739472401736291300545852983 := by
  unfold pucS17
  try simp only [callD, cbdP, tblP_inc, tblP_pmc, bPmcP_eq, cbk_pucC, cbk_pucD, cbk_pucB, cbk_pucA, cbk_pucS31, cbk_pucS30, cbk_pucS29, cbk_pucS28, cbk_pucS27, cbk_pucS26, cbk_pucS25, cbk_pucS24, cbk_pucS23, cbk_pucS22, cbk_pucS21, cbk_pucS20, cbk_pucS19, cbk_pucS18]
  try decide_cbv

theorem cbk_pucS16 : cbdP pucS16 = 45961560734073049309615081078723953116621739472401736291300545852983 := by
  unfold pucS16
  try simp only [callD, cbdP, tblP_inc, tblP_pmc, bPmcP_eq, cbk_pucC, cbk_pucD, cbk_pucB, cbk_pucA, cbk_pucS31, cbk_pucS30, cbk_pucS29, cbk_pucS28, cbk_pucS27, cbk_pucS26, cbk_pucS25, cbk_pucS24, cbk_pucS23, cbk_pucS22, cbk_pucS21, cbk_pucS20, cbk_pucS19, cbk_pucS18, cbk_pucS17]
  try decide_cbv

theorem cbk_pucS15 : cbdP pucS15 = 45961560734073049309615081078723953116621739472401736291300545852983 := by
  unfold pucS15
  try simp only [callD, cbdP, tblP_inc, tblP_pmc, bPmcP_eq, cbk_pucC, cbk_pucD, cbk_pucB, cbk_pucA, cbk_pucS31, cbk_pucS30, cbk_pucS29, cbk_pucS28, cbk_pucS27, cbk_pucS26, cbk_pucS25, cbk_pucS24, cbk_pucS23, cbk_pucS22, cbk_pucS21, cbk_pucS20, cbk_pucS19, cbk_pucS18, cbk_pucS17, cbk_pucS16]
  try decide_cbv

theorem cbk_pucS14 : cbdP pucS14 = 45961560734073049309615081078723953116621739472401736291300545852983 := by
  unfold pucS14
  try simp only [callD, cbdP, tblP_inc, tblP_pmc, bPmcP_eq, cbk_pucC, cbk_pucD, cbk_pucB, cbk_pucA, cbk_pucS31, cbk_pucS30, cbk_pucS29, cbk_pucS28, cbk_pucS27, cbk_pucS26, cbk_pucS25, cbk_pucS24, cbk_pucS23, cbk_pucS22, cbk_pucS21, cbk_pucS20, cbk_pucS19, cbk_pucS18, cbk_pucS17, cbk_pucS16, cbk_pucS15]
  try decide_cbv

theorem cbk_pucS13 : cbdP pucS13 = 45961560734073049309615081078723953116621739472401736291300545852983 := by
  unfold pucS13
  try simp only [callD, cbdP, tblP_inc, tblP_pmc, bPmcP_eq, cbk_pucC, cbk_pucD, cbk_pucB, cbk_pucA, cbk_pucS31, cbk_pucS30, cbk_pucS29, cbk_pucS28, cbk_pucS27, cbk_pucS26, cbk_pucS25, cbk_pucS24, cbk_pucS23, cbk_pucS22, cbk_pucS21, cbk_pucS20, cbk_pucS19, cbk_pucS18, cbk_pucS17, cbk_pucS16, cbk_pucS15, cbk_pucS14]
  try decide_cbv

theorem cbk_pucS12 : cbdP pucS12 = 45961560734073049309615081078723953116621739472401736291300545852983 := by
  unfold pucS12
  try simp only [callD, cbdP, tblP_inc, tblP_pmc, bPmcP_eq, cbk_pucC, cbk_pucD, cbk_pucB, cbk_pucA, cbk_pucS31, cbk_pucS30, cbk_pucS29, cbk_pucS28, cbk_pucS27, cbk_pucS26, cbk_pucS25, cbk_pucS24, cbk_pucS23, cbk_pucS22, cbk_pucS21, cbk_pucS20, cbk_pucS19, cbk_pucS18, cbk_pucS17, cbk_pucS16, cbk_pucS15, cbk_pucS14, cbk_pucS13]
  try decide_cbv

theorem cbk_pucS11 : cbdP pucS11 = 45961560734073049309615081078723953116621739472401736291300545852983 := by
  unfold pucS11
  try simp only [callD, cbdP, tblP_inc, tblP_pmc, bPmcP_eq, cbk_pucC, cbk_pucD, cbk_pucB, cbk_pucA, cbk_pucS31, cbk_pucS30, cbk_pucS29, cbk_pucS28, cbk_pucS27, cbk_pucS26, cbk_pucS25, cbk_pucS24, cbk_pucS23, cbk_pucS22, cbk_pucS21, cbk_pucS20, cbk_pucS19, cbk_pucS18, cbk_pucS17, cbk_pucS16, cbk_pucS15, cbk_pucS14, cbk_pucS13, cbk_pucS12]
  try decide_cbv

theorem cbk_pucS10 : cbdP pucS10 = 45961560734073049309615081078723953116621739472401736291300545852983 := by
  unfold pucS10
  try simp only [callD, cbdP, tblP_inc, tblP_pmc, bPmcP_eq, cbk_pucC, cbk_pucD, cbk_pucB, cbk_pucA, cbk_pucS31, cbk_pucS30, cbk_pucS29, cbk_pucS28, cbk_pucS27, cbk_pucS26, cbk_pucS25, cbk_pucS24, cbk_pucS23, cbk_pucS22, cbk_pucS21, cbk_pucS20, cbk_pucS19, cbk_pucS18, cbk_pucS17, cbk_pucS16, cbk_pucS15, cbk_pucS14, cbk_pucS13, cbk_pucS12, cbk_pucS11]
  try decide_cbv

theorem cbk_pucS9 : cbdP pucS9 = 45961560734073049309615081078723953116621739472401736291300545852983 := by
  unfold pucS9
  try simp only [callD, cbdP, tblP_inc, tblP_pmc, bPmcP_eq, cbk_pucC, cbk_pucD, cbk_pucB, cbk_pucA, cbk_pucS31, cbk_pucS30, cbk_pucS29, cbk_pucS28, cbk_pucS27, cbk_pucS26, cbk_pucS25, cbk_pucS24, cbk_pucS23, cbk_pucS22, cbk_pucS21, cbk_pucS20, cbk_pucS19, cbk_pucS18, cbk_pucS17, cbk_pucS16, cbk_pucS15, cbk_pucS14, cbk_pucS13, cbk_pucS12, cbk_pucS11, cbk_pucS10]
  try decide_cbv

theorem cbk_pucS8 : cbdP pucS8 = 45961560734073049309615081078723953116621739472475523267595384059456 := by
  unfold pucS8
  try simp only [callD, cbdP, tblP_inc, tblP_pmc, bPmcP_eq, cbk_pucC, cbk_pucD, cbk_pucB, cbk_pucA, cbk_pucS31, cbk_pucS30, cbk_pucS29, cbk_pucS28, cbk_pucS27, cbk_pucS26, cbk_pucS25, cbk_pucS24, cbk_pucS23, cbk_pucS22, cbk_pucS21, cbk_pucS20, cbk_pucS19, cbk_pucS18, cbk_pucS17, cbk_pucS16, cbk_pucS15, cbk_pucS14, cbk_pucS13, cbk_pucS12, cbk_pucS11, cbk_pucS10, cbk_pucS9]
  try decide_cbv

theorem cbk_pucS7 : cbdP pucS7 = 45961560734073049309615081078723953116621739472475523267595384059456 := by
  unfold pucS7
  try simp only [callD, cbdP, tblP_inc, tblP_pmc, bPmcP_eq, cbk_pucC, cbk_pucD, cbk_pucB, cbk_pucA, cbk_pucS31, cbk_pucS30, cbk_pucS29, cbk_pucS28, cbk_pucS27, cbk_pucS26, cbk_pucS25, cbk_pucS24, cbk_pucS23, cbk_pucS22, cbk_pucS21, cbk_pucS20, cbk_pucS19, cbk_pucS18, cbk_pucS17, cbk_pucS16, cbk_pucS15, cbk_pucS14, cbk_pucS13, cbk_pucS12, cbk_pucS11, cbk_pucS10, cbk_pucS9, cbk_pucS8]
  try decide_cbv

theorem cbk_pucS6 : cbdP pucS6 = 45961560734073049309615081078723953116621739472475523267595384059456 := by
  unfold pucS6
  try simp only [callD, cbdP, tblP_inc, tblP_pmc, bPmcP_eq, cbk_pucC, cbk_pucD, cbk_pucB, cbk_pucA, cbk_pucS31, cbk_pucS30, cbk_pucS29, cbk_pucS28, cbk_pucS27, cbk_pucS26, cbk_pucS25, cbk_pucS24, cbk_pucS23, cbk_pucS22, cbk_pucS21, cbk_pucS20, cbk_pucS19, cbk_pucS18, cbk_pucS17, cbk_pucS16, cbk_pucS15, cbk_pucS14, cbk_pucS13, cbk_pucS12, cbk_pucS11, cbk_pucS10, cbk_pucS9, cbk_pucS8, cbk_pucS7]
  try decide_cbv

theorem cbk_pucS5 : cbdP pucS5 = 45961560734073049309615081078723953116621739472475523267595384059456 := by
  unfold pucS5
  try simp only [callD, cbdP, tblP_inc, tblP_pmc, bPmcP_eq, cbk_pucC, cbk_pucD, cbk_pucB, cbk_pucA, cbk_pucS31, cbk_pucS30, cbk_pucS29, cbk_pucS28, cbk_pucS27, cbk_pucS26, cbk_pucS25, cbk_pucS24, cbk_pucS23, cbk_pucS22, cbk_pucS21, cbk_pucS20, cbk_pucS19, cbk_pucS18, cbk_pucS17, cbk_pucS16, cbk_pucS15, cbk_pucS14, cbk_pucS13, cbk_pucS12, cbk_pucS11, cbk_pucS10, cbk_pucS9, cbk_pucS8, cbk_pucS7, cbk_pucS6]
  try decide_cbv

theorem cbk_pucS4 : cbdP pucS4 = 45961560734073049309615081078723953116621739472475523267595384059456 := by
  unfold pucS4
  try simp only [callD, cbdP, tblP_inc, tblP_pmc, bPmcP_eq, cbk_pucC, cbk_pucD, cbk_pucB, cbk_pucA, cbk_pucS31, cbk_pucS30, cbk_pucS29, cbk_pucS28, cbk_pucS27, cbk_pucS26, cbk_pucS25, cbk_pucS24, cbk_pucS23, cbk_pucS22, cbk_pucS21, cbk_pucS20, cbk_pucS19, cbk_pucS18, cbk_pucS17, cbk_pucS16, cbk_pucS15, cbk_pucS14, cbk_pucS13, cbk_pucS12, cbk_pucS11, cbk_pucS10, cbk_pucS9, cbk_pucS8, cbk_pucS7, cbk_pucS6, cbk_pucS5]
  try decide_cbv

theorem cbk_pucS3 : cbdP pucS3 = 45961560734073049309615081078723953116621739472475523267595384059456 := by
  unfold pucS3
  try simp only [callD, cbdP, tblP_inc, tblP_pmc, bPmcP_eq, cbk_pucC, cbk_pucD, cbk_pucB, cbk_pucA, cbk_pucS31, cbk_pucS30, cbk_pucS29, cbk_pucS28, cbk_pucS27, cbk_pucS26, cbk_pucS25, cbk_pucS24, cbk_pucS23, cbk_pucS22, cbk_pucS21, cbk_pucS20, cbk_pucS19, cbk_pucS18, cbk_pucS17, cbk_pucS16, cbk_pucS15, cbk_pucS14, cbk_pucS13, cbk_pucS12, cbk_pucS11, cbk_pucS10, cbk_pucS9, cbk_pucS8, cbk_pucS7, cbk_pucS6, cbk_pucS5, cbk_pucS4]
  try decide_cbv

theorem cbk_pucS2 : cbdP pucS2 = 45961560734073049309615081078723953116621739472549310243890222265929 := by
  unfold pucS2
  try simp only [callD, cbdP, tblP_inc, tblP_pmc, bPmcP_eq, cbk_pucC, cbk_pucD, cbk_pucB, cbk_pucA, cbk_pucS31, cbk_pucS30, cbk_pucS29, cbk_pucS28, cbk_pucS27, cbk_pucS26, cbk_pucS25, cbk_pucS24, cbk_pucS23, cbk_pucS22, cbk_pucS21, cbk_pucS20, cbk_pucS19, cbk_pucS18, cbk_pucS17, cbk_pucS16, cbk_pucS15, cbk_pucS14, cbk_pucS13, cbk_pucS12, cbk_pucS11, cbk_pucS10, cbk_pucS9, cbk_pucS8, cbk_pucS7, cbk_pucS6, cbk_pucS5, cbk_pucS4, cbk_pucS3]
  try decide_cbv

theorem cbk_pucS1 : cbdP pucS1 = 45961560734073049309615082213905929736582874926596575269141751239976 := by
  unfold pucS1
  try simp only [callD, cbdP, tblP_inc, tblP_pmc, bPmcP_eq, cbk_pucC, cbk_pucD, cbk_pucB, cbk_pucA, cbk_pucS31, cbk_pucS30, cbk_pucS29, cbk_pucS28, cbk_pucS27, cbk_pucS26, cbk_pucS25, cbk_pucS24, cbk_pucS23, cbk_pucS22, cbk_pucS21, cbk_pucS20, cbk_pucS19, cbk_pucS18, cbk_pucS17, cbk_pucS16, cbk_pucS15, cbk_pucS14, cbk_pucS13, cbk_pucS12, cbk_pucS11, cbk_pucS10, cbk_pucS9, cbk_pucS8, cbk_pucS7, cbk_pucS6, cbk_pucS5, cbk_pucS4, cbk_pucS3, cbk_pucS2]
  try decide_cbv

theorem cbk_pucS0 : cbdP pucS0 = 45961560734073049309615082213905929736582874926596575269141751240084 := by
  unfold pucS0
  try simp only [callD, cbdP, tblP_inc, tblP_pmc, bPmcP_eq, cbk_pucC, cbk_pucD, cbk_pucB, cbk_pucA, cbk_pucS31, cbk_pucS30, cbk_pucS29, cbk_pucS28, cbk_pucS27, cbk_pucS26, cbk_pucS25, cbk_pucS24, cbk_pucS23, cbk_pucS22, cbk_pucS21, cbk_pucS20, cbk_pucS19, cbk_pucS18, cbk_pucS17, cbk_pucS16, cbk_pucS15, cbk_pucS14, cbk_pucS13, cbk_pucS12, cbk_pucS11, cbk_pucS10, cbk_pucS9, cbk_pucS8, cbk_pucS7, cbk_pucS6, cbk_pucS5, cbk_pucS4, cbk_pucS3, cbk_pucS2, cbk_pucS1]
  try decide_cbv

def bPucLit : Nat := 45961560734073049309615082213905929736582874926596575269141751240084

theorem bPuc_eq : bPuc = bPucLit := by
  unfold bPuc bPucLit pucBody
  exact cbk_pucS0

/-- **`HypPucCost σ B` for the literal `B = bPucLit`.** -/
theorem hypPucCost_lit : Eb.HypPucCost σ bPucLit := bPuc_eq ▸ hypPucCost

end InitECandidate.Solver.MemSafe.Puc

#print axioms InitECandidate.Solver.MemSafe.Puc.hypPucCost_lit
