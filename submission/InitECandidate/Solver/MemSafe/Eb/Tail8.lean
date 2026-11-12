import InitECandidate.Solver.MemSafe.Eb.Tail7

/-!
# `execute_block`: from `bgu = max(..)` to `return 0` (ebS57)
Only table calls with `any` parameters and `BlockErr` guards remain.
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

section tail8
variable {E : EbE σ} {En : Env} {S : FS} {Z : List MlS}

theorem hguard_then {c : ExpHOL 64} {x : MlS} {ex : ExpHOL 64} {k : ProgHOL 64}
    {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hk : Hoare σ guestCtx (PA E En S) k QT) : Hoare σ guestCtx (PA E En S) (.seq (.ite c (.raise x ex) .skip) k) QT :=
  hseqN hn_guard hk

theorem hcall_then {f : MlS} {sg : Sig} {args : List (ExpHOL 64)} {rn : MlS} {w0 : BitVec 64} {k : ProgHOL 64}
    {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hf : CSumm σ guestCtx guestC (HR σ) f sg [])
    (hg : sg.gw = []) (hnm : tabNames.contains f = true) (hps : ∀ pt ∈ sg.params, pt = PT.any)
    (hlen : sg.params.length = args.length) (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ (tabW.contains g = true))
    (hEn : En rn = some (.val (.word w0)))
    (hk : ∀ w : BitVec 64, Hoare σ guestCtx (PA E (En.set rn (.val (.word w))) S) k QT) :
    Hoare σ guestCtx (PA E En S) (.seq (.call (some (some (.local, rn), none)) f args) k) QT :=
  hseqN (hn_tab1A hf hg hnm hps hlen hT hz hEn) (hoare_exists hk)

/-- `ebS57`: `bgu = max(..)`, the guard chain, and `return 0`. -/
theorem tail_end (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ (tabW.contains g = true)) :
    Hoare σ guestCtx (PA E En S) ebS57 (RetQ E) := by
  have hQ := fun n => locIns_resIns (retQ_locIns E) n
  unfold ebS57
  refine hdec_tab1 (hQ _) tab_max (by decide) (by decide) (by simp) (by simp) hT hz ?_
  intro w0
  unfold ebS58
  refine hguard_then ?_
  unfold ebS60
  refine hdec_tab1 (hQ _) tab_memeq (by decide) (by decide) (by simp) (by simp) hT hz ?_
  intro w1
  unfold ebS61
  refine hguard_then ?_
  unfold ebS63
  refine hcall_then tab_memeq (by decide) (by decide) (by simp) (by simp) hT hz (env_set_self _ _ _) ?_
  intro w2
  unfold ebS64
  refine hguard_then ?_
  unfold ebS66
  refine hcall_then tab_memeq (by decide) (by decide) (by simp) (by simp) hT hz (env_set_self _ _ _) ?_
  intro w3
  unfold ebS67
  refine hguard_then ?_
  unfold ebS69
  refine hcall_then tab_memeq (by decide) (by decide) (by simp) (by simp) hT hz (env_set_self _ _ _) ?_
  intro w4
  unfold ebS70
  refine hguard_then ?_
  unfold ebS72
  refine hcall_then tab_memeq (by decide) (by decide) (by simp) (by simp) hT hz (env_set_self _ _ _) ?_
  intro w5
  unfold ebS73
  refine hguard_then ?_
  unfold ebS75
  refine hguard_then ?_
  unfold ebS77
  refine hcall_then tab_memeq (by decide) (by decide) (by simp) (by simp) hT hz (env_set_self _ _ _) ?_
  intro w6
  unfold ebS78
  refine hguard_then ?_
  unfold ebS80
  refine hcall_then tab_memeq (by decide) (by decide) (by simp) (by simp) hT hz (env_set_self _ _ _) ?_
  intro w7
  unfold ebS81
  refine hguard_then ?_
  exact hn_ret0

end tail8

end InitECandidate.Solver.MemSafe.Eb
