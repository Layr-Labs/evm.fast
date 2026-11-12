import InitECandidate.Solver.MemSafe.Frames.OpenSpec

/-!
# Pushing a frame onto the chain; `state_snapshot`

* `snapshot_spec`: `state_snapshot()` returns `journal_n` and changes nothing else.
* `chainL_push`: the chain `fs` of `s`, with its cells unchanged in `t`, plus a new top
  `(e, q)` (an EV and a CK object of `Γ'`, both new) whose record names the old top as parent,
  has kind `≠ 0`, and carries the §2.4 facts for the new child/parent pair, is the chain of `t`.
* `wsum_push`: its weight is the new frame's weight plus the old chain's.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-! ## `state_snapshot` -/

def snapBody : ProgHOL 64 := .return (gv (nm "journal_n"))

theorem entry_snap : fnEntry Guest.Software.guestFn_state_snapshot =
    (nm "state_snapshot", [], snapBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_snap : guestCode (nm "state_snapshot") = some ([], snapBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 358) (by decide)) ⟨_, rfl⟩
    entry_snap

theorem snapshot_spec (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "state_snapshot") (fun vs s r t => Good (some r) →
      vs = [] ∧ (∃ v, r = .returned v ∧ s.globals.lookup (nm "journal_n") = some v) ∧
        t.memory = s.memory ∧ t.globals = s.globals) := by
  refine funSpec_of_hoareG fun vs body callee rs hl s0 _ _ => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, rfl⟩ := lookupCode_zero code_snap hl
  refine hoareG_return fun u _ hu v hv => ?_
  subst hu
  intro rr hrr
  cases hrr
  exact ⟨rfl, ⟨v, rfl, hv⟩, rfl, rfl⟩

/-! ## The pushed chain -/

theorem adj_cons {fs : List Frame} {f g : Frame} {ch pa : Frame} (hfs : fs.head? = some g)
    (h : Adj (f :: fs) ch pa) : (ch = f ∧ pa = g) ∨ Adj fs ch pa := by
  obtain ⟨l1, l2, he⟩ := h
  cases l1 with
  | nil =>
      simp only [List.nil_append, List.cons.injEq] at he
      obtain ⟨rfl, rfl⟩ := he
      left
      refine ⟨rfl, ?_⟩
      simp only [List.head?_cons, Option.some.injEq] at hfs
      exact hfs
  | cons x l1 =>
      simp only [List.cons_append, List.cons.injEq] at he
      exact Or.inr ⟨l1, l2, he.2⟩

/-- The cells of the frames of `fs` that `ChainL` and `Φ` read are unchanged from `s` to `t`. -/
def FramesKept (fs : List Frame) (s t : State σ) : Prop :=
  ∀ f ∈ fs, (∀ j ∈ evProtSlots, fld t.memory f.1 (8 * j) = fld s.memory f.1 (8 * j)) ∧
    ∀ j, j < 13 → fld t.memory f.2 (8 * j) = fld s.memory f.2 (8 * j)

theorem fk_ev {fs : List Frame} {s t : State σ} (h : FramesKept fs s t) {f : Frame} (hf : f ∈ fs)
    {k : Nat} (hk : k ∈ [16, 24, 32, 40, 64, 104, 192, 232]) :
    fld t.memory f.1 k = fld s.memory f.1 k := by
  simp only [List.mem_cons, List.mem_nil_iff, or_false] at hk
  rcases hk with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact (h f hf).1 2 (by simp [evProtSlots])
  · exact (h f hf).1 3 (by simp [evProtSlots])
  · exact (h f hf).1 4 (by simp [evProtSlots])
  · exact (h f hf).1 5 (by simp [evProtSlots])
  · exact (h f hf).1 8 (by simp [evProtSlots])
  · exact (h f hf).1 13 (by simp [evProtSlots])
  · exact (h f hf).1 24 (by simp [evProtSlots])
  · exact (h f hf).1 29 (by simp [evProtSlots])

theorem fk_ck {fs : List Frame} {s t : State σ} (h : FramesKept fs s t) {f : Frame} (hf : f ∈ fs)
    {k : Nat} (hk : k ∈ [0, 8, 16, 32, 48, 56, 72, 80]) :
    fld t.memory f.2 k = fld s.memory f.2 k := by
  simp only [List.mem_cons, List.mem_nil_iff, or_false] at hk
  rcases hk with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact (h f hf).2 0 (by omega)
  · exact (h f hf).2 1 (by omega)
  · exact (h f hf).2 2 (by omega)
  · exact (h f hf).2 4 (by omega)
  · exact (h f hf).2 6 (by omega)
  · exact (h f hf).2 7 (by omega)
  · exact (h f hf).2 9 (by omega)
  · exact (h f hf).2 10 (by omega)

