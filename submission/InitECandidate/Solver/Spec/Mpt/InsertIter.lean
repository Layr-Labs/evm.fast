import InitECandidate.Solver.Spec.Mpt.InsertStep

/-!
# One iteration of the insertion descent: the kind dispatch and the whole body

`ins_step`: the triple of the loop body (`StepPost`, see `InsertStep.lean`).
-/

namespace InitECandidate.Solver.Spec.Mpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

theorem hoare_assign_val {P : PanSemStateFiniteExact 64 σ → Prop}
    {Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop}
    {n : MlS} {e : ExpHOL 64} {v : ValueHOL 64} (hv : ∀ s, P s → ev s e = some v)
    (h : ∀ s, P s → Q none (setVarHOLFinite n v s)) : Hoare σ X P (.assign .local n e) Q :=
  hoare_assign fun s _ hs v' hv' _ => by rw [hv s hs] at hv'; cases hv'; exact h s hs

/-- A local other than the frame, `go`, `k` and the next-values. -/
def Other2 (y : MlS) : Prop :=
  Other y ∧ y ≠ nm "r" ∧ y ≠ nm "next_node" ∧ y ≠ nm "next_slot" ∧ y ≠ nm "next_level"

theorem other2_of (s : String) (h : (decide (nm s ≠ nm "node") && decide (nm s ≠ nm "slot") &&
    decide (nm s ≠ nm "level") && decide (nm s ≠ nm "klen") && decide (nm s ≠ go_) &&
    decide (nm s ≠ nm "r") && decide (nm s ≠ nm "next_node") &&
    decide (nm s ≠ nm "next_slot") && decide (nm s ≠ nm "next_level")) = true :=
    by decide) : Other2 (nm s) := by
  simp only [Bool.and_eq_true, decide_eq_true_eq] at h
  obtain ⟨⟨⟨⟨⟨⟨⟨⟨h1, h2⟩, h3⟩, h4⟩, h5⟩, h7⟩, h8⟩, h9⟩, h10⟩ := h
  exact ⟨⟨h1, h2, h3, h4, h5⟩, h7, h8, h9, h10⟩

theorem midD_restore {vn vs vl vk : Option (ValueHOL 64)} {M : Mem}
    {t : PanSemStateFiniteExact 64 σ} {y : MlS} (hy : Other2 y) (old : Option (ValueHOL 64))
    (h : MidD vn vs vl vk M t) :
    MidD vn vs vl vk M { t with locals := t.locals.resVarEq (y, old) } := by
  obtain ⟨hfr, N, Lv, K, off, pl, e1, e3, e4, hN, hgo, hr, hnn, hns, hnl, hm, hc⟩ := h
  obtain ⟨ho, h7, h8, h9, h10⟩ := hy
  refine ⟨fr_restore ho old hfr, N, Lv, K, off, pl, e1, e3, e4, hN, ?_, ?_, ?_, ?_, ?_, hm, hc⟩
  all_goals show (t.locals.resVarEq (y, old)).lookup _ = _
  · rw [lookup_resVarEq_ne _ _ ho.2.2.2.2]; exact hgo
  · rw [lookup_resVarEq_ne _ _ h7]; exact hr
  · rw [lookup_resVarEq_ne _ _ h8]; exact hnn
  · rw [lookup_resVarEq_ne _ _ h9]; exact hns
  · rw [lookup_resVarEq_ne _ _ h10]; exact hnl

/-- `GoZ ∨ MidD`, the post of the kind dispatch. -/
def KPost (vn vs vl vk : Option (ValueHOL 64)) (M : Mem) : Option (PanSemResultExact 64) →
    PanSemStateFiniteExact 64 σ → Prop :=
  KP (fun t => GoZ t ∨ MidD vn vs vl vk M t)

