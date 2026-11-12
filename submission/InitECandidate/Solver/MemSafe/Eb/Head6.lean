import InitECandidate.Solver.MemSafe.Eb.Head5

/-!
# `execute_block`: the whole head up to `bal_init()` (`head_all`)
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

section head
variable {E : EbE σ} {En : Env} {S0 : FS} {Z : List MlS} {QT : Option (PanSemResultExact 64) → State σ → Prop}

theorem head_all (hQ : LocIns QT) {si0 pl0 ntx0 : BitVec 64}
    (hsi : En (nm "si") = some (.val (.word si0))) (hpl : S0 (Fct.pcv (si0 + BitVec.ofNat 64 0) pl0))
    (hnt : S0 (Fct.pcv (pl0 + BitVec.ofNat 64 40) ntx0)) (hbd : ntx0.toNat < 2 ^ 50)
    (hT : Tidy Z S0) (hheap : gHeap ∉ Z) (hbo : nmBo ∉ Z)
    (hz : ∀ g ∈ nmBo :: Z, ¬ (tabW.contains g = true))
    (hnext : ∀ (w t r lg rq rl : BitVec 64) (S' : FS), HeadOut S0 S' (nmBo :: Z) w t r lg rq rl ntx0 →
      (∀ f, S0 f → S' f) →
      Hoare σ guestCtx (PA E (EnH ((En.set (nm "pl") (.val (.word pl0))).set (nm "ntx") (.val (.word ntx0))) t r lg rq rl) S')
        ebS15 QT) :
    Hoare σ guestCtx (PA E En S0) ebBody QT := by
  refine head_pl_ntx hQ hsi hpl hnt ?_
  refine s2_allocBo hT ⟨hheap, hbo⟩ (fun w => ?_)
  refine s3_mz w ?_
  have h1 := boLed_hs1 hT hheap w
  have h2 := boLed_add h1 (w + BitVec.ofNat 64 64) 0 (Or.inr ⟨rfl, rfl⟩)
  refine head_chain hQ h2 (Or.inr rfl) (fun b ty n hb => Or.inl (Or.inr (Or.inl (Or.inr (Or.inl ⟨b, ty, n, hb, rfl⟩)))))
    (by simp (config := { decide := true }) [Env.set]) hbd hz
    (fun f hf => Or.inl (Or.inl hf)) ?_
  intro t r lg rq rl S' hout hsub
  exact hnext w t r lg rq rl S' hout (fun f hf => hsub f (Or.inl (Or.inl hf)))

end head

end InitECandidate.Solver.MemSafe.Eb
