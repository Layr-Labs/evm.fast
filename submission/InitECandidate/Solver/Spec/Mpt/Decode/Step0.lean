import InitECandidate.Solver.Spec.Mpt.Decode.Pop

/-!
# Mode 0 of the decode loop: finish the top record

`wd_m0`: from the invariant in mode 0, the iteration ends in the invariant with a lower
measure: `top == 0` sets `go = 0` (measure `0`); otherwise the hash store into the result node,
then `wd_ext` (extension record: a fresh extension node, pop) or `wd_branch` (branch record:
the child slot store, then advance or finish and pop).
-/

namespace InitECandidate.Solver.Spec.Mpt.Dec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd)

/-- The tracked locals of `u` agree with those of `s`. -/
def Agree (s u : State σ) : Prop := ∀ x ∈ wdVars, u.locals.lookup x = s.locals.lookup x

theorem agree_set {s u : State σ} {y : MlS} (hy : wdVars.contains y = false) (v : ValueHOL 64)
    (h : Agree s u) : Agree s (setVarHOLFinite y v u) := fun x hx => by
  rw [lk_set_ne _ _ (Ne.symm (not_wdVar hy x hx))]; exact h x hx

theorem wordE_op (s : State σ) (o : BinOp) (es : List (ExpHOL 64)) :
    ∀ v, ev s (.op o es) = some v → ∃ x : BitVec 64, v = .val (.word x) := by
  intro v hv
  simp only [ev, evalHOLExact] at hv
  split at hv
  · split at hv
    · obtain ⟨w, -, rfl⟩ := Option.map_eq_some_iff.mp hv; exact ⟨w, rfl⟩
    · simp at hv
  · simp at hv

theorem less16 {I : BitVec 64} (hI : I.toNat < 16)
    (h : wordCmpHOL .less (I + BitVec.ofNat 64 1) (BitVec.ofNat 64 16) = true) :
    (I + BitVec.ofNat 64 1).toNat < 16 := by
  obtain ⟨n, hn, rfl⟩ : ∃ n, n < 16 ∧ I = BitVec.ofNat 64 n := ⟨I.toNat, hI, by simp⟩
  have key : ∀ n, n < 16 → wordCmpHOL .less (BitVec.ofNat 64 n + BitVec.ofNat 64 1)
      (BitVec.ofNat 64 16) = true → (BitVec.ofNat 64 n + BitVec.ofNat 64 1).toNat < 16 := by decide
  exact key n hn h

theorem toNat_lt_T {T R : BitVec 64} {k : Nat} (hk : R.toNat + k < T.toNat) (hT : T.toNat < 2 ^ 64) :
    (R + BitVec.ofNat 64 k).toNat = R.toNat + k := toNat_add_lt (by omega)

/-! ## The extension record -/