theorem kpost_restore {vn vs vl vk : Option (ValueHOL 64)} {M : Mem}
    {r : Option (PanSemResultExact 64)} {t : PanSemStateFiniteExact 64 σ} {y : MlS}
    (hy : Other2 y) (old : Option (ValueHOL 64)) (h : KPost vn vs vl vk M r t) :
    KPost vn vs vl vk M r { t with locals := t.locals.resVarEq (y, old) } :=
  KP.mono h fun h' => h'.elim (fun g => Or.inl (goZ_restore hy.1 old g))
    (fun m => Or.inr (midD_restore hy old m))

/-- After `node_invalidate(N)`: frame, `go = 0`, the invalidated memory. -/
def AfterInv (vn vs vl vk : Option (ValueHOL 64)) (M : Mem) (N : BitVec 64)
    (t : PanSemStateFiniteExact 64 σ) : Prop :=
  Fr vn vs vl vk t ∧ vn = some (.val (.word N)) ∧ N ≠ 0 ∧ GoZ t ∧ t.memory = zero3 M N

theorem afterInv_set {vn vs vl vk : Option (ValueHOL 64)} {M : Mem} {N : BitVec 64}
    {t : PanSemStateFiniteExact 64 σ} {y : MlS} (hy : Other y) (v : ValueHOL 64)
    (h : AfterInv vn vs vl vk M N t) : AfterInv vn vs vl vk M N (setVarHOLFinite y v t) :=
  ⟨fr_set hy v h.1, h.2.1, h.2.2.1, goZ_set hy v h.2.2.2.1, h.2.2.2.2⟩

/-! ## The extension case -/

