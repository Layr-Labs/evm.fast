import InitECandidate.Solver.MemSafe.Ptx.PtT34

/-!
# F3h: the whole tail (`ptS114` to the `return`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

/-- **The tail**: from `ptS114` (the gas accounting after `process_message_call`) to the `return`. -/
theorem tl_tail {K : TlCtx σ} (hP : TlPre K) (hR : HypRcpt σ) (hgs : Bal.HGS σ) :
    Hoare σ guestCtx (PAg (TL K.A K.ref0 (Za K) ([] : List Obj)) (EnT0 K)) ptS114
      (fun r t => r = some (.returned (.val (.word 0))) ∧ TailPost K t) :=
  tl_p1 hP (locIns_tail K) (tl_p2 hP (tl_p3 hP (locIns_tail K) (fun ref Z lw hL =>
    tl_p4 hP hR hL (locIns_tail K) (fun rp rl buf n h1 h2 h3 h4 => tl_g3 hP hgs hL h1 h2 h3 h4))))

end InitECandidate.Solver.MemSafe.Ptx
