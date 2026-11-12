import InitECandidate.Solver.Spec.Mpt.Measure
import InitECandidate.Solver.Spec.Mpt.DeleteDescent

/-!
# One iteration of the insertion descent

`ins_step`: from a state whose locals `node`, `slot`, `level`, `klen` are `vn, vs, vl, vk`
and whose memory is `M`, a normally completing iteration of `_mpt_insert_node`'s loop
either leaves `go = 0` (it built the subtree result: a terminal iteration) or descends
(`DescPost`): `node, slot, level, klen` were the words `N ≠ 0, S, Lv, K`; now `go = 1`,
`slot = N + off`, `node` is the word read at `N + off` after `node_invalidate(N)`,
`level = Lv + pl`, `klen = K`, the memory is `zero3 M N` with `N` stored back at `S`
(unless `S = 0`), and either the step went through a branch (`Lv ≠ K`, `pl = 1`) or through
an extension (`off = 48`, `M N = 2`, the segment length `M (N + 40)` is `pl`, and
`pl ≤ K - Lv` by `funRet_cpl`).
-/

namespace InitECandidate.Solver.Spec.Mpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

abbrev Mem := BitVec 64 → HolWordLab 64

/-! ## Frames -/

/-- The loop locals `node, slot, level, klen` hold `vn, vs, vl, vk`. -/
def Fr (vn vs vl vk : Option (ValueHOL 64)) (t : PanSemStateFiniteExact 64 σ) : Prop :=
  t.locals.lookup (nm "node") = vn ∧ t.locals.lookup (nm "slot") = vs ∧
    t.locals.lookup (nm "level") = vl ∧ t.locals.lookup (nm "klen") = vk

/-- A local outside the frame and other than `go`. -/
def Other (y : MlS) : Prop :=
  y ≠ nm "node" ∧ y ≠ nm "slot" ∧ y ≠ nm "level" ∧ y ≠ nm "klen" ∧ y ≠ go_

theorem other_of (s : String) (h : (decide (nm s ≠ nm "node") && decide (nm s ≠ nm "slot") &&
    decide (nm s ≠ nm "level") && decide (nm s ≠ nm "klen") && decide (nm s ≠ go_)) = true :=
    by decide) : Other (nm s) := by
  simp only [Bool.and_eq_true, decide_eq_true_eq] at h
  exact ⟨h.1.1.1.1, h.1.1.1.2, h.1.1.2, h.1.2, h.2⟩

section frames
variable {vn vs vl vk : Option (ValueHOL 64)} {t : PanSemStateFiniteExact 64 σ}

theorem fr_set {y : MlS} (hy : Other y) (v : ValueHOL 64) (h : Fr vn vs vl vk t) :
    Fr vn vs vl vk (setVarHOLFinite y v t) := by
  obtain ⟨h1, h2, h3, h4, -⟩ := hy
  refine ⟨?_, ?_, ?_, ?_⟩
  · rw [lk_set_ne _ _ h1]; exact h.1
  · rw [lk_set_ne _ _ h2]; exact h.2.1
  · rw [lk_set_ne _ _ h3]; exact h.2.2.1
  · rw [lk_set_ne _ _ h4]; exact h.2.2.2

theorem fr_restore {y : MlS} (hy : Other y) (old : Option (ValueHOL 64)) (h : Fr vn vs vl vk t) :
    Fr vn vs vl vk { t with locals := t.locals.resVarEq (y, old) } := by
  obtain ⟨h1, h2, h3, h4, -⟩ := hy
  refine ⟨?_, ?_, ?_, ?_⟩
  · show (t.locals.resVarEq (y, old)).lookup _ = _
    rw [lookup_resVarEq_ne _ _ h1]; exact h.1
  · show (t.locals.resVarEq (y, old)).lookup _ = _
    rw [lookup_resVarEq_ne _ _ h2]; exact h.2.1
  · show (t.locals.resVarEq (y, old)).lookup _ = _
    rw [lookup_resVarEq_ne _ _ h3]; exact h.2.2.1
  · show (t.locals.resVarEq (y, old)).lookup _ = _
    rw [lookup_resVarEq_ne _ _ h4]; exact h.2.2.2