theorem ins_extDesc {vn vs vl vk : Option (ValueHOL 64)} {M : Mem} {N Lv K P : BitVec 64}
    {t3 : PanSemStateFiniteExact 64 σ} (ha : AfterInv vn vs vl vk M N t3)
    (hl : vl = some (.val (.word Lv))) (hk : vk = some (.val (.word K)))
    (hpl : t3.locals.lookup (nm "pl") = some (.val (.word P)))
    (hcase : Case M N Lv K 48 P) :
    Hoare σ X (fun t => t = t3) insExtDesc (KPost vn vs vl vk M) := by
  obtain ⟨hfr, e1, hN, _, hm⟩ := ha
  have hn3 : t3.locals.lookup (nm "node") = some (.val (.word N)) := hfr.1.trans e1
  unfold insExtDesc
  -- r = node
  refine hoare_seq (R := fun r t => r = none ∧ t = setVarHOLFinite (nm "r") (.val (.word N)) t3)
    (hoare_assign_val (fun s hs => by subst hs; rw [ev_lv, hn3]) fun s hs => ⟨rfl, by rw [hs]⟩)
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  -- next_node = ld (node + 48)
  refine hoare_seq (R := fun r t => r = none ∧ ∃ w, t = setVarHOLFinite (nm "next_node") w
      (setVarHOLFinite (nm "r") (.val (.word N)) t3) ∧ w = .val (zero3 M N (N + 48))) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_assign fun s _ ⟨_, hs⟩ v hv _ => ⟨rfl, v, by rw [hs], ?_⟩
    subst hs
    obtain ⟨w, hw, -, rfl⟩ := ev_load_one hv
    rw [ev_add_cw (by rw [lk_set_ne _ _ (by decide)]; exact hn3) 48] at hw
    cases hw
    show ValueHOL.val (t3.memory _) = _
    rw [hm]
    try rfl
  -- next_slot = node + 48
  refine hoare_seq (R := fun r t => r = none ∧ t = setVarHOLFinite (nm "next_slot")
      (.val (.word (N + 48))) (setVarHOLFinite (nm "next_node") (.val (zero3 M N (N + 48)))
        (setVarHOLFinite (nm "r") (.val (.word N)) t3))) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_assign_val (v := .val (.word (N + 48))) (fun s ⟨_, w, hs, hw⟩ => ?_)
      (fun s ⟨_, w, hs, hw⟩ => ⟨rfl, ?_⟩)
    · subst hs
      rw [ev_add_cw (by rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hn3) 48]
      rfl
    · rw [hs, hw]
  -- next_level = level + pl
  refine hoare_seq (R := fun r t => r = none ∧ t = setVarHOLFinite (nm "next_level")
      (.val (.word (Lv + P))) (setVarHOLFinite (nm "next_slot")
      (.val (.word (N + 48))) (setVarHOLFinite (nm "next_node") (.val (zero3 M N (N + 48)))
        (setVarHOLFinite (nm "r") (.val (.word N)) t3)))) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_assign_val (v := .val (.word (Lv + P))) (fun s ⟨_, hs⟩ => ?_)
      (fun s ⟨_, hs⟩ => ⟨rfl, by rw [hs]⟩)
    subst hs
    refine ev_add2 (ev_lw ?_) (ev_lw ?_)
    · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]
      exact hfr.2.2.1.trans hl
    · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]
      exact hpl
  -- go = 1
  refine hoare_assign_val (v := .val (.word (BitVec.ofNat 64 1))) (fun s _ => ev_cw s 1)
    (fun s ⟨_, hs⟩ => Or.inl ⟨rfl, Or.inr ?_⟩)
  subst hs
  have hset : ∀ y, y ≠ nm "go" → y ≠ nm "next_level" → y ≠ nm "next_slot" → y ≠ nm "next_node" →
      y ≠ nm "r" → (setVarHOLFinite (nm "go") (.val (.word (BitVec.ofNat 64 1)))
        (setVarHOLFinite (nm "next_level") (.val (.word (Lv + P)))
        (setVarHOLFinite (nm "next_slot") (.val (.word (N + 48)))
        (setVarHOLFinite (nm "next_node") (.val (zero3 M N (N + 48)))
        (setVarHOLFinite (nm "r") (.val (.word N)) t3))))).locals.lookup y = t3.locals.lookup y := by
    intro y h1 h2 h3 h4 h5
    rw [lk_set_ne _ _ (Ne.symm h1), lk_set_ne _ _ (Ne.symm h2), lk_set_ne _ _ (Ne.symm h3),
      lk_set_ne _ _ (Ne.symm h4), lk_set_ne _ _ (Ne.symm h5)]
  refine ⟨⟨?_, ?_, ?_, ?_⟩, N, Lv, K, 48, P, e1, hl, hk, hN, lk_set_self _ _ _, ?_, ?_, ?_, ?_,
    hm, hcase⟩
  · rw [hset _ (by decide) (by decide) (by decide) (by decide) (by decide)]; exact hfr.1
  · rw [hset _ (by decide) (by decide) (by decide) (by decide) (by decide)]; exact hfr.2.1
  · rw [hset _ (by decide) (by decide) (by decide) (by decide) (by decide)]; exact hfr.2.2.1
  · rw [hset _ (by decide) (by decide) (by decide) (by decide) (by decide)]; exact hfr.2.2.2
  · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
      lk_set_ne _ _ (by decide), lk_set_self]
  · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
      lk_set_self]
  · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_self]
  · rw [lk_set_ne _ _ (by decide), lk_set_self]

