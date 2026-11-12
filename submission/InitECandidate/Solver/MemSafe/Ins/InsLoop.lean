import InitECandidate.Solver.MemSafe.Ins.InsCode

set_option autoImplicit false

/-!
# `_mpt_insert_node`: the loop invariant and the loop

`JIg a K KL VP VL G`: the loop invariant at `go = G`. The locals `node`, `key`, `klen`, `level`,
`vptr`, `vlen`, `result`, `slot`, `go` hold words; the `Γ`-level facts `Inv0` hold:
`node` fits `nodeU` (a real object whenever it is dereferenced), `slot` is null or a `nodeU` cell of an
object of `Γ`, `result` is null or a node object, `level <= klen`, and the key is an `NIn` slice.
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

def kvJ (K KL VP VL Nd Lv Res Sl G : BitVec 64) : List (MlS × BitVec 64) :=
  [(nm "node", Nd), (nm "key", K), (nm "klen", KL), (nm "level", Lv), (nm "vptr", VP),
   (nm "vlen", VL), (nm "result", Res), (nm "slot", Sl), (nm "go", G)]

/-- A `nodeU` cell of an object of `Γ` (a child slot of an extension / branch node). -/
def SlotOK (Γ : Gam) (A : BitVec 64) : Prop :=
  ∃ o ∈ Γ, ∃ j, o.HasSlot j ∧ (Types.guestC.ty o.ty).slot j = Types.nodeU ∧ A = o.cell j

/-- Null or a node object. -/
def Rt (Γ : Gam) (w : BitVec 64) : Prop := w = 0 ∨ ∃ o ∈ Γ, o.base = w ∧ o.ty ∈ Node.nodeTys

def Inv0 (K KL Nd Lv Res Sl : BitVec 64) (Γ : Gam) : Prop :=
  Fits Γ Types.nodeU Nd ∧ (Sl = 0 ∨ SlotOK Γ Sl) ∧ Rt Γ Res ∧ Lv.toNat ≤ KL.toNat ∧ NIn Γ K KL

theorem inv0_ext {K KL Nd Lv Res Sl : BitVec 64} {Γ Γ' : Gam} (he : Ext Γ Γ')
    (h : Inv0 K KL Nd Lv Res Sl Γ) : Inv0 K KL Nd Lv Res Sl Γ' := by
  obtain ⟨h1, h2, h3, h4, h5⟩ := h
  refine ⟨fits_ext he h1, ?_, ?_, h4, nIn_ext he h5⟩
  · rcases h2 with h | ⟨o, ho, j, hj, hs, hA⟩
    · exact Or.inl h
    · obtain ⟨o', ho', hb, hty, hsz⟩ := he o ho
      refine Or.inr ⟨o', ho', j, ?_, ?_, ?_⟩
      · unfold Obj.HasSlot at hj ⊢; omega
      · rw [hty]; exact hs
      · rw [hA]; unfold Obj.cell; rw [hb]
  · rcases h3 with h | ⟨o, ho, hb, ht⟩
    · exact Or.inl h
    · obtain ⟨o', ho', hb', hty, -⟩ := he o ho
      exact Or.inr ⟨o', ho', hb'.trans hb, hty ▸ ht⟩

def JIg (a : Act σ) (K KL VP VL G : BitVec 64) (t : State σ) : Prop :=
  ∃ Nd Lv Res Sl : BitVec 64, GI a (LKV (kvJ K KL VP VL Nd Lv Res Sl G))
    (fun Γ _ _ => Inv0 K KL Nd Lv Res Sl Γ) t

def JI (a : Act σ) (K KL VP VL : BitVec 64) (t : State σ) : Prop :=
  ∃ G, JIg a K KL VP VL G t

theorem jI_clk {a : Act σ} (ha : ActOK a X) {K KL VP VL : BitVec 64} {s : State σ}
    (h : JI a K KL VP VL s) : JI a K KL VP VL (decClockHOLFinite s) := by
  obtain ⟨G, Nd, Lv, Res, Sl, hL, Γ, q, he, hh, hsc, hE⟩ := h
  exact ⟨G, Nd, Lv, Res, Sl, hL, Γ, q, he, heap_congr (s := s) ha.hH rfl rfl rfl rfl hh, hsc, hE⟩

/-- **The loop**, from the body. -/
theorem insLoop_G {a : Act σ} (ha : ActOK a guestCtx) {K KL VP VL : BitVec 64}
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hbody : HoareG σ guestCtx (fun s => JI a K KL VP VL s ∧ CondTrue s goCondI) iBody
      (GPJ a (JI a K KL VP VL) Rv)) :
    HoareG σ guestCtx (JI a K KL VP VL) (.while goCondI iBody) (GPJ a (JIg a K KL VP VL 0) Rv) := by
  refine hoareG_while (fun s h => jI_clk ha h) ?_ ?_
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
    obtain ⟨G, Nd, Lv, Res, Sl, hL, Γ, q, he, hh, hsc, hE⟩ := h
    have hG : s.locals.lookup (nm "go") = some (.val (.word G)) := hL (nm "go", G) (by simp [kvJ])
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
    rw [ev_lw hG] at hx
    rw [ev_cw] at hy
    cases hx
    cases hy
    have := notEqual_false hxy
    subst this
    exact ⟨Nd, Lv, Res, Sl, hL, Γ, q, he, hh, hsc, hE⟩

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.insLoop_G