theorem fk_rd {fs : List Frame} {s t : State σ} (h : FramesKept fs s t) {f : Frame} (hf : f ∈ fs)
    {k : Nat} (hk : k ∈ [evRetd, evRetdCap]) :
    fld t.memory f.1 k = fld s.memory f.1 k := by
  simp only [evRetd, evRetdCap, List.mem_cons, List.mem_nil_iff, or_false] at hk
  rcases hk with rfl | rfl
  · exact (h f hf).1 18 (by simp [evProtSlots])
  · exact (h f hf).1 27 (by simp [evProtSlots])

/-- **The pushed chain.** -/
theorem chainL_push {C : Cfg} {tEV tCK : Nat} {Γ Γ' : Gam} {s t : State σ} {fs rest : List Frame}
    {e0 c0 e q : BitVec 64} (hch : ChainL C tEV tCK Γ s fs) (hfs : fs = (e0, c0) :: rest)
    (hext : Ext Γ Γ') (hk : FramesKept fs s t)
    (hev : gword t nmEv = some e) (hcc : gword t nmCC = some q)
    (hEo : ∃ o ∈ Γ', o.base = e ∧ o.ty = tEV) (hCo : ∃ o ∈ Γ', o.base = q ∧ o.ty = tCK)
    (hne : e ∉ fs.map Prod.fst) (hnc : q ∉ fs.map Prod.snd)
    (hkind : fld t.memory q ckKind ≠ 0) (hpar : fld t.memory q ckParent = e0)
    (hparc : fld t.memory q ckParentCont = c0)
    (hsp : (fld s.memory e0 evSp).toNat < (fld s.memory e0 evStackCap).toNat)
    (hmm : (fld t.memory q ckMemMark).toNat =
      (fld s.memory e0 evMem).toNat + (fld s.memory e0 evMemCap).toNat)
    (hout : fld t.memory q ckOutSize = 0 ∨
      (fld t.memory q ckOutStart).toNat + (fld t.memory q ckOutSize).toNat ≤
        (fld s.memory e0 evMemLen).toNat)
    (htop : ∀ p, ptrsOf t = some p →
      (fld t.memory e evMem).toNat + (fld t.memory e evMemCap).toNat = p.fp)
    (hstep : GStep C tEV Γ Γ' s t e0)
    (hnew : ∀ o ∈ Γ', o.base = e → o.ty = tEV → ∀ p, ptrsOf s = some p → o.hi ≤ p.sp)
    (hmk : ChildMarks C tEV tCK Γ' t [] (e, q) (e0, c0) rest) (hrd : RetOK C Γ' t.memory e) :
    ChainL C tEV tCK Γ' t ((e, q) :: fs) := by
  have hck : ∀ f ∈ fs, ∀ k ∈ ckChainSlots, fld t.memory f.2 k = fld s.memory f.2 k := by
    intro f hf k hk'
    refine fk_ck hk hf ?_
    simp only [ckChainSlots, ckParent, ckParentCont, ckKind, ckMark, ckMemMark, ckOutStart,
      ckOutSize, List.mem_cons, List.mem_nil_iff, or_false] at hk' ⊢
    omega
  have hobj0 := hch.objs
  have hmk0 := hch.marks
  have hrd0 := hch.retd
  obtain ⟨⟨e1, c1, rest1, hfs1, he1, hc1, hic⟩, hobj, hnE, hnC, hst, hmmk, hoo, -, -, -⟩ := hch
  have h0 : (e0, c0) ∈ fs := by rw [hfs]; exact List.mem_cons_self ..
  have hhead : fs.head? = some (e0, c0) := by rw [hfs]; rfl
  have hic' : IsChain t.memory fs := by
    refine isChain_keep hic fun f hf k hk' => fk_ck hk hf ?_
    simp only [ckChainSlots, ckParent, ckParentCont, ckKind, ckMark, ckMemMark, ckOutStart, ckOutSize]
      at hk' ⊢
    simp only [List.mem_cons, List.mem_nil_iff, or_false] at hk' ⊢
    omega
  refine ⟨⟨e, q, fs, rfl, hev, hcc, IsChain.step hkind (by rw [hhead, hpar, hparc]) hic'⟩,
    ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · intro f hf
    rcases List.mem_cons.mp hf with rfl | hf
    · exact ⟨hEo, hCo⟩
    · obtain ⟨⟨o1, ho1, hb1, ht1⟩, ⟨o2, ho2, hb2, ht2⟩⟩ := hobj f hf
      obtain ⟨o1', ho1', hb1', ht1', -⟩ := hext o1 ho1
      obtain ⟨o2', ho2', hb2', ht2', -⟩ := hext o2 ho2
      exact ⟨⟨o1', ho1', hb1'.trans hb1, ht1'.trans ht1⟩, ⟨o2', ho2', hb2'.trans hb2, ht2'.trans ht2⟩⟩
  · exact List.nodup_cons.mpr ⟨hne, hnE⟩
  · exact List.nodup_cons.mpr ⟨hnc, hnC⟩
  · intro ch pa ha
    rcases adj_cons hhead ha with ⟨rfl, rfl⟩ | ha
    · rw [fk_ev hk h0 (by simp [evSp, evStackCap, evMem, evMemCap, evMemLen, ckMemMark, ckOutSize, ckOutStart]), fk_ev hk h0 (by simp [evSp, evStackCap, evMem, evMemCap, evMemLen, ckMemMark, ckOutSize, ckOutStart])]; exact hsp
    · obtain ⟨-, hpa⟩ := adj_mem ha
      rw [fk_ev hk (List.mem_of_mem_tail hpa) (by simp [evSp, evStackCap, evMem, evMemCap, evMemLen, ckMemMark, ckOutSize, ckOutStart]), fk_ev hk (List.mem_of_mem_tail hpa) (by simp [evSp, evStackCap, evMem, evMemCap, evMemLen, ckMemMark, ckOutSize, ckOutStart])]
      exact hst ch pa ha
  · intro ch pa ha
    rcases adj_cons hhead ha with ⟨rfl, rfl⟩ | ha
    · rw [fk_ev hk h0 (by simp [evSp, evStackCap, evMem, evMemCap, evMemLen, ckMemMark, ckOutSize, ckOutStart]), fk_ev hk h0 (by simp [evSp, evStackCap, evMem, evMemCap, evMemLen, ckMemMark, ckOutSize, ckOutStart])]; exact hmm
    · obtain ⟨hch', hpa⟩ := adj_mem ha
      rw [fk_ck hk hch' (by simp [evSp, evStackCap, evMem, evMemCap, evMemLen, ckMemMark, ckOutSize, ckOutStart]), fk_ev hk (List.mem_of_mem_tail hpa) (by simp [evSp, evStackCap, evMem, evMemCap, evMemLen, ckMemMark, ckOutSize, ckOutStart]),
        fk_ev hk (List.mem_of_mem_tail hpa) (by simp [evSp, evStackCap, evMem, evMemCap, evMemLen, ckMemMark, ckOutSize, ckOutStart])]
      exact hmmk ch pa ha
  · intro ch pa ha
    rcases adj_cons hhead ha with ⟨rfl, rfl⟩ | ha
    · rw [fk_ev hk h0 (by simp [evSp, evStackCap, evMem, evMemCap, evMemLen, ckMemMark, ckOutSize, ckOutStart])]; exact hout
    · obtain ⟨hch', hpa⟩ := adj_mem ha
      rw [fk_ck hk hch' (by simp [evSp, evStackCap, evMem, evMemCap, evMemLen, ckMemMark, ckOutSize, ckOutStart]), fk_ck hk hch' (by simp [evSp, evStackCap, evMem, evMemCap, evMemLen, ckMemMark, ckOutSize, ckOutStart]),
        fk_ev hk (List.mem_of_mem_tail hpa) (by simp [evSp, evStackCap, evMem, evMemCap, evMemLen, ckMemMark, ckOutSize, ckOutStart])]
      exact hoo ch pa ha
  · intro e' c' rest' hfs' p hp
    simp only [List.cons.injEq, Prod.mk.injEq] at hfs'
    obtain ⟨⟨rfl, rfl⟩, -⟩ := hfs'
    exact htop p hp
  · intro l1 ch pa l2 hfs'
    cases l1 with
    | nil =>
        simp only [List.nil_append, List.cons.injEq] at hfs'
        obtain ⟨rfl, hfs2⟩ := hfs'
        rw [hfs] at hfs2
        simp only [List.cons.injEq] at hfs2
        obtain ⟨rfl, rfl⟩ := hfs2
        exact hmk
    | cons f0 l1' =>
        simp only [List.cons_append, List.cons.injEq] at hfs'
        obtain ⟨rfl, hfs2⟩ := hfs'
        exact childMarks_push hobj0 hck (top := e0) (fun f hf => by
          rw [hhead] at hf; simp only [Option.mem_def, Option.some.injEq] at hf; rw [← hf]) hstep
          hnew hfs2 (hmk0 l1' ch pa l2 hfs2)
  · intro f hf
    rcases List.mem_cons.mp hf with rfl | hf'
    · exact hrd
    · refine retOK_ext (gStep_ext hstep) ?_ ?_ (hrd0 f hf')
      · exact (hk f hf').1 18 (by simp [evProtSlots])
      · exact (hk f hf').1 27 (by simp [evProtSlots])

theorem wsum_push {fs : List Frame} {s t : State σ} (hk : FramesKept fs s t) (f : Frame) :
    wsum t.memory (f :: fs) = wt t.memory f + wsum s.memory fs := by
  rw [wsum_cons]
  congr 1
  refine wsum_keep fun g hg => ⟨fun k hk' => fk_ev hk hg ?_, fk_ck hk hg (by simp [ckDone])⟩
  simp only [evGasLeft, evSpilled, evRunning, List.mem_cons, List.mem_nil_iff, or_false] at hk' ⊢
  omega

/-- The weight of a fresh frame: at most its gas plus 2. -/
theorem wt_le (m : Mem) (e q : BitVec 64) :
    wt m (e, q) ≤ (fld m e 64).toNat + (fld m e 192).toNat + 2 := by
  rw [wt_eq]; split <;> omega

end InitECandidate.Solver.MemSafe.Frames