theorem ins_ext (hC : X.code.lookup = guestCode) {vn vs vl vk : Option (ValueHOL 64)} {M : Mem}
    {N : BitVec 64} :
    Hoare σ X (fun t => AfterInv vn vs vl vk M N t ∧ M N = .word 2) insExt
      (KPost vn vs vl vk M) := by
  have hspec := (funSpec_of_funRet (funRet_cpl (σ := σ) hC)).and
    (funSpec_mw (σ := σ) (X := X) (by rw [hC]; exact cpl_mwClosed) cpl_mem)
  unfold insExt
  refine hoare_dec fun s _ ⟨hs, hk2⟩ vseg _ _ => ?_
  have hs1 := afterInv_set (other_of "seg") vseg hs
  refine hoare_conseq (P := fun t => t = setVarHOLFinite (nm "seg") vseg s) ?_ (fun _ _ h => h)
    (fun _ _ _ _ h => kpost_restore (other2_of "seg") _ h)
  refine hoare_dec fun s1 _ hs1' vsl hvsl _ => ?_
  subst hs1'
  -- `sl` is the word at `N + 40`
  obtain ⟨hfr1, e1, hN, _, hm1⟩ := hs1
  have hn1 : (setVarHOLFinite (nm "seg") vseg s).locals.lookup (nm "node") =
      some (.val (.word N)) := hfr1.1.trans e1
  obtain ⟨w40, hw40, -, rfl⟩ := ev_load_one hvsl
  rw [ev_add_cw hn1 40] at hw40
  cases hw40
  have hsl : (setVarHOLFinite (nm "seg") vseg s).memory (N + BitVec.ofNat 64 40) = M (N + 40) := by
    rw [hm1]; exact zero3_40 M N
  rw [hsl]
  have hs2 := afterInv_set (other_of "sl") (.val (M (N + 40))) ⟨hfr1, e1, hN, ‹_›, hm1⟩
  refine hoare_conseq (P := fun t => t = setVarHOLFinite (nm "sl") (.val (M (N + 40)))
      (setVarHOLFinite (nm "seg") vseg s)) ?_ (fun _ _ h => h)
    (fun _ _ _ _ h => kpost_restore (other2_of "sl") _ h)
  refine hoare_decCallS hspec fun s2 _ hs2' vs' hvs' callee v st hR _ _ => ?_
  subst hs2'
  obtain ⟨hRet, hmem⟩ := hR
  obtain ⟨A, C, al, bl, P, hvs, rfl, hPa, hPb⟩ := hRet _ rfl
  -- the arguments
  obtain ⟨v1, r1, rfl, -, h1⟩ := evs_cons_inv hvs'
  obtain ⟨v2, r2, rfl, h2, h2'⟩ := evs_cons_inv h1
  obtain ⟨v3, r3, rfl, -, h3'⟩ := evs_cons_inv h2'
  obtain ⟨v4, r4, rfl, h4, h4'⟩ := evs_cons_inv h3'
  simp only [evs, evalListHOLExact, Option.some.injEq] at h4'
  subst h4'
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨-, rfl, -, rfl⟩ := hvs
  rw [ev_lv, lk_set_self] at h2
  have hal : M (N + 40) = .word al := by
    simp only [Option.some.injEq, ValueHOL.val.injEq] at h2; exact h2
  obtain ⟨K, Lv, hK, hLv, rfl⟩ := ev_sub2_inv h4
  obtain ⟨hfr2, _, _, hgo2, hm2⟩ := hs2
  rw [ev_lv, hfr2.2.2.2] at hK
  rw [ev_lv, hfr2.2.2.1] at hLv
  -- the continuation state
  let t3 := setVarHOLFinite (nm "pl") (.val (.word P))
    { st with locals := (setVarHOLFinite (nm "sl") (.val (M (N + 40)))
      (setVarHOLFinite (nm "seg") vseg s)).locals }
  have ha3 : AfterInv vn vs vl vk M N t3 :=
    afterInv_set (other_of "pl") _ ⟨hfr2, e1, hN, hgo2, hmem.trans hm2⟩
  have hpl3 : t3.locals.lookup (nm "pl") = some (.val (.word P)) := lk_set_self _ _ _
  have hsl3 : t3.locals.lookup (nm "sl") = some (.val (.word al)) := by
    show (setVarHOLFinite (nm "pl") _ _).locals.lookup _ = _
    rw [lk_set_ne _ _ (by decide)]
    show (setVarHOLFinite (nm "sl") _ _).locals.lookup _ = _
    rw [lk_set_self, hal]
  refine hoare_conseq (P := fun t => t = t3) ?_ (fun _ _ h => h)
    (fun _ _ _ _ h => kpost_restore (other2_of "pl") _ h)
  refine hoare_ite ?_ ?_
  · -- `pl == sl`: descend
    intro t hctx ⟨ht, w, hw, hw0⟩
    subst ht
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
    rw [ev_lv, hpl3] at hx
    rw [ev_lv, hsl3] at hy
    cases hx; cases hy
    have hPal : P = al := equal_true hxy
    subst hPal
    exact ins_extDesc ha3 hLv hK hpl3 (Or.inr ⟨rfl, hk2, hal, hPb⟩) _ hctx rfl
  · -- split the extension: terminal
    exact hoare_term kp_insSplit fun t ⟨ht, _⟩ => by rw [ht]; exact ha3.2.2.2.1