theorem wd_ext (hC : X.code.lookup = guestCode) {W : BitVec 64 → Nat → Mem → Prop} (hW : WFrame W)
    {DB : BitVec 64} {H sp0 k : Nat} {s : State σ} {p : Ptrs} {T R Mo S N G : BitVec 64} {U : Nat}
    (hp : ptrsOf s = some p) (hloc : WLoc DB T R Mo S N G s.locals) (hG : G ≠ 0) (hMo1 : Mo ≠ 1)
    (hMo2 : Mo ≠ 2) (hcore : WCore W DB H sp0 s.memory p T R Mo S N U)
    (hk : k = (p.sp - heapEnd) + wPot s.memory p.sp sp0 T + wdMode Mo + 1) (hT : T ≠ 0) :
    Hoare σ X (fun u => (Agree s u ∧ u.globals = s.globals) ∧ PopInv s.memory T sp0 U u.memory)
      wdExt (WPost W DB H sp0 k) := by
  have hcore' := hcore
  obtain ⟨hsp0, hHb, hWm, hord, hsp, hHU, hUhp, hch, -, -, -⟩ := hcore'
  obtain ⟨hhp, hesp⟩ := lt_heapEnd_sp hord
  obtain ⟨h1, h2, hrec, -⟩ := wChain_unfold hch hT
  have hT88 : T.toNat + 88 < 2 ^ 64 := by simp only [scratchEnd] at hsp0; omega
  have htopr := recW_top hrec
  have hsz : 32 ≤ arrSz s.memory T := by unfold arrSz; split <;> omega
  unfold wdExt
  refine hoare_guard_seq (funRet_mpt_fail hC) ?_
  refine hoare_dec fun u _ ⟨⟨⟨hA, hg⟩, hP⟩, _⟩ vck _ _ => ?_
  refine hoare_conseq (P := fun u' => (Agree s u' ∧ u'.globals = s.globals) ∧
      PopInv s.memory T sp0 U u'.memory) ?_
    (fun u' _ hu' => by subst hu'; exact ⟨⟨agree_set (by decide) _ hA, hg⟩, hP⟩)
    (fun r t _ _ h => wPost_restore (y := nm "ck") (by decide) _ h)
  unfold wdExtCk
  refine hoare_guard_seq (funRet_mpt_fail hC) ?_
  refine hoare_decCallS (freshFoot_node_new_ext hC) fun u _ ⟨⟨⟨hA, hg⟩, hP⟩, _⟩ vs _ callee v st hR _ _ => ?_
  have hpu : ptrsOf u = some p := (ptrsOf_frame hg).trans hp
  obtain ⟨p', hp', hord', hmono, hfresh, e, rfl, he1, he2⟩ := hR _ rfl p hpu hord trivial
  obtain ⟨m1, m2, m3⟩ := hmono
  obtain ⟨hhp', hesp'⟩ := lt_heapEnd_sp hord'
  have hP2 : PopInv s.memory T sp0 U st.memory :=
    popInv_fresh hP (q := p) (by omega) hsp0 h2 hUhp hfresh
  let F : State σ → Prop := fun t => Agree s t ∧ t.globals = st.globals ∧
    t.locals.lookup (nm "ex") = some (.val (.word e))
  have hF : MemFreeP F := fun t m h => h
  refine hoare_conseq (P := fun t => F t ∧ PopInv s.memory T sp0 U t.memory) ?_
    (fun t _ ht => by subst ht; exact ⟨⟨agree_set (by decide) _ hA, rfl, lk_set_self _ _ _⟩, hP2⟩)
    (fun r t _ _ h => wPost_restore (y := nm "ex") (by decide) _ h)
  unfold wdExtK
  have hstore : ∀ j : Nat, j < 56 → ∀ t, F t → ∀ A, ev t (.op .add [lv (nm "ex"), cw j]) =
      some (.val (.word A)) → A.toNat < T.toNat ∧ (A.toNat < heapBase ∨ U ≤ A.toNat) := by
    intro j hj t ht A hA
    rw [ev_add_cw ht.2.2] at hA
    cases hA
    rw [toNat_add_lt (by omega)]
    exact ⟨by omega, Or.inr (by omega)⟩
  refine hoare_seq_none (hoare_store_low hF hT88 (hstore 8 (by decide)) (fun t _ => wordE_ld t _)) ?_
  refine hoare_seq_none (hoare_store_low hF hT88 (hstore 16 (by decide)) (fun t _ => wordE_ld t _)) ?_
  have htopL : ∀ t, F t → t.locals.lookup (nm "top") = some (.val (.word T)) :=
    fun t ht => (ht.1 _ (by decide)).trans hloc.2.1
  refine hoare_seq_none (R' := fun t => (∀ x ∈ wdVars, x ≠ nm "top" →
      t.locals.lookup x = s.locals.lookup x) ∧ t.globals = st.globals ∧
      t.locals.lookup (nm "ex") = some (.val (.word e)) ∧
      t.locals.lookup (nm "top") = some (.val (.word (rd s.memory T))) ∧
      PopInv s.memory T sp0 U t.memory)
    (hoare_assign fun t _ ⟨⟨hA, hg, hex⟩, hP⟩ v hv _ => ⟨rfl, ?_⟩) ?_
  · have hv' := ev_ld (htopL t ⟨hA, hg, hex⟩) 0 v hv
    have e0 : rd t.memory (T + BitVec.ofNat 64 0) = rd s.memory T := by
      rw [rd_eq_of (hP.2 _ (by decide))]; simp
    rw [e0] at hv'
    subst hv'
    exact ⟨fun x hx hxt => by rw [lk_set_ne _ _ (Ne.symm hxt)]; exact hA x hx, hg,
      by rw [lk_set_ne _ _ (by decide)]; exact hex, lk_set_self _ _ _, hP⟩
  refine hoare_assign fun t _ ⟨hA, hg, hex, htop, hP⟩ v hv _ => ?_
  rw [ev_lv, hex] at hv
  cases hv
  refine close_pop hW hloc hG hMo1 hMo2 hcore hk hT ((ptrsOf_frame hg).trans hp') hord' m3 m1
    (fun x hx h1 h2 => by rw [lk_set_ne _ _ (Ne.symm h2)]; exact hA x hx h1)
    (by rw [lk_set_ne _ _ (by decide)]; exact htop) (lk_set_self _ _ _) ⟨by omega, by omega⟩ hP
    (by omega)

/-! ## The branch record -/

theorem wd_branch (hC : X.code.lookup = guestCode) {W : BitVec 64 → Nat → Mem → Prop} (hW : WFrame W)
    (hri : FreshFoot σ X (nm "rlp_item") (fun _ _ => True) (fun _ _ _ _ _ => True))
    {DB : BitVec 64} {H sp0 k : Nat} {s : State σ} {p : Ptrs} {T R Mo S N G : BitVec 64} {U : Nat}
    (hp : ptrsOf s = some p) (hloc : WLoc DB T R Mo S N G s.locals) (hG : G ≠ 0) (hMo1 : Mo ≠ 1)
    (hMo2 : Mo ≠ 2) (hcore : WCore W DB H sp0 s.memory p T R Mo S N U)
    (hk : k = (p.sp - heapEnd) + wPot s.memory p.sp sp0 T + wdMode Mo + 1) (hT : T ≠ 0)
    (hkind : rd s.memory (T + 8) ≠ 1) :
    Hoare σ X (fun u => (Agree s u ∧ u.globals = s.globals) ∧ PopInv s.memory T sp0 U u.memory)
      wdBranch (WPost W DB H sp0 k) := by
  have hcore' := hcore
  obtain ⟨hsp0, hHb, hWm, hord, hsp, hHU, hUhp, hch, -, -, -⟩ := hcore'
  obtain ⟨hhp, hesp⟩ := lt_heapEnd_sp hord
  obtain ⟨h1, h2, hrec, -⟩ := wChain_unfold hch hT
  have hT88 : T.toNat + 88 < 2 ^ 64 := by simp only [scratchEnd] at hsp0; omega
  obtain ⟨hA0, -, hBr⟩ := hrec
  obtain ⟨b1, b2, hI16, -⟩ := hBr hkind
  set BR := rd s.memory (T + 16)
  set ARR := rd s.memory (T + 24)
  set I := rd s.memory (T + 32)
  set V := ARR.toNat + 272
  have hARR : (rd s.memory (T + 24)).toNat = ARR.toNat := rfl
  have hVT : V ≤ T.toNat := by omega
  have htopS := hloc.2.1
  have hresS := hloc.2.2.1
  unfold wdBranch
  refine hoare_dec fun u _ ⟨⟨hA, hg⟩, hP⟩ vbr hvbr _ => ?_
  have hbr : vbr = .val (.word BR) := by
    rw [ev_ld ((hA _ (by decide)).trans htopS) 16 _ hvbr, rd_eq_of (hP.2 (BitVec.ofNat 64 16) (by decide))]
    rfl
  subst hbr
  refine hoare_conseq (P := fun u' => u' = setVarHOLFinite (nm "br") (.val (.word BR)) u) ?_
    (fun _ _ h => h) (fun r t _ _ h => wPost_restore (y := nm "br") (by decide) _ h)
  refine hoare_dec fun u1 _ hu1 vi hvi _ => ?_
  subst hu1
  have hi : vi = .val (.word I) := by
    have := ev_ld (s := setVarHOLFinite (nm "br") (.val (.word BR)) u)
      (by rw [lk_set_ne _ _ (by decide)]; exact (hA _ (by decide)).trans htopS) 32 _ hvi
    have e : (setVarHOLFinite (nm "br") (.val (.word BR)) u).memory = u.memory := rfl
    rw [this, e, rd_eq_of (hP.2 (BitVec.ofNat 64 32) (by decide))]
    rfl
  subst hi
  refine hoare_conseq (P := fun u' => u' = setVarHOLFinite (nm "i") (.val (.word I))
      (setVarHOLFinite (nm "br") (.val (.word BR)) u)) ?_
    (fun _ _ h => h) (fun r t _ _ h => wPost_restore (y := nm "i") (by decide) _ h)
  set u2 := setVarHOLFinite (nm "i") (.val (.word I)) (setVarHOLFinite (nm "br") (.val (.word BR)) u)
  have hA2 : Agree s u2 := agree_set (by decide) _ (agree_set (by decide) _ hA)
  have hbr2 : u2.locals.lookup (nm "br") = some (.val (.word BR)) := by
    rw [lk_set_ne _ _ (by decide), lk_set_self]
  have hi2 : u2.locals.lookup (nm "i") = some (.val (.word I)) := lk_set_self _ _ _
  unfold wdBrI
  -- the memory-free facts from here to the slot test
  let F : State σ → Prop := fun t => Agree s t ∧ t.globals = s.globals ∧
    t.locals.lookup (nm "br") = some (.val (.word BR)) ∧ t.locals.lookup (nm "i") = some (.val (.word I))
  have hF : MemFreeP F := fun t m h => h
  have htopF : ∀ t, F t → t.locals.lookup (nm "top") = some (.val (.word T)) :=
    fun t ht => (ht.1 _ (by decide)).trans htopS
  refine hoare_pre (P := fun t => F t ∧ PopInv s.memory T sp0 V t.memory) ?_
    (fun t _ ht => by subst ht; exact ⟨⟨hA2, hg, hbr2, hi2⟩, popInv_monoV hP (by omega)⟩)
  -- the child slot store
  refine hoare_seq_none (hoare_store_low hF hT88 (fun t ht A hA => ?_)
    (fun t ht => wordE_lw ((ht.1 _ (by decide)).trans hresS))) ?_
  · rw [ev_add3 (ev_lw ht.2.2.1) (ev_cw _ 32) (ev_mul2 (ev_lw ht.2.2.2) (ev_cw _ 8))] at hA
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hA
    subst hA
    have e : (BR + (BitVec.ofNat 64 32 + I * BitVec.ofNat 64 8)).toNat = BR.toNat + 32 + 8 * I.toNat := by
      rw [BitVec.toNat_add, BitVec.toNat_add, BitVec.toNat_mul]
      simp only [BitVec.toNat_ofNat]
      omega
    rw [e]
    exact ⟨by omega, Or.inr (by omega)⟩
  -- the occupancy count
  refine hoare_seq_none (R' := fun t => F t ∧ PopInv s.memory T sp0 V t.memory)
    (hoare_ite (hoare_pre (hoare_store_rec hF hT88 (by decide) (by decide) hVT htopF
      (fun t _ => wordE_op t _ _)) fun _ _ h => h.1)
      (hoare_skip fun _ _ h => ⟨rfl, h.1⟩)) ?_
  -- `i = i + 1`
  let F2 : State σ → Prop := fun t => Agree s t ∧ t.globals = s.globals ∧
    t.locals.lookup (nm "br") = some (.val (.word BR)) ∧
    t.locals.lookup (nm "i") = some (.val (.word (I + BitVec.ofNat 64 1)))
  have hF2 : MemFreeP F2 := fun t m h => h
  refine hoare_seq_none (R' := fun t => F2 t ∧ PopInv s.memory T sp0 V t.memory)
    (hoare_assign fun t _ ⟨⟨hA, hg, hb, hii⟩, hP⟩ v hv _ => ?_) ?_
  · rw [ev_add2 (ev_lw hii) (ev_cw _ 1)] at hv
    cases hv
    exact ⟨rfl, ⟨agree_set (by decide) _ hA, hg, by rw [lk_set_ne _ _ (by decide)]; exact hb,
      lk_set_self _ _ _⟩, hP⟩
  refine hoare_ite ?_ ?_
  · -- advance to the next slot
    intro t hctx ⟨⟨⟨hA, hg, hb, hii⟩, hP⟩, hc⟩
    obtain ⟨w, hw, hw0⟩ := hc
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
    rw [ev_lw hii] at hx; rw [ev_cw] at hy
    cases hx; cases hy
    have hI' := less16 hI16 hxy
    unfold wdAdv
    have htop' : t.locals.lookup (nm "top") = some (.val (.word T)) := (hA _ (by decide)).trans htopS
    refine (hoare_seq_eq (hoare_store_eq (ev_add_cw htop' 32) (ev_lw hii))
      (hoare_seq_eq (hoare_assign_eq (ev_lw hii)) (hoare_assign_fin (ev_cw _ 2) ?_))) t hctx rfl
    refine close_adv hW hloc hG hMo1 hMo2 hcore hk hT hkind ((ptrsOf_frame hg).trans hp) rfl hI'
      (fun x hx h1 h2 => ?_) ?_ (lk_set_self _ _ _) hP rfl
    · rw [lk_set_ne _ _ (Ne.symm h2), lk_set_ne _ _ (Ne.symm h1)]; exact hA x hx
    · rw [lk_set_ne _ _ (by decide), lk_set_self]; rfl
  · -- the last slot: the value item, and the pop
    intro t hctx ⟨⟨⟨hA, hg, hb, hii⟩, hP⟩, _⟩
    have htop' : t.locals.lookup (nm "top") = some (.val (.word T)) := (hA _ (by decide)).trans htopS
    refine (?_ : Hoare σ X (fun u => u = t) _ _) t hctx rfl
    unfold wdBrPop
    refine hoare_dec fun t1 _ ht1 va _ _ => ?_
    subst t1
    refine hoare_conseq (P := fun u' => u' = setVarHOLFinite (nm "arr2") va t) ?_
      (fun _ _ h => h) (fun r t _ _ h => wPost_restore (y := nm "arr2") (by decide) _ h)
    refine hoare_decCallS hri fun t2 _ ht2 vs _ callee v st hR _ hsh => ?_
    subst ht2
    have hpt : ptrsOf (setVarHOLFinite (nm "arr2") va t) = some p := (ptrsOf_frame hg).trans hp
    obtain ⟨p', hp', hord', hmono, hfresh, -⟩ := hR _ rfl p hpt hord trivial
    obtain ⟨m1, m2, m3⟩ := hmono
    have hP2 : PopInv s.memory T sp0 V st.memory :=
      popInv_fresh hP (q := p) (by omega) hsp0 h2 (by omega) hfresh
    obtain ⟨ws, hwl, rfl⟩ := eq_wv_of_shapeEq' (k := 4) hsh
    let Fz : State σ → Prop := fun t => Agree s t ∧ t.globals = st.globals ∧
      t.locals.lookup (nm "br") = some (.val (.word BR)) ∧
      t.locals.lookup (nm "bv") = some (wv ws)
    have hFz : MemFreeP Fz := fun t m h => h
    refine hoare_conseq (P := fun t => Fz t ∧ PopInv s.memory T sp0 V t.memory) ?_
      (fun t' _ ht' => by
        subst ht'
        exact ⟨⟨agree_set (by decide) _ (agree_set (by decide) _ hA), rfl,
          by rw [lk_set_ne _ _ (by decide)]; show (setVarHOLFinite _ _ t).locals.lookup _ = _
             rw [lk_set_ne _ _ (by decide)]; exact hb, lk_set_self _ _ _⟩, hP2⟩)
      (fun r t _ _ h => wPost_restore (y := nm "bv") (by decide) _ h)
    refine hoare_dec fun t3 _ ⟨⟨hA3, hg3, hb3, hbv3⟩, hP3⟩ vo _ _ => ?_
    refine hoare_conseq (P := fun t => Fz t ∧ PopInv s.memory T sp0 V t.memory) ?_
      (fun t' _ ht' => by
        subst ht'
        exact ⟨⟨agree_set (by decide) _ hA3, hg3, by rw [lk_set_ne _ _ (by decide)]; exact hb3,
          by rw [lk_set_ne _ _ (by decide)]; exact hbv3⟩, hP3⟩)
      (fun r t _ _ h => wPost_restore (y := nm "occ") (by decide) _ h)
    have hbvw : ∀ t, Fz t → ∀ (i : Nat) v, ev t (.rfield i (lv (nm "bv"))) = some v →
        ∃ x : BitVec 64, v = .val (.word x) := by
      intro t ht i v hv
      rw [ev_rfield (by rw [ev_lv]; exact ht.2.2.2)] at hv
      simp only [wv, List.getElem?_map] at hv
      obtain ⟨w, -, rfl⟩ := Option.map_eq_some_iff.mp hv
      exact ⟨w, rfl⟩
    have hstoreB : ∀ j : Nat, j < 176 → ∀ t, Fz t → ∀ A, ev t (.op .add [lv (nm "br"), cw j]) =
        some (.val (.word A)) → A.toNat < T.toNat ∧ (A.toNat < heapBase ∨ V ≤ A.toNat) := by
      intro j hj t ht A hA
      rw [ev_add_cw ht.2.2.1] at hA
      cases hA
      rw [toNat_add_lt (by omega)]
      exact ⟨by omega, Or.inr (by omega)⟩
    unfold wdOccK
    refine hoare_seq_none (R' := fun t => Fz t ∧ PopInv s.memory T sp0 V t.memory)
      (hoare_ite (hoare_pre ?_ fun _ _ h => h.1) (hoare_skip fun _ _ h => ⟨rfl, h.1⟩)) ?_
    · refine hoare_seq_none (hoare_store_low hFz hT88 (hstoreB 160 (by decide))
        (fun t ht => hbvw t ht 1)) ?_
      refine hoare_seq_none (hoare_store_low hFz hT88 (hstoreB 168 (by decide))
        (fun t ht => hbvw t ht 2)) ?_
      refine hoare_ite (hoare_assign fun t _ ⟨⟨⟨hA, hg, hb, hbv⟩, hP⟩, _⟩ v _ _ => ⟨rfl, ?_, ?_⟩)
        (hoare_skip fun _ _ h => ⟨rfl, h.1⟩)
      · exact ⟨agree_set (by decide) _ hA, hg, by rw [lk_set_ne _ _ (by decide)]; exact hb,
          by rw [lk_set_ne _ _ (by decide)]; exact hbv⟩
      · exact hP
    refine hoare_guard_seq (funRet_mpt_fail hC) ?_
    refine hoare_pre (P := fun t => Fz t ∧ PopInv s.memory T sp0 V t.memory) ?_ (fun _ _ h => h.1)
    unfold wdBrFin
    refine hoare_seq_none (hoare_store_low hFz hT88 (hstoreB 8 (by decide))
      (fun t _ => wordE_ld t _)) ?_
    refine hoare_seq_none (hoare_store_low hFz hT88 (hstoreB 16 (by decide))
      (fun t _ => wordE_ld t _)) ?_
    refine hoare_seq_none (R' := fun t => (∀ x ∈ wdVars, x ≠ nm "top" →
        t.locals.lookup x = s.locals.lookup x) ∧ t.globals = st.globals ∧
        t.locals.lookup (nm "br") = some (.val (.word BR)) ∧
        t.locals.lookup (nm "top") = some (.val (.word (rd s.memory T))) ∧
        PopInv s.memory T sp0 V t.memory)
      (hoare_assign fun t _ ⟨⟨hA, hg, hb, hbv⟩, hP⟩ v hv _ => ⟨rfl, ?_⟩) ?_
    · have hv' := ev_ld ((hA _ (by decide)).trans htopS) 0 v hv
      have e0 : rd t.memory (T + BitVec.ofNat 64 0) = rd s.memory T := by
        rw [rd_eq_of (hP.2 _ (by decide))]; simp
      rw [e0] at hv'
      subst hv'
      exact ⟨fun x hx hxt => by rw [lk_set_ne _ _ (Ne.symm hxt)]; exact hA x hx, hg,
        by rw [lk_set_ne _ _ (by decide)]; exact hb, lk_set_self _ _ _, hP⟩
    refine hoare_assign fun t _ ⟨hA, hg, hb, htop, hP⟩ v hv _ => ?_
    rw [ev_lv, hb] at hv
    cases hv
    refine close_pop hW hloc hG hMo1 hMo2 hcore hk hT ((ptrsOf_frame hg).trans hp') hord' m3 m1
      (fun x hx h1 h2 => by rw [lk_set_ne _ _ (Ne.symm h2)]; exact hA x hx h1)
      (by rw [lk_set_ne _ _ (by decide)]; exact htop) (lk_set_self _ _ _) ⟨by omega, by omega⟩ hP
      (by omega)

/-! ## Mode 0 -/

theorem wd_m0 (hC : X.code.lookup = guestCode) {W : BitVec 64 → Nat → Mem → Prop} (hW : WFrame W)
    (hri : FreshFoot σ X (nm "rlp_item") (fun _ _ => True) (fun _ _ _ _ _ => True))
    {DB : BitVec 64} {H sp0 k : Nat} :
    Hoare σ X (fun s => ∃ (p : Ptrs) (T R Mo S N G : BitVec 64) (U : Nat), ptrsOf s = some p ∧
        WLoc DB T R Mo S N G s.locals ∧ G ≠ 0 ∧ Mo ≠ 1 ∧ Mo ≠ 2 ∧
        WCore W DB H sp0 s.memory p T R Mo S N U ∧
        k = (p.sp - heapEnd) + wPot s.memory p.sp sp0 T + wdMode Mo + 1)
      wdM0 (WPost W DB H sp0 k) := by
  unfold wdM0
  refine hoare_ite ?_ ?_
  · -- `top == 0`: the loop ends
    intro s hs ⟨⟨p, T, R, Mo, S, N, G, U, hp, hloc, hG, hMo1, hMo2, hcore, hk⟩, hc⟩
    refine hoare_assign_fin (s0 := s) (ev_cw _ 0) ?_ s hs rfl
    intro _
    obtain ⟨hdb, htop, hres, hmode, hsl, hcn, -⟩ := hloc
    refine ⟨⟨p, T, R, Mo, S, N, BitVec.ofNat 64 0, U, (ptrsOf_frame rfl).trans hp,
      ⟨by rw [lk_set_ne _ _ (by decide)]; exact hdb, by rw [lk_set_ne _ _ (by decide)]; exact htop,
        by rw [lk_set_ne _ _ (by decide)]; exact hres, by rw [lk_set_ne _ _ (by decide)]; exact hmode,
        fun h => by rw [lk_set_ne _ _ (by decide)]; exact hsl h,
        fun h => ⟨by rw [lk_set_ne _ _ (by decide)]; exact (hcn h).1,
          by rw [lk_set_ne _ _ (by decide)]; exact (hcn h).2⟩, lk_set_self _ _ _⟩, hcore⟩, ?_⟩
    have h0 := wdMu_go0 (sp0 := sp0)
      (s := setVarHOLFinite (nm "go") (.val (.word (BitVec.ofNat 64 0))) s) (lk_set_self _ _ _)
    rw [h0, hk]
    omega
  · intro s hs ⟨⟨p, T, R, Mo, S, N, G, U, hp, hloc, hG, hMo1, hMo2, hcore, hk⟩, hc⟩
    have hT : T ≠ 0 := by have := ne_of_else (ev_lw hloc.2.1) hc; simpa using this
    have hcore' := hcore
    obtain ⟨hsp0, hHb, hWm, hord, hsp, hHU, hUhp, hch, hres0, -, -⟩ := hcore'
    obtain ⟨hhp, hesp⟩ := lt_heapEnd_sp hord
    obtain ⟨h1, h2, hrec, -⟩ := wChain_unfold hch hT
    have hT88 : T.toNat + 88 < 2 ^ 64 := by simp only [scratchEnd] at hsp0; omega
    refine (?_ : Hoare σ X (fun u => u = s) _ _) s hs rfl
    refine hoare_dec fun s' _ hs' vh hvh _ => ?_
    subst hs'
    rw [ev_ld hloc.2.1 80 _ hvh]
    set HS := rd s'.memory (T + BitVec.ofNat 64 80)
    let F : State σ → Prop := fun t => Agree s' t ∧ t.globals = s'.globals ∧
      t.locals.lookup (nm "hash") = some (.val (.word HS))
    have hF : MemFreeP F := fun t m h => h
    refine hoare_conseq (P := fun t => F t ∧ PopInv s'.memory T sp0 U t.memory) ?_
      (fun t _ ht => by subst ht; exact ⟨⟨agree_set (by decide) _ (fun _ _ => rfl), rfl,
        lk_set_self _ _ _⟩, popInv_refl _ _ _ _⟩)
      (fun r t _ _ h => wPost_restore (y := nm "hash") (by decide) _ h)
    unfold wdPopK
    refine hoare_seq_none (R' := fun t => F t ∧ PopInv s'.memory T sp0 U t.memory)
      (hoare_ite (hoare_pre (hoare_store_low hF hT88 (fun t ht A hA => ?_)
          (fun t ht => wordE_lw ht.2.2)) fun _ _ h => h.1)
        (hoare_skip fun _ _ h => ⟨rfl, h.1⟩)) ?_
    · rw [ev_add_cw ((ht.1 _ (by decide)).trans hloc.2.2.1)] at hA
      cases hA
      rcases hres0 hMo1 hMo2 with e | ⟨e1, e2⟩
      · subst e
        have : (0 + BitVec.ofNat 64 24 : BitVec 64).toNat = 24 := rfl
        rw [this]
        have hE24 : (24 : Nat) < heapEnd := by decide
        have hB24 : (24 : Nat) < heapBase := by decide
        exact ⟨by omega, Or.inl hB24⟩
      · rw [toNat_add_lt (by omega)]
        exact ⟨by omega, Or.inr (by omega)⟩
    · refine hoare_ite ?_ ?_
      · intro t hctx ⟨⟨⟨hA, hg, _⟩, hP⟩, _⟩
        exact wd_ext hC hW hp hloc hG hMo1 hMo2 hcore hk hT t hctx ⟨⟨hA, hg⟩, hP⟩
      · intro t hctx ⟨⟨⟨hA, hg, _⟩, hP⟩, hc⟩
        have hk1 := ld_else ((hA _ (by decide)).trans hloc.2.1) hc
        rw [rd_eq_of (hP.2 (BitVec.ofNat 64 8) (by decide))] at hk1
        exact wd_branch hC hW hri hp hloc hG hMo1 hMo2 hcore hk hT (by simpa using hk1) t hctx
          ⟨⟨hA, hg⟩, hP⟩

end InitECandidate.Solver.Spec.Mpt.Dec
