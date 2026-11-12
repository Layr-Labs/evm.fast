import InitECandidate.Solver.MemSafe.Bal.HG

set_option maxRecDepth 100000
set_option linter.unusedSectionVars false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Bal
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- A byte range inside an all-scalar object lies in scalar cells of it. -/
theorem scell_obj {C : Cfg} {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout C p Γ) {K : Obj}
    (hK : K ∈ Γ) (hsc : ∀ k, (C.ty K.ty).slot k = .scalar) {b n : Nat}
    (hb1 : K.base.toNat ≤ b) (hb2 : b + n ≤ K.base.toNat + K.size) {a : BitVec 64}
    (hov : Overlap b n a) : SCell C Γ a := by
  obtain ⟨h8, h1, h2⟩ := hov
  obtain ⟨hlo8, hsz8, -⟩ := hL.1 K hK
  have hb := (Struct.obj_bounds hord hL hK).2.1
  have hse : scratchEnd < 2 ^ 32 := by decide
  unfold Obj.lo at hlo8
  unfold Obj.hi at hb
  have hbase : K.base.toNat < 2 ^ 64 := K.base.isLt
  refine ⟨K, hK, (a.toNat - K.base.toNat) / 8, ?_, hsc _, ?_⟩
  · unfold Obj.HasSlot; omega
  · apply BitVec.eq_of_toNat_eq
    unfold Obj.cell
    rw [BitVec.toNat_add, BitVec.toNat_ofNat]
    have : 8 * ((a.toNat - K.base.toNat) / 8) % 2 ^ 64 = 8 * ((a.toNat - K.base.toNat) / 8) := by
      apply Nat.mod_eq_of_lt; omega
    rw [this, Nat.mod_eq_of_lt (by omega)]
    omega

theorem bufOK_obj {C : Cfg} {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout C p Γ) {K : Obj}
    (hK : K ∈ Γ) (hsc : ∀ k, (C.ty K.ty).slot k = .scalar) {b n : Nat}
    (hb1 : K.base.toNat ≤ b) (hb2 : b + n ≤ K.base.toNat + K.size) : BufOK C Γ p b n :=
  fun _ hov => Or.inl (scell_obj hord hL hK hsc hb1 hb2 hov)

theorem wcell_obj {C : Cfg} {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout C p Γ) {K : Obj}
    (hK : K ∈ Γ) (hsc : ∀ k, (C.ty K.ty).slot k = .scalar) {b n : Nat}
    (hb1 : K.base.toNat ≤ b) (hb2 : b + n ≤ K.base.toNat + K.size) {a : BitVec 64}
    (hov : Overlap b n a) : WCell C Γ a := by
  obtain ⟨o, ho, k, hk, hs, he⟩ := scell_obj hord hL hK hsc hb1 hb2 hov
  exact ⟨o, ho, k, hk, by rw [hs]; decide, he⟩

theorem argCells_cases {ps : List PT} {vs : List (ValueHOL 64)} {a : BitVec 64}
    (h : ArgCells ps vs a) :
    (∃ i n w, ps[i]? = some (.buf n) ∧ argW vs i = some w ∧ Overlap w.toNat n a) ∨
    (∃ i j c d x w, ps[i]? = some (.bufArg j c d) ∧ argW vs i = some w ∧ argW vs j = some x ∧
      Overlap w.toNat (c * x.toNat + d) a) := by
  obtain ⟨i, w, hw, ⟨n, hn, hov⟩ | ⟨j, c, d, x, hj, hx, hov⟩⟩ := h
  · exact Or.inl ⟨i, n, w, hn, hw, hov⟩
  · exact Or.inr ⟨i, j, c, d, x, w, hj, hw, hx, hov⟩


theorem argCells_allAny {ps : List PT} {vs : List (ValueHOL 64)} {a : BitVec 64}
    (h : ∀ pt ∈ ps, pt = PT.any) : ¬ ArgCells ps vs a := fun hca => by
  rcases argCells_cases hca with ⟨i, n, w, hi, -⟩ | ⟨i, j, c, d, x, w, hi, -⟩
  · have := h _ (List.mem_of_getElem? hi); cases this
  · have := h _ (List.mem_of_getElem? hi); cases this

theorem argsOK_allAny {C : Cfg} {Γ : Gam} {p : Ptrs} {ps : List PT} {vs : List (ValueHOL 64)}
    (h : ∀ pt ∈ ps, pt = PT.any) (hl : ps.length = vs.length) : ArgsOK C Γ p ps vs :=
  ⟨hl, fun i pt v hp hv => by have := h _ (List.mem_of_getElem? hp); subst this; trivial⟩


theorem argCells_noBuf {ps : List PT} {vs : List (ValueHOL 64)} {a : BitVec 64}
    (h : ∀ pt ∈ ps, (∀ n, pt ≠ PT.buf n) ∧ ∀ j c d, pt ≠ PT.bufArg j c d) : ¬ ArgCells ps vs a := fun hca => by
  rcases argCells_cases hca with ⟨i, n, w, hi, -⟩ | ⟨i, j, c, d, x, w, hi, -⟩
  · exact (h _ (List.mem_of_getElem? hi)).1 n rfl
  · exact (h _ (List.mem_of_getElem? hi)).2 j c d rfl

end InitECandidate.Solver.MemSafe.Bal