/-! ## The branch case -/

theorem ins_brDesc {vn vs vl vk : Option (ValueHOL 64)} {M : Mem} {N Lv K : BitVec 64}
    {t1 : PanSemStateFiniteExact 64 σ} (ha : AfterInv vn vs vl vk M N t1)
    (hl : vl = some (.val (.word Lv))) (hk : vk = some (.val (.word K))) (hLK : Lv ≠ K)
    (hk2 : M N ≠ .word 2) {I : BitVec 64} (hidx : t1.locals.lookup (nm "idx") = some (.val (.word I))) :
    Hoare σ X (fun t => t = t1)
      (.seq (.assign .local (nm "r") (lv (nm "node")))
        (.seq (.assign .local (nm "next_node") (.load .one childAddr))
          (.seq (.assign .local (nm "next_slot") childAddr)
            (.seq (.assign .local (nm "next_level") (.op .add [lv (nm "level"), cw 1]))
              (.assign .local (nm "go") (cw 1))))))
      (KPost vn vs vl vk M) := by
  obtain ⟨hfr, e1, hN, _, hm⟩ := ha
  have hn1 : t1.locals.lookup (nm "node") = some (.val (.word N)) := hfr.1.trans e1
  -- the child address
  let A : BitVec 64 := N + (BitVec.ofNat 64 32 + I * BitVec.ofNat 64 8)
  have hA : ∀ s : PanSemStateFiniteExact 64 σ, s.locals.lookup (nm "node") = some (.val (.word N)) →
      s.locals.lookup (nm "idx") = some (.val (.word I)) → ev s childAddr = some (.val (.word A)) :=
    fun s h1 h2 => ev_add3 (ev_lw h1) (ev_cw _ 32) (ev_mul2 (ev_lw h2) (ev_cw _ 8))
  refine hoare_seq (R := fun r t => r = none ∧ t = setVarHOLFinite (nm "r") (.val (.word N)) t1)
    (hoare_assign_val (fun s hs => by subst hs; rw [ev_lv, hn1]) fun s hs => ⟨rfl, by rw [hs]⟩)
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  let s2 := setVarHOLFinite (nm "next_node") (.val (zero3 M N A))
    (setVarHOLFinite (nm "r") (.val (.word N)) t1)
  refine hoare_seq (R := fun r t => r = none ∧ t = s2) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_assign fun s _ ⟨_, hs⟩ v hv _ => ⟨rfl, ?_⟩
    subst hs
    obtain ⟨w, hw, -, rfl⟩ := ev_load_one hv
    rw [hA _ (by rw [lk_set_ne _ _ (by decide)]; exact hn1)
      (by rw [lk_set_ne _ _ (by decide)]; exact hidx)] at hw
    cases hw
    show setVarHOLFinite _ (ValueHOL.val (t1.memory A)) _ = s2
    rw [hm]
  let s3 := setVarHOLFinite (nm "next_slot") (.val (.word A)) s2
  refine hoare_seq (R := fun r t => r = none ∧ t = s3) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_assign_val (v := .val (.word A)) (fun s ⟨_, hs⟩ => ?_)
      (fun s ⟨_, hs⟩ => ⟨rfl, by rw [hs]⟩)
    subst hs
    exact hA _ (by rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hn1)
      (by rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hidx)
  let s4 := setVarHOLFinite (nm "next_level") (.val (.word (Lv + 1))) s3
  refine hoare_seq (R := fun r t => r = none ∧ t = s4) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_assign_val (v := .val (.word (Lv + 1))) (fun s ⟨_, hs⟩ => ?_)
      (fun s ⟨_, hs⟩ => ⟨rfl, by rw [hs]⟩)
    subst hs
    refine ev_add2 (ev_lw ?_) (ev_cw _ 1)
    rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]
    exact hfr.2.2.1.trans hl
  refine hoare_assign_val (v := .val (.word (BitVec.ofNat 64 1))) (fun s _ => ev_cw s 1)
    (fun s ⟨_, hs⟩ => Or.inl ⟨rfl, Or.inr ?_⟩)
  subst hs
  have hset : ∀ y, y ≠ nm "go" → y ≠ nm "next_level" → y ≠ nm "next_slot" → y ≠ nm "next_node" →
      y ≠ nm "r" → (setVarHOLFinite (nm "go") (.val (.word (BitVec.ofNat 64 1))) s4).locals.lookup y =
        t1.locals.lookup y := by
    intro y h1 h2 h3 h4 h5
    rw [lk_set_ne _ _ (Ne.symm h1), lk_set_ne _ _ (Ne.symm h2), lk_set_ne _ _ (Ne.symm h3),
      lk_set_ne _ _ (Ne.symm h4), lk_set_ne _ _ (Ne.symm h5)]
  have hoff : N + (A - N) = A := by bv_omega
  refine ⟨⟨?_, ?_, ?_, ?_⟩, N, Lv, K, A - N, 1, e1, hl, hk, hN, lk_set_self _ _ _, ?_, ?_, ?_, ?_,
    hm, Or.inl ⟨hLK, rfl, hk2⟩⟩
  · rw [hset _ (by decide) (by decide) (by decide) (by decide) (by decide)]; exact hfr.1
  · rw [hset _ (by decide) (by decide) (by decide) (by decide) (by decide)]; exact hfr.2.1
  · rw [hset _ (by decide) (by decide) (by decide) (by decide) (by decide)]; exact hfr.2.2.1
  · rw [hset _ (by decide) (by decide) (by decide) (by decide) (by decide)]; exact hfr.2.2.2
  · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
      lk_set_ne _ _ (by decide), lk_set_self]
  · rw [hoff, lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
      lk_set_self]
  · rw [hoff, lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_self]
  · rw [lk_set_ne _ _ (by decide), lk_set_self]

