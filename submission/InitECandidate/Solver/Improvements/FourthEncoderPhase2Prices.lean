import InitECandidate.Solver.MemSafe.BalCost.Suffix

/-! Exact analyzer prices for the unchanged parts of the bounded account encoder. -/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
namespace FourthEncoderPhase2Prices
open InitECandidate.Solver.MemSafe.BalCost

theorem sortPrice : Suffix.oldB Suffix.sortCall = 5304150966401745246458686339704084127426802285468111480030625 := by decide_cbv

theorem sizePrice : Loop.sizeB = 147573952589676412939 := by decide_cbv

theorem allocPrice : Suffix.allocB = 2 := by decide_cbv

theorem tailPrice : Suffix.oldB Suffix.encTail = 55340232221128654858 := by decide_cbv
end FourthEncoderPhase2Prices