theorem goZ_set {y : MlS} (hy : Other y) (v : ValueHOL 64) (h : GoZ t) :
    GoZ (setVarHOLFinite y v t) := by
  unfold GoZ; rw [lk_set_ne _ _ hy.2.2.2.2]; exact h

theorem goZ_restore {y : MlS} (hy : Other y) (old : Option (ValueHOL 64)) (h : GoZ t) :
    GoZ { t with locals := t.locals.resVarEq (y, old) } := by
  show (t.locals.resVarEq (y, old)).lookup go_ = _
  rw [lookup_resVarEq_ne _ _ hy.2.2.2.2]; exact h

end frames

/-! ## Post-conditions -/

/-- How the descent went down: a branch, or an extension with segment length `pl`. -/
def Case (M : Mem) (N Lv K off pl : BitVec 64) : Prop :=
  (Lv ≠ K ∧ pl = 1 ∧ M N ≠ .word 2) ∨
    (off = 48 ∧ M N = .word 2 ∧ M (N + 40) = .word pl ∧ pl.toNat ≤ (K - Lv).toNat)

/-- After the kind dispatch of a descent: the next-values are ready, `go = 1`. -/
def MidD (vn vs vl vk : Option (ValueHOL 64)) (M : Mem) (t : PanSemStateFiniteExact 64 σ) :
    Prop :=
  Fr vn vs vl vk t ∧ ∃ N Lv K off pl : BitVec 64, vn = some (.val (.word N)) ∧
    vl = some (.val (.word Lv)) ∧ vk = some (.val (.word K)) ∧ N ≠ 0 ∧
    t.locals.lookup go_ = some (.val (.word 1)) ∧
    t.locals.lookup (nm "r") = some (.val (.word N)) ∧
    t.locals.lookup (nm "next_node") = some (.val (zero3 M N (N + off))) ∧
    t.locals.lookup (nm "next_slot") = some (.val (.word (N + off))) ∧
    t.locals.lookup (nm "next_level") = some (.val (.word (Lv + pl))) ∧
    t.memory = zero3 M N ∧ Case M N Lv K off pl

/-- The memory after a descent iteration. -/
def memAfter (M : Mem) (N S : BitVec 64) : Mem :=
  if S = 0 then zero3 M N else upd (zero3 M N) S (.word N)

/-- A descent iteration's final state. -/
def DescPost (vn vs vl vk : Option (ValueHOL 64)) (M : Mem) (t : PanSemStateFiniteExact 64 σ) :
    Prop :=
  ∃ N S Lv K off pl : BitVec 64, vn = some (.val (.word N)) ∧ vs = some (.val (.word S)) ∧
    vl = some (.val (.word Lv)) ∧ vk = some (.val (.word K)) ∧ N ≠ 0 ∧
    t.locals.lookup go_ = some (.val (.word 1)) ∧
    t.locals.lookup (nm "klen") = some (.val (.word K)) ∧
    t.locals.lookup (nm "level") = some (.val (.word (Lv + pl))) ∧
    t.locals.lookup (nm "slot") = some (.val (.word (N + off))) ∧
    t.locals.lookup (nm "node") = some (.val (zero3 M N (N + off))) ∧
    t.memory = memAfter M N S ∧ Case M N Lv K off pl

def StepPost (vn vs vl vk : Option (ValueHOL 64)) (M : Mem) (t : PanSemStateFiniteExact 64 σ) :
    Prop := GoZ t ∨ DescPost vn vs vl vk M t