theorem ins_branch {vn vs vl vk : Option (ValueHOL 64)} {M : Mem} {N : BitVec 64} :
    Hoare σ X (fun t => AfterInv vn vs vl vk M N t ∧ M N ≠ .word 2) insBranch
      (KPost vn vs vl vk M) := by
  unfold insBranch
  refine hoare_ite (hoare_term kp_insBrEnd fun _ h => h.1.1.2.2.2.1) ?_
  intro s hs ⟨⟨ha, hk2⟩, hc⟩
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
  rw [ev_lv, ha.1.2.2.1] at hx
  rw [ev_lv, ha.1.2.2.2] at hy
  have hLK : x ≠ y := equal_false hxy
  have H : Hoare σ X (fun t => t = s) insBrDesc (KPost vn vs vl vk M) := by
    unfold insBrDesc
    refine hoare_dec fun s1 _ hs1 vidx hvidx _ => ?_
    subst hs1
    obtain ⟨I, rfl, -⟩ := ev_loadByte_word hvidx
    have ha1 := afterInv_set (other_of "idx") (.val (.word I)) ha
    refine hoare_conseq (P := fun t => t = setVarHOLFinite (nm "idx") (.val (.word I)) s1) ?_
      (fun _ _ h => h) (fun _ _ _ _ h => kpost_restore (other2_of "idx") _ h)
    exact ins_brDesc ha1 hx hy hLK hk2 (lk_set_self _ _ _)
  exact H s hs rfl

/-! ## The node -/

