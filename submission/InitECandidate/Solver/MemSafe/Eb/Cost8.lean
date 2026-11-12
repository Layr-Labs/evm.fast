import InitECandidate.Solver.MemSafe.Eb.Cost7

/-!
# `execute_block`: the cost walk, part 8 (`tail_end`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

section cw8
variable {E : EbE σ} {En : Env} {S : FS} {Z : List MlS}

theorem cost_guest_guard {c : ExpHOL 64} {x : MlS} {ex : ExpHOL 64} :
    Cost σ guestCtx (.ite c (.raise x ex) .skip) 0 := by
  have := cost_ite (σ := σ) (X := guestCtx) (c := c) (cost_raise x ex) cost_skip
  simpa using this

theorem cw_guard_then {c : ExpHOL 64} {x : MlS} {ex : ExpHOL 64} {k : ProgHOL 64} {B : Nat}
    {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hk : CW (PA E En S) k B QT) : CW (PA E En S) (.seq (.ite c (.raise x ex) .skip) k) (0 + B) QT :=
  cw_seq (cw_hn hn_guard (costP_zero cost_guest_guard)) hk

theorem cw_tab1A_then {f : MlS} {sg : Sig} {args : List (ExpHOL 64)} {rn : MlS} {w0 : BitVec 64} {k : ProgHOL 64} {Bf Bk : Nat}
    {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hf : CSumm σ guestCtx guestC (HR σ) f sg [])
    (hg : sg.gw = []) (hnm : tabNames.contains f = true) (hps : ∀ pt ∈ sg.params, pt = PT.any)
    (hlen : sg.params.length = args.length) (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ (tabW.contains g = true))
    (hcost : CalleeCost σ guestCtx f Bf) (hEn : En rn = some (.val (.word w0)))
    (hk : ∀ w : BitVec 64, CW (PA E (En.set rn (.val (.word w))) S) k Bk QT) :
    CW (PA E En S) (.seq (.call (some (some (.local, rn), none)) f args) k) ((1 + Bf + 0) + Bk) QT := by
  refine cw_seq (P := PA E En S) (R := fun t => ∃ w : BitVec 64, PA E (En.set rn (.val (.word w))) S t) ?_ ?_
  · exact ⟨Inv.costP_call (Pre := fun _ _ => True) (Inv.calleeCostP_of_calleeCost hcost) (fun _ _ _ _ _ _ => trivial) (by intro _ _ _ _ h; cases h),
      hn_tab1A hf hg hnm hps hlen hT hz hEn⟩
  · exact cw_exists hk
end cw8

end InitECandidate.Solver.MemSafe.Eb
