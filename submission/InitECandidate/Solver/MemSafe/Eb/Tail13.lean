import InitECandidate.Solver.MemSafe.Eb.Tail12

/-!
# `execute_block`: `keccak256` and `compute_requests_hash` steps
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

section tail13
variable {E : EbE σ} {En : Env} {S : FS} {Z : List MlS}

/-- `keccak256(a, b, o);` with a fresh 32-byte output. -/
theorem hn_keccak {ea eb eo : ExpHOL 64} {O : BitVec 64}
    (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ (tabW.contains g = true))
    (hO : ∀ s : State σ, PA E En S s → EvI s eo (.val (.word O))) (hfb : S (Fct.fbuf O 32)) :
    HN (PA E En S) (callD (nm "keccak256") [ea, eb, eo]) (PA E En S) := by
  refine hn_post (hn_callR (E := E) (En := En) (S := S) (f := nm "keccak256") (args := [ea, eb, eo])
    (W := fun g' => tabW.contains g' = true) (cr_plain tab_keccak (by decide)) (gwk_tab (by decide))
    (fun _ => False) ?_ ?_) (fun t _ hh => pa_mono hh (fun _ _ h => h) (fun f hf => Or.inl hf))
  · refine callObl_plain ?_ hT hz
    intro s hs vs hvs Γ p hr hL
    obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    obtain ⟨v3, vs3, rfl, h3, hr3⟩ := evs_cons_inv hr2
    rw [evs_nil] at hr3
    cases hr3
    have e3 := hO s hs v3 h3
    subst e3
    refine ⟨by simp, ?_⟩
    intro i pt v hpt hv
    match i, pt, v with
    | 0, pt, v =>
      simp only [List.getElem?_cons_zero, Option.some.injEq] at hpt
      subst hpt; trivial
    | 1, pt, v =>
      simp only [List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt
      subst hpt; trivial
    | 2, pt, v =>
      simp only [List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
      subst hpt; subst hv
      exact ⟨O, rfl, bufOK_of_fbuf ⟨_, _, hr⟩ (hL _ hfb)⟩
    | i + 3, pt, v => simp at hpt
  · intro s vs callee v st Γ Γ' p p' hr hL hstp hq f hf
    exact hf.elim

/-- `compute_requests_hash(a, n, o);` with `n < 2^20` and a fresh 32-byte output. -/
theorem hn_crh {ea en eo : ExpHOL 64} {N O : BitVec 64}
    (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ (tabW.contains g = true))
    (hA : ∀ s : State σ, PA E En S s → ∀ v, ev s ea = some v → ∃ d, v = .val (.word d))
    (hN : ∀ s : State σ, PA E En S s → EvI s en (.val (.word N))) (hNb : N.toNat < 2 ^ 20)
    (hO : ∀ s : State σ, PA E En S s → EvI s eo (.val (.word O))) (hfb : S (Fct.fbuf O 32)) :
    HN (PA E En S) (callD (nm "compute_requests_hash") [ea, en, eo]) (PA E En S) := by
  refine hn_post (hn_callR (E := E) (En := En) (S := S) (f := nm "compute_requests_hash") (args := [ea, en, eo])
    (W := fun g' => tabW.contains g' = true) cr_crh (gwk_tab (by decide)) (fun _ => False) ?_ ?_)
    (fun t _ hh => pa_mono hh (fun _ _ h => h) (fun f hf => Or.inl hf))
  · refine ⟨?_, fun _ _ _ _ _ _ _ _ _ _ _ _ _ h => h, (tidy_gmiss hT hz).1, (tidy_gmiss hT hz).2⟩
    intro s hpa vs hvs callee Γ p hr hL
    have hpa' : PA E En S s := ⟨⟨Γ, p, hr, hL⟩, hpa.2⟩
    obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    obtain ⟨v3, vs3, rfl, h3, hr3⟩ := evs_cons_inv hr2
    rw [evs_nil] at hr3
    cases hr3
    obtain ⟨d, rfl⟩ := hA s hpa' v1 h1
    have e2 := hN s hpa' v2 h2
    have e3 := hO s hpa' v3 h3
    subst e2 e3
    have hLe := holdsAll_loc hL callee (s.clock - 1)
    have hre := ebRun_loc hr callee (s.clock - 1)
    refine ⟨⟨by simp [Exb.crhSig], ?_⟩, d, N, O, rfl, hNb⟩
    intro i pt v hpt hv
    match i, pt, v with
    | 0, pt, v =>
      simp only [Exb.crhSig, List.getElem?_cons_zero, Option.some.injEq] at hpt
      subst hpt; trivial
    | 1, pt, v =>
      simp only [Exb.crhSig, List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt
      subst hpt; trivial
    | 2, pt, v =>
      simp only [Exb.crhSig, List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
      subst hpt; subst hv
      exact ⟨O, rfl, bufOK_of_fbuf ⟨_, _, hre⟩ (hLe _ hfb)⟩
    | i + 3, pt, v => simp [Exb.crhSig] at hpt
  · intro s vs callee v st Γ Γ' p p' hr hL hstp hq f hf
    exact hf.elim

end tail13

end InitECandidate.Solver.MemSafe.Eb