theorem ins_kinds (hC : X.code.lookup = guestCode) {vn vs vl vk : Option (ValueHOL 64)} {M : Mem}
    {N : BitVec 64} :
    Hoare σ X (fun t => AfterInv vn vs vl vk M N t ∧
        t.locals.lookup (nm "k") = some (.val (M N))) insKinds (KPost vn vs vl vk M) := by
  unfold insKinds
  refine hoare_ite (hoare_term kp_insLeaf fun _ h => h.1.1.2.2.2.1) (hoare_ite ?_ ?_)
  · refine hoare_pre (ins_ext hC) fun t _ ⟨⟨⟨ha, hk⟩, _⟩, w, hw, hw0⟩ => ⟨ha, ?_⟩
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
    rw [ev_lv, hk] at hx
    rw [ev_cw] at hy
    cases hy
    have := equal_true hxy
    simp only [Option.some.injEq, ValueHOL.val.injEq] at hx
    rw [hx, this]
    rfl
  · refine hoare_pre ins_branch fun t _ ⟨⟨⟨ha, hk⟩, _⟩, hc⟩ => ⟨ha, ?_⟩
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
    rw [ev_lv, hk] at hx
    rw [ev_cw] at hy
    cases hy
    have hx2 := equal_false hxy
    simp only [Option.some.injEq, ValueHOL.val.injEq] at hx
    rw [hx]
    intro e
    exact hx2 (HolWordLab.word.inj e)

