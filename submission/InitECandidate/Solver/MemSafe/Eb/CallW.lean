import InitECandidate.Solver.MemSafe.Eb.GwKit

/-!
# `execute_block`: wrappers for table calls
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

section wrap
variable {E : EbE σ} {En : Env} {S : FS} {args : List (ExpHOL 64)} {W : MlS → Prop} {Z : List MlS}

theorem callObl_plain {ps : List PT}
    (hargs : ∀ s : State σ, PA E En S s → ∀ vs, evs s args = some vs → ∀ (Γ : Gam) (p : Ptrs),
      EbRun E.Γ0 E.s0 E.p0 Γ s p → HoldsAll E.p0 Γ p s S → ArgsOK guestC Γ p ps vs)
    (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ W g) :
    CallObl E En S args (fun vs _ Γ p => ArgsOK guestC Γ p ps vs) (fun _ _ _ _ => False) W :=
  ⟨fun s hs vs hvs _ Γ p hr hL => hargs s hs vs hvs Γ p hr hL, fun _ _ _ _ _ _ _ _ _ _ _ _ _ h => h,
    (tidy_gmiss hT hz).1, (tidy_gmiss hT hz).2⟩

/-- All arguments `any`: the typing condition is only the arity. -/
theorem argsOK_any_eval {ps : List PT} (hps : ∀ pt ∈ ps, pt = PT.any) (hlen : ps.length = args.length)
    {s : State σ} {vs : List (ValueHOL 64)} (hvs : evs s args = some vs) {Γ : Gam} {p : Ptrs} :
    ArgsOK guestC Γ p ps vs := by
  refine argsOK_any hps ?_
  have : vs.length = args.length := by
    clear hps hlen
    induction args generalizing vs with
    | nil => rw [evs_nil] at hvs; cases hvs; rfl
    | cons e es ih =>
      obtain ⟨v, vs', rfl, -, h2⟩ := evs_cons_inv hvs
      simp [ih h2]
  omega

/-- `var rn = f(args); k` where the result is a single word `w` with facts `NFw w`. -/
theorem hdecCallRW {f : MlS} {Pre : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop}
    {D : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → Ptrs → ValueHOL 64 → State σ → Gam → Ptrs → Prop}
    {rn : MlS} {k : ProgHOL 64} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hQT : ResIns rn QT) (hf : CallR (σ := σ) f Pre D Q) (hg : GwK (σ := σ) f W) (NFw : BitVec 64 → FS)
    (h : CallObl E En S args Pre D W)
    (hnew : ∀ (s : State σ) (vs : List (ValueHOL 64)) (callee : Locs) (v : ValueHOL 64) (st : State σ)
      (Γ Γ' : Gam) (p p' : Ptrs), EbRun E.Γ0 E.s0 E.p0 Γ s p → HoldsAll E.p0 Γ p s S →
      Stp Γ p (callEntryStateHOLFinite s callee) Γ' p' st (D vs (callEntryStateHOLFinite s callee) Γ) →
      Q vs (callEntryStateHOLFinite s callee) Γ p v st Γ' p' →
      ∀ w, v = .val (.word w) → HoldsAll E.p0 Γ' p' { st with locals := s.locals } (NFw w))
    (hk : ∀ w : BitVec 64, Hoare σ guestCtx (PA E (En.set rn (.val (.word w))) (fun f => S f ∨ NFw w f)) k QT) :
    Hoare σ guestCtx (PA E En S) (.decCall rn .one f args k) QT := by
  refine hdecCallR (NF := fun v f => f = Fct.prop (∃ w, v = .val (.word w)) ∨ ∃ w, v = .val (.word w) ∧ NFw w f)
    hQT hf hg h ?_ ?_
  · intro s vs callee v st Γ Γ' p p' hr hL hstp hq hsh
    obtain ⟨w, rfl⟩ := val_of_shapeEq_one' hsh
    have hh := hnew s vs callee _ st Γ Γ' p p' hr hL hstp hq w rfl
    intro f hf
    rcases hf with rfl | ⟨w', hw', hf'⟩
    · exact ⟨w, rfl⟩
    · cases hw'
      exact hh f hf'
  · intro v hsh
    intro s hs hpa
    obtain ⟨⟨Γ, p, hr, hL⟩, hlk⟩ := hpa
    have hv : ∃ w, v = .val (.word w) := by
      have := hL (Fct.prop (∃ w, v = .val (.word w))) (Or.inr (Or.inl rfl))
      exact this
    obtain ⟨w, rfl⟩ := hv
    refine hk w s hs ⟨⟨Γ, p, hr, fun f hf => ?_⟩, hlk⟩
    rcases hf with hf | hf
    · exact hL f (Or.inl hf)
    · exact hL f (Or.inr (Or.inr ⟨w, rfl, hf⟩))

end wrap

end InitECandidate.Solver.MemSafe.Eb
