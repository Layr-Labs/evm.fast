import InitECandidate.Solver.MemSafe.Ins.DelDescLadder

set_option autoImplicit false

/-!
# The descent loop
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Ins
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type} {X : Ctx 64}

theorem jd_clk {a : Act σ} (ha : ActOK a guestCtx) {K KL : BitVec 64} {s : State σ}
    (h : JD a K KL s) : JD a K KL (decClockHOLFinite s) := by
  obtain ⟨G, Nd, Lv, Res, T, hL, Γ, q, he, hh, hsc, hE⟩ := h
  exact ⟨G, Nd, Lv, Res, T, hL, Γ, q, he, heap_congr (s := s) ha.hH rfl rfl rfl rfl hh, hsc, hE⟩

/-- One iteration of the descent keeps `JD`. -/
theorem dlBody_G {vs : List (ValueHOL 64)}
    {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs} (ha : ActOK (aD vs s0 Γ0 p0) guestCtx)
    (hL0 : Layout Types.guestC p0 Γ0) (hsp0 : p0.sp ≤ scratchEnd) {K KL : BitVec 64}
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (fun s => JD (aD vs s0 Γ0 p0) K KL s ∧ CondTrue s dlGoCond) dlDescent
      (GPJ (aD vs s0 Γ0 p0) (JD (aD vs s0 Γ0 p0) K KL) Rv) := by
  set a := aD vs s0 Γ0 p0 with hadef
  refine hoareG_pre (P := fun s => ∃ G Nd Lv Res T : BitVec 64, JDv a K KL Nd Lv Res G T s) ?_
    (fun s _ ⟨⟨G, Nd, Lv, Res, T, h⟩, _⟩ => ⟨G, Nd, Lv, Res, T, h⟩)
  refine hoareG_ex fun G => hoareG_ex fun Nd => hoareG_ex fun Lv => hoareG_ex fun Res =>
    hoareG_ex fun T => ?_
  unfold dlDescent
  refine gp_seqJ (L := LKV (kvD K KL Nd Lv Res 0 T))
    (E := fun Γ q M => DE a K KL Nd Lv Res T Γ q M) ?_ (dlLadder_G ha hL0 hsp0)
  refine gp_assign ha.hH (fun s hs hL v hv => ?_)
  have e : v = .val (.word 0) := by rw [ev_cw] at hv; exact (Option.some.inj hv).symm
  subst e
  exact lkv_upd_gen hL (by simp [kvD]) (by lkv_rest [kvD])

/-- **The descent loop**, from the body. -/
theorem dlLoop1_G {a : Act σ} (ha : ActOK a guestCtx) {K KL : BitVec 64}
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hbody : HoareG σ guestCtx (fun s => JD a K KL s ∧ CondTrue s dlGoCond) dlDescent
      (GPJ a (JD a K KL) Rv)) :
    HoareG σ guestCtx (JD a K KL) (.while dlGoCond dlDescent) (GPJ a (JDg a K KL 0) Rv) := by
  refine hoareG_while (fun s h => jd_clk ha h) ?_ ?_
  · refine hoareG_conseq hbody (fun s _ h => h) ?_
    intro r t _ _ h
    have hnab : ∀ r', r = some r' → (r' = .continue ∨ r' = .break) → False := by
      intro r' hr' hcb
      rcases (h.2 r' hr').1 with ⟨v, hv⟩ | ⟨e, v, he⟩ | ⟨e, he⟩
      · rcases hcb with rfl | rfl <;> cases hv
      · rcases hcb with rfl | rfl <;> cases he
      · rcases hcb with rfl | rfl <;> cases he
    refine ⟨fun hr => h.1 hr, fun hc => (hnab _ hc (Or.inl rfl)).elim,
      fun hbk => (hnab _ hbk (Or.inr rfl)).elim, fun r' hr' h1 h2 => ?_⟩
    exact ⟨fun hr => by simp [hr'] at hr, h.2⟩
  · intro s _ h hc
    refine ⟨fun _ => ?_, fun r' h' => by cases h'⟩
    obtain ⟨G, Nd, Lv, Res, T, hL, Γ, q, he, hh, hsc, hE⟩ := h
    have hG : s.locals.lookup (nm "go") = some (.val (.word G)) := hL (nm "go", G) (by simp [kvD])
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
    rw [ev_lw hG] at hx
    rw [ev_cw] at hy
    cases hx
    cases hy
    have := notEqual_false hxy
    subst this
    exact ⟨Nd, Lv, Res, T, hL, Γ, q, he, hh, hsc, hE⟩

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.dlBody_G
#print axioms InitECandidate.Solver.MemSafe.Ins.dlLoop1_G