theorem descPost_restore {vn vs vl vk : Option (ValueHOL 64)} {M : Mem}
    {t : PanSemStateFiniteExact 64 σ} {y : MlS} (hy : Other y) (old : Option (ValueHOL 64))
    (h : DescPost vn vs vl vk M t) :
    DescPost vn vs vl vk M { t with locals := t.locals.resVarEq (y, old) } := by
  obtain ⟨N, S, Lv, K, off, pl, e1, e2, e3, e4, hN, hgo, hk, hl, hsl, hn, hm, hc⟩ := h
  obtain ⟨h1, h2, h3, h4, h5⟩ := hy
  refine ⟨N, S, Lv, K, off, pl, e1, e2, e3, e4, hN, ?_, ?_, ?_, ?_, ?_, hm, hc⟩
  all_goals show (t.locals.resVarEq (y, old)).lookup _ = _
  · rw [lookup_resVarEq_ne _ _ h5]; exact hgo
  · rw [lookup_resVarEq_ne _ _ h4]; exact hk
  · rw [lookup_resVarEq_ne _ _ h3]; exact hl
  · rw [lookup_resVarEq_ne _ _ h2]; exact hsl
  · rw [lookup_resVarEq_ne _ _ h1]; exact hn

theorem stepPost_restore {vn vs vl vk : Option (ValueHOL 64)} {M : Mem}
    {t : PanSemStateFiniteExact 64 σ} {y : MlS} (hy : Other y) (old : Option (ValueHOL 64))
    (h : StepPost vn vs vl vk M t) :
    StepPost vn vs vl vk M { t with locals := t.locals.resVarEq (y, old) } := by
  rcases h with h | h
  · exact Or.inl (goZ_restore hy old h)
  · exact Or.inr (descPost_restore hy old h)

/-! ## Syntactic checks -/

set_option maxRecDepth 100000
set_option cbv.warning false

theorem kp_insTail : kpB [go_] [] [] insTail = true := by decide_cbv
theorem kp_insSplit : kpB [go_] [] [] insSplit = true := by decide_cbv
theorem kp_insBrEnd : kpB [go_] [] [] insBrEnd = true := by decide_cbv
theorem kp_insLeaf : kpB [go_] [] [] insLeaf = true := by decide_cbv
theorem kp_insNewLeaf : kpB [go_] [] [] insNewLeaf = true := by decide_cbv

/-! ## Memory facts -/

theorem zero3_of_ne {M : Mem} {N a : BitVec 64} (h8 : a ≠ N + 8) (h16 : a ≠ N + 16)
    (h24 : a ≠ N + 24) : zero3 M N a = M a := by
  unfold zero3 upd
  split_ifs <;> first | rfl | (exfalso; bv_omega)

theorem zero3_40 (M : Mem) (N : BitVec 64) : zero3 M N (N + 40) = M (N + 40) :=
  zero3_of_ne (by bv_omega) (by bv_omega) (by bv_omega)

/-! ## The tail -/

