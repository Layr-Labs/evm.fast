import InitECandidate.Solver.MemSafe.Ops6.OpLog
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# Ops6 root

* `Frames.j_op_log : OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_log")` (OpLog.lean)
* new rules: `GKB` / `gk_plainAB` / `gkb_of_win` (Gkb), `TmpBuf` / `hoareG_winAllocT` /
  `hoareG_winCallT` / `hoareG_winSt` (WinT), `hoareG_gkLogApp` (LogApp), `hoareG_gkCallBQ` /
  `hoareG_gkDecBQ` (CallQ), `lg_loop` (Loop).
-/