theorem ins_node (hC : X.code.lookup = guestCode) {vn vs vl vk : Option (ValueHOL 64)} {M : Mem}
    {N : BitVec 64} :
    Hoare σ X (fun t => Fr vn vs vl vk t ∧ vn = some (.val (.word N)) ∧ N ≠ 0 ∧ GoZ t ∧
        t.memory = M) insNode (KPost vn vs vl vk M) := by
  unfold insNode
  refine hoare_dec fun s _ ⟨hfr, e1, hN, hgo, hm⟩ vk0 hvk0 _ => ?_
  obtain ⟨w, hw, -, rfl⟩ := ev_load_one hvk0
  rw [ev_add_cw (hfr.1.trans e1) 0] at hw
  cases hw
  have hN0 : N + BitVec.ofNat 64 0 = N := by simp
  rw [hN0, hm]
  refine hoare_conseq (P := fun t => t = setVarHOLFinite (nm "k") (.val (M N)) s) ?_
    (fun _ _ h => h) (fun _ _ _ _ h => kpost_restore (other2_of "k") _ h)
  refine hoare_guard_seq (funRet_mpt_fail hC) ?_
  refine hoare_seq (R := fun r t => r = none ∧ AfterInv vn vs vl vk M N t ∧
      t.locals.lookup (nm "k") = some (.val (M N))) ?_ (fun _ _ _ hr _ h => absurd h.1 hr)
    (hoare_pre (ins_kinds hC) fun _ _ h => h.2)
  refine hoare_callD (funSpec_node_invalidate hC) fun t _ ⟨ht, _⟩ vs' hvs' callee v st hR _ => ?_
  subst ht
  obtain ⟨N', hN', hmem, -⟩ := hR v rfl
  have hn : (setVarHOLFinite (nm "k") (.val (M N)) s).locals.lookup (nm "node") =
      some (.val (.word N)) := by rw [lk_set_ne _ _ (by decide)]; exact hfr.1.trans e1
  rw [evs_cons (by rw [ev_lv]; exact hn) evs_nil] at hvs'
  simp only [Option.some.injEq] at hvs'
  rw [← hvs'] at hN'
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hN'
  subst hN'
  refine ⟨rfl, ⟨fr_set (other_of "k") _ hfr, e1, hN, goZ_set (other_of "k") _ hgo, ?_⟩,
    lk_set_self _ _ _⟩
  show st.memory = _
  rw [hmem]
  show zero3 s.memory N = _
  rw [hm]

theorem ins_main (hC : X.code.lookup = guestCode) {vn vs vl vk : Option (ValueHOL 64)} {M : Mem} :
    Hoare σ X (fun t => Fr vn vs vl vk t ∧ GoZ t ∧ t.memory = M) insMain
      (KPost vn vs vl vk M) := by
  unfold insMain
  refine hoare_ite (hoare_term kp_insNewLeaf fun _ h => h.1.2.1) ?_
  refine fun s hs ⟨⟨hfr, hgo, hm⟩, hc⟩ => ?_
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
  rw [ev_cw] at hy
  cases hy
  have hx0 : x ≠ 0 := equal_false hxy
  rw [ev_lv, hfr.1] at hx
  exact ins_node hC s hs ⟨hfr, hx, hx0, hgo, hm⟩

/-! ## The loop body -/

theorem ins_step (hC : X.code.lookup = guestCode) {vn vs vl vk : Option (ValueHOL 64)} {M : Mem} :
    Hoare σ X (fun t => Fr vn vs vl vk t ∧ t.memory = M) insLoopBody
      (KP (StepPost vn vs vl vk M)) := by
  have hrest : ∀ {y : MlS}, Other y → ∀ (old : Option (ValueHOL 64)) r
      (t : PanSemStateFiniteExact 64 σ), KP (StepPost vn vs vl vk M) r t →
      KP (StepPost vn vs vl vk M) r { t with locals := t.locals.resVarEq (y, old) } :=
    fun hy old _ _ h => h.mono (stepPost_restore hy old)
  unfold insLoopBody
  refine hoare_dec fun s0 _ ⟨hfr0, hm0⟩ v0 _ _ => ?_
  refine hoare_conseq (P := fun t => Fr vn vs vl vk t ∧ t.memory = M) ?_
    (fun t _ ht => by subst ht; exact ⟨fr_set (other_of "r") _ hfr0, hm0⟩)
    (fun r t _ _ h => hrest (other_of "r") _ r t h)
  refine hoare_dec fun s1 _ ⟨hfr1, hm1⟩ v1 _ _ => ?_
  refine hoare_conseq (P := fun t => Fr vn vs vl vk t ∧ t.memory = M) ?_
    (fun t _ ht => by subst ht; exact ⟨fr_set (other_of "next_node") _ hfr1, hm1⟩)
    (fun r t _ _ h => hrest (other_of "next_node") _ r t h)
  refine hoare_dec fun s2 _ ⟨hfr2, hm2⟩ v2 _ _ => ?_
  refine hoare_conseq (P := fun t => Fr vn vs vl vk t ∧ t.memory = M) ?_
    (fun t _ ht => by subst ht; exact ⟨fr_set (other_of "next_slot") _ hfr2, hm2⟩)
    (fun r t _ _ h => hrest (other_of "next_slot") _ r t h)
  refine hoare_dec fun s3 _ ⟨hfr3, hm3⟩ v3 _ _ => ?_
  refine hoare_conseq (P := fun t => Fr vn vs vl vk t ∧ t.memory = M) ?_
    (fun t _ ht => by subst ht; exact ⟨fr_set (other_of "next_level") _ hfr3, hm3⟩)
    (fun r t _ _ h => hrest (other_of "next_level") _ r t h)
  unfold insInner
  refine hoare_seq (R := fun r t => r = none ∧ Fr vn vs vl vk t ∧ GoZ t ∧ t.memory = M) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_assign_val (v := .val (.word (BitVec.ofNat 64 0))) (fun s _ => ev_cw s 0)
      fun s ⟨hfr, hm⟩ => ⟨rfl, ?_, lk_set_self _ _ _, hm⟩
    have hgo : Other go_ → False := fun h => h.2.2.2.2 rfl
    refine ⟨?_, ?_, ?_, ?_⟩
    · rw [lk_set_ne _ _ (by decide)]; exact hfr.1
    · rw [lk_set_ne _ _ (by decide)]; exact hfr.2.1
    · rw [lk_set_ne _ _ (by decide)]; exact hfr.2.2.1
    · rw [lk_set_ne _ _ (by decide)]; exact hfr.2.2.2
  refine hoare_seq (hoare_pre (ins_main hC) fun _ _ h => h.2) (fun r t _ hr _ h => ?_) ?_
  · rcases h with ⟨rfl, -⟩ | ⟨v, rfl⟩
    · exact absurd rfl hr
    · exact Or.inr ⟨v, rfl⟩
  intro s hs h
  rcases h.none_of with hg | hd
  · intro ht; exact (ins_tail_term s hs hg ht).mono fun g => Or.inl g
  · intro ht; exact (ins_tail_desc s hs hd ht).mono fun d => Or.inr d

end InitECandidate.Solver.Spec.Mpt