theorem ins_tail_desc {vn vs vl vk : Option (ValueHOL 64)} {M : Mem} :
    Hoare σ X (MidD vn vs vl vk M) insTail (KP (DescPost vn vs vl vk M)) := by
  unfold insTail
  refine hoare_seq (R := fun r t => r = none ∧ ∃ S, vs = some (.val (.word S)) ∧
      Fr vn vs vl vk t ∧ ∃ N Lv K off pl : BitVec 64, vn = some (.val (.word N)) ∧
      vl = some (.val (.word Lv)) ∧ vk = some (.val (.word K)) ∧ N ≠ 0 ∧
      t.locals.lookup go_ = some (.val (.word 1)) ∧
      t.locals.lookup (nm "next_node") = some (.val (zero3 M N (N + off))) ∧
      t.locals.lookup (nm "next_slot") = some (.val (.word (N + off))) ∧
      t.locals.lookup (nm "next_level") = some (.val (.word (Lv + pl))) ∧
      t.memory = memAfter M N S ∧ Case M N Lv K off pl) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_ite ?_ ?_
    · -- `slot == 0`: `result = r`
      refine hoare_assign fun s _ ⟨⟨hfr, N, Lv, K, off, pl, e1, e3, e4, hN, hgo, hr, hnn, hns, hnl,
          hm, hc⟩, w, hw, hw0⟩ v _ _ => ?_
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
      rw [ev_lv, hfr.2.1] at hx
      rw [ev_cw] at hy
      cases hy
      have hS : x = 0 := by simpa [wordCmpHOL] using hxy
      have hres : Other (nm "result") := other_of "result"
      refine ⟨rfl, x, hx, fr_set hres v hfr, N, Lv, K, off, pl, e1, e3, e4, hN, ?_, ?_, ?_, ?_, ?_,
        hc⟩
      · rw [lk_set_ne _ _ hres.2.2.2.2]; exact hgo
      · rw [lk_set_ne _ _ (by decide)]; exact hnn
      · rw [lk_set_ne _ _ (by decide)]; exact hns
      · rw [lk_set_ne _ _ (by decide)]; exact hnl
      · show s.memory = _
        rw [hm]; unfold memAfter; rw [if_pos hS]
    · -- `slot != 0`: store `r` there
      refine hoare_store fun s _ ⟨⟨hfr, N, Lv, K, off, pl, e1, e3, e4, hN, hgo, hr, hnn, hns, hnl,
          hm, hc⟩, hc0⟩ A v mem hA hv hmem => ?_
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc0
      rw [ev_lv, hfr.2.1] at hx
      rw [ev_cw] at hy
      cases hy
      have hS : x ≠ 0 := by
        intro h0
        subst h0
        simp [wordCmpHOL] at hxy
      simp only [ev_lv, hfr.2.1, hx, Option.some.injEq, ValueHOL.val.injEq,
        HolWordLab.word.injEq] at hA
      subst hA
      rw [ev_lv, hr] at hv
      cases hv
      simp only [flattenHOL] at hmem
      obtain ⟨-, rfl⟩ := stores_one hmem
      refine ⟨rfl, x, hx, hfr, N, Lv, K, off, pl, e1, e3, e4, hN, hgo, hnn, hns, hnl, ?_, hc⟩
      show (fun a => if a = x then HolWordLab.word N else s.memory a) = memAfter M N x
      rw [hm]
      unfold memAfter upd
      rw [if_neg hS]
  · -- `node = next_node; slot = next_slot; level = next_level`
    refine hoare_seq (R := fun r t => r = none ∧ ∃ S, vs = some (.val (.word S)) ∧
        t.locals.lookup (nm "slot") = vs ∧ t.locals.lookup (nm "level") = vl ∧
        t.locals.lookup (nm "klen") = vk ∧ ∃ N Lv K off pl : BitVec 64,
        vn = some (.val (.word N)) ∧ vl = some (.val (.word Lv)) ∧ vk = some (.val (.word K)) ∧
        N ≠ 0 ∧ t.locals.lookup go_ = some (.val (.word 1)) ∧
        t.locals.lookup (nm "node") = some (.val (zero3 M N (N + off))) ∧
        t.locals.lookup (nm "next_slot") = some (.val (.word (N + off))) ∧
        t.locals.lookup (nm "next_level") = some (.val (.word (Lv + pl))) ∧
        t.memory = memAfter M N S ∧ Case M N Lv K off pl) ?_
      (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine hoare_assign fun s _ ⟨_, S, eS, hfr, N, Lv, K, off, pl, e1, e3, e4, hN, hgo, hnn, hns,
          hnl, hm, hc⟩ v hv _ => ?_
      rw [ev_lv, hnn] at hv
      cases hv
      refine ⟨rfl, S, eS, ?_, ?_, ?_, N, Lv, K, off, pl, e1, e3, e4, hN, ?_, lk_set_self _ _ _, ?_,
        ?_, hm, hc⟩
      · rw [lk_set_ne _ _ (by decide)]; exact hfr.2.1
      · rw [lk_set_ne _ _ (by decide)]; exact hfr.2.2.1
      · rw [lk_set_ne _ _ (by decide)]; exact hfr.2.2.2
      · rw [lk_set_ne _ _ (by decide)]; exact hgo
      · rw [lk_set_ne _ _ (by decide)]; exact hns
      · rw [lk_set_ne _ _ (by decide)]; exact hnl
    refine hoare_seq (R := fun r t => r = none ∧ ∃ S, vs = some (.val (.word S)) ∧
        t.locals.lookup (nm "level") = vl ∧ t.locals.lookup (nm "klen") = vk ∧
        ∃ N Lv K off pl : BitVec 64,
        vn = some (.val (.word N)) ∧ vl = some (.val (.word Lv)) ∧ vk = some (.val (.word K)) ∧
        N ≠ 0 ∧ t.locals.lookup go_ = some (.val (.word 1)) ∧
        t.locals.lookup (nm "node") = some (.val (zero3 M N (N + off))) ∧
        t.locals.lookup (nm "slot") = some (.val (.word (N + off))) ∧
        t.locals.lookup (nm "next_level") = some (.val (.word (Lv + pl))) ∧
        t.memory = memAfter M N S ∧ Case M N Lv K off pl) ?_
      (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine hoare_assign fun s _ ⟨_, S, eS, _, hl, hk, N, Lv, K, off, pl, e1, e3, e4, hN, hgo, hn,
          hns, hnl, hm, hc⟩ v hv _ => ?_
      rw [ev_lv, hns] at hv
      cases hv
      refine ⟨rfl, S, eS, ?_, ?_, N, Lv, K, off, pl, e1, e3, e4, hN, ?_, ?_, lk_set_self _ _ _, ?_,
        hm, hc⟩
      · rw [lk_set_ne _ _ (by decide)]; exact hl
      · rw [lk_set_ne _ _ (by decide)]; exact hk
      · rw [lk_set_ne _ _ (by decide)]; exact hgo
      · rw [lk_set_ne _ _ (by decide)]; exact hn
      · rw [lk_set_ne _ _ (by decide)]; exact hnl
    · refine hoare_assign fun s _ ⟨_, S, eS, _, hk, N, Lv, K, off, pl, e1, e3, e4, hN, hgo, hn,
          hsl, hnl, hm, hc⟩ v hv _ => ?_
      rw [ev_lv, hnl] at hv
      cases hv
      refine Or.inl ⟨rfl, N, S, Lv, K, off, pl, e1, eS, e3, e4, hN, ?_, ?_, lk_set_self _ _ _, ?_,
        ?_, hm, hc⟩
      · rw [lk_set_ne _ _ (by decide)]; exact hgo
      · rw [lk_set_ne _ _ (by decide)]; rw [e4] at hk; exact hk
      · rw [lk_set_ne _ _ (by decide)]; exact hsl
      · rw [lk_set_ne _ _ (by decide)]; exact hn

theorem ins_tail_term :
    Hoare σ X (fun t : PanSemStateFiniteExact 64 σ => GoZ t) insTail (KP GoZ) := by
  refine hoare_conseq (hoare_kp (gs := []) (L := L0) (G := fun _ => none) nil_closed _ kp_insTail)
    (fun s _ h => ⟨fun x hx => by simp at hx; subst hx; exact h, fun g hg => by cases hg⟩)
    (fun _ _ _ _ h => h.mono fun hk => goZ_of_keeps hk)

/-- A terminal branch that keeps `go = 0`. -/
theorem hoare_term {p : ProgHOL 64} (hp : kpB [go_] [] [] p = true) {F : PanSemStateFiniteExact 64 σ → Prop}
    {P : PanSemStateFiniteExact 64 σ → Prop} (hP : ∀ s, P s → GoZ s) :
    Hoare σ X P p (KP (fun t => GoZ t ∨ F t)) := by
  refine hoare_conseq (hoare_kp (gs := []) (L := L0) (G := fun _ => none) nil_closed p hp)
    (fun s _ h => ⟨fun x hx => by simp at hx; subst hx; exact hP s h, fun g hg => by cases hg⟩)
    (fun _ _ _ _ h => h.mono fun hk => Or.inl (goZ_of_keeps hk))

end InitECandidate.Solver.Spec.Mpt
