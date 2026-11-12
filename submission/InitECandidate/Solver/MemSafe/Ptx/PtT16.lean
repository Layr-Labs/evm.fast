import InitECandidate.Solver.MemSafe.Ptx.PtT15

/-!
# F3g: the second part of the tail, piece 1: the receipt slice stores, `nl`, `lp`, `i = 0` (`ptS148` to `ptS155`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

/-- The tracked locals after the receipt call. -/
def En3 (K : TlCtx σ) (lw rp rl : BitVec 64) : Env :=
  ((EnT0 K).set (nm "logs") (.val (.word lw))).set (nm "rc") (wv [rp, rl])

theorem en3_rc (K : TlCtx σ) (lw rp rl : BitVec 64) : En3 K lw rp rl (nm "rc") = some (wv [rp, rl]) :=
  env_set_self _ _ _

theorem en3_none (K : TlCtx σ) (lw rp rl : BitVec 64) {x : MlS} (h1 : x ≠ nm "index") (h2 : x ≠ nm "sender")
    (h3 : x ≠ nm "out") (h4 : x ≠ nm "logs") (h5 : x ≠ nm "rc") : En3 K lw rp rl x = none := by
  unfold En3
  rw [env_set_ne _ _ h5]
  exact enL_none K _ h1 h2 h3 h4

theorem en3_index (K : TlCtx σ) (lw rp rl : BitVec 64) :
    En3 K lw rp rl (nm "index") = some (.val (.word K.E.idx)) := by
  unfold En3
  rw [env_set_ne _ _ (by decide), env_set_ne _ _ (by decide)]
  exact enT0_index K

theorem en3_logs (K : TlCtx σ) (lw rp rl : BitVec 64) :
    En3 K lw rp rl (nm "logs") = some (.val (.word lw)) := by
  unfold En3
  rw [env_set_ne _ _ (by decide)]
  exact env_set_self _ _ _

section tb1
variable {K : TlCtx σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj}

/-- The first receipt-slice cell: `rcs[idx]`. -/
theorem wt_c1 (K : TlCtx σ) : K.Wt (K.E.rcs + K.E.idx * 16) := Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))
theorem wt_c2 (K : TlCtx σ) : K.Wt (K.E.rcs + K.E.idx * 16 + 8) := Or.inr (Or.inr (Or.inr (Or.inr (Or.inr rfl))))

/-- The receipt slice cells are not kept by `LgOut`'s cell set. -/
theorem lgOut_nz {lw : BitVec 64} (hL : LgOut K ref Z O lw) {c : BitVec 64} (hc : K.Wt c) : ¬ Z c := by
  intro hz
  rcases hL.hsub c hz with h | h | h
  · exact h.2 hc
  · exact (hL.hdis c hc).1 h
  · exact (hL.hdis c hc).2 h

section rcs
variable {En : Env} {rp rl lw : BitVec 64}

theorem rcs_read {s : State σ} {Γ : Gam} {p : Ptrs} (hr : TlS K.A ref Z O s Γ p) (hP : TlPre K)
    (hb32 : Z (K.E.bo + BitVec.ofNat 64 32) ∧ ref (K.E.bo + BitVec.ofNat 64 32) = K.E.rcs) :
    EvI s (.load .one (.op .add [gv (nm "bo"), cw 32])) (.val (.word K.E.rcs)) := by
  have h := evI_ld (evI_add (evI_gv (tl_glob_bo hr hP.B.hbo)) (evI_cw s 32))
  have e : rd s.memory (K.E.bo + BitVec.ofNat 64 32) = K.E.rcs := by rw [hr.keep _ hb32.1]; exact hb32.2
  rw [e] at h
  exact h

/-- **`st rcs[idx], rc.0`** (`ptS150`): `rcs[idx]` is kept with the value `rp` afterwards. -/
theorem hn_st_rcs1 (hP : TlPre K) (hb32 : Z (K.E.bo + BitVec.ofNat 64 32) ∧ ref (K.E.bo + BitVec.ofNat 64 32) = K.E.rcs)
    (hnz : ¬ Z (K.E.rcs + K.E.idx * 16)) (hix : En (nm "index") = some (.val (.word K.E.idx)))
    (hrc : En (nm "rc") = some (wv [rp, rl])) :
    HN (PAg (TL K.A ref Z O) En) ptS150
      (PAg (TL K.A (fun a => if a = K.E.rcs + K.E.idx * 16 then rp else ref a)
        (fun a => Z a ∨ a = K.E.rcs + K.E.idx * 16) O) En) := by
  unfold ptS150
  refine hn_stGenX (c := K.E.rcs + K.E.idx * 16) (x := rp) ?_
  intro s Γ p hr hpa w v hw hv
  have h1 := evI_add (rcs_read hr hP hb32) (evI_mul (evI_lv (hpa.2 _ _ hix)) (evI_cw s 16))
  have hw' := h1 _ hw
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hw'
  have hv' := (evI_rf (evI_lv (hpa.2 _ _ hrc)) (i := 0) (by simp)) v hv
  simp only [List.getElem_cons_zero] at hv'
  obtain ⟨M, hM, hMt, k, hk, hp, hcM⟩ := wset_cellB hP.B hr.ext (K.wt_wset (wt_c1 K))
  refine ⟨hw', hv', hnz, ?_, M, hM, block_heap hMt, guestSt_block hMt, k, hk, hp, hcM⟩
  rw [hcM]
  exact D0.G_st_block hr.hG hM hMt hk hp rp

/-- **`st rcs[idx] + 8, rc.1`** (`ptS152`). -/
theorem hn_st_rcs2 (hP : TlPre K) (hb32 : Z (K.E.bo + BitVec.ofNat 64 32) ∧ ref (K.E.bo + BitVec.ofNat 64 32) = K.E.rcs)
    (hnz : ¬ Z (K.E.rcs + K.E.idx * 16 + 8)) (hix : En (nm "index") = some (.val (.word K.E.idx)))
    (hrc : En (nm "rc") = some (wv [rp, rl])) :
    HN (PAg (TL K.A ref Z O) En) ptS152
      (PAg (TL K.A (fun a => if a = K.E.rcs + K.E.idx * 16 + 8 then rl else ref a)
        (fun a => Z a ∨ a = K.E.rcs + K.E.idx * 16 + 8) O) En) := by
  unfold ptS152
  refine hn_stGenX (c := K.E.rcs + K.E.idx * 16 + 8) (x := rl) ?_
  intro s Γ p hr hpa w v hw hv
  have h1 := evI_add3 (rcs_read hr hP hb32) (evI_mul (evI_lv (hpa.2 _ _ hix)) (evI_cw s 16)) (evI_cw s 8)
  have hw' := h1 _ hw
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hw'
  have hw'' : w = K.E.rcs + K.E.idx * 16 + 8 := by rw [hw', BitVec.add_assoc]; rfl
  have hv' := (evI_rf (evI_lv (hpa.2 _ _ hrc)) (i := 1) (by simp)) v hv
  simp only [List.getElem_cons_succ, List.getElem_cons_zero] at hv'
  obtain ⟨M, hM, hMt, k, hk, hp, hcM⟩ := wset_cellB hP.B hr.ext (K.wt_wset (wt_c2 K))
  refine ⟨hw'', hv', hnz, ?_, M, hM, block_heap hMt, guestSt_block hMt, k, hk, hp, hcM⟩
  rw [hcM]
  exact D0.G_st_block hr.hG hM hMt hk hp rl

end rcs

theorem bv_add8_ne (x : BitVec 64) : x + 8 ≠ x := by
  intro h
  have h1 := congrArg BitVec.toNat h
  rw [BitVec.toNat_add] at h1
  have h8 : (8 : BitVec 64).toNat = 8 := rfl
  rw [h8] at h1
  have := x.isLt
  omega

/-- `ptS148` to `ptS155`: the two receipt-slice stores, `nl`, `lp`, `i = 0`. -/
theorem tb1 {lw rp rl : BitVec 64} {QT : Option (PanSemResultExact 64) → State σ → Prop} (hP : TlPre K)
    (hQT : LocIns QT) (hL : LgOut K ref Z O lw)
    (hb32 : Z (K.E.bo + BitVec.ofNat 64 32) ∧ ref (K.E.bo + BitVec.ofNat 64 32) = K.E.rcs)
    (hk : ∀ (ref2 : BitVec 64 → BitVec 64) (Z2 : BitVec 64 → Prop) (nlw : BitVec 64),
      (∀ a, Z a → Z2 a ∧ ref2 a = ref a) → (∀ a, Z2 a → Z a ∨ a = K.E.rcs + K.E.idx * 16 ∨ a = K.E.rcs + K.E.idx * 16 + 8) →
      (Z2 (K.E.rcs + K.E.idx * 16) ∧ ref2 (K.E.rcs + K.E.idx * 16) = rp) →
      (Z2 (K.E.rcs + K.E.idx * 16 + 8) ∧ ref2 (K.E.rcs + K.E.idx * 16 + 8) = rl) →
      nlw = ref (lw + 8) →
      Hoare σ guestCtx (PAg (TL K.A ref2 Z2 O) ((En3 K lw rp rl).set (nm "nl") (.val (.word nlw)))) ptS155 QT) :
    Hoare σ guestCtx (PAg (TL K.A ref Z O) (En3 K lw rp rl)) ptS148 QT := by
  have hn1 := lgOut_nz hL (wt_c1 K)
  have hn2 := lgOut_nz hL (wt_c2 K)
  have hne12 : K.E.rcs + K.E.idx * 16 + 8 ≠ K.E.rcs + K.E.idx * 16 := bv_add8_ne _
  have hZne : ∀ a, Z a → a ≠ K.E.rcs + K.E.idx * 16 ∧ a ≠ K.E.rcs + K.E.idx * 16 + 8 :=
    fun a ha => ⟨fun e => hn1 (e ▸ ha), fun e => hn2 (e ▸ ha)⟩
  unfold ptS148
  refine hseqN (hn_st_rcs1 hP hb32 hn1 (en3_index K lw rp rl) (en3_rc K lw rp rl)) ?_
  unfold ptS149
  have hb32' : (Z (K.E.bo + BitVec.ofNat 64 32) ∨ K.E.bo + BitVec.ofNat 64 32 = K.E.rcs + K.E.idx * 16) ∧
      (fun a => if a = K.E.rcs + K.E.idx * 16 then rp else ref a) (K.E.bo + BitVec.ofNat 64 32) = K.E.rcs := by
    refine ⟨Or.inl hb32.1, ?_⟩
    simp only [if_neg (hZne _ hb32.1).1]
    exact hb32.2
  refine hseqN (hn_st_rcs2 hP hb32' ?_ (en3_index K lw rp rl) (en3_rc K lw rp rl)) ?_
  · rintro (h | h)
    · exact hn2 h
    · exact hne12 h
  have hB := bloc_tl K.A (fun a => if a = K.E.rcs + K.E.idx * 16 + 8 then rl else
    (fun a => if a = K.E.rcs + K.E.idx * 16 then rp else ref a) a)
    (fun a => (Z a ∨ a = K.E.rcs + K.E.idx * 16) ∨ a = K.E.rcs + K.E.idx * 16 + 8) (O := O)
  unfold ptS151
  refine hdecT_g hB (locIns_resIns hQT _) (w := ref (lw + 8)) ?_ ?_
  · intro s hpa v hv
    obtain ⟨⟨Γ, p, hr⟩, hlk⟩ := hpa
    have h1 := evI_ld (evI_add (evI_lv (hlk _ _ (en3_logs K lw rp rl))) (evI_cw s 8))
    have h2 := h1 v hv
    have hk8 := hL.rd8 _ _ s Γ p hr (fun a ha => ⟨Or.inl (Or.inl ha), by
      simp only [if_neg (hZne a ha).2, if_neg (hZne a ha).1]⟩)
    show v = .val (.word (ref (lw + 8)))
    rw [h2]
    show ValueHOL.val (HolWordLab.word (rd s.memory (lw + 8))) = _
    rw [hk8]
  unfold ptS153
  refine hdecF_g hB (locIns_resIns hQT _) ?_ ?_
  · rw [env_set_ne _ _ (by decide)]
    exact en3_none K lw rp rl (by decide) (by decide) (by decide) (by decide) (by decide)
  unfold ptS154
  refine hseqN (hassignF_g hB ?_) ?_
  · rw [env_set_ne _ _ (by decide)]
    exact en3_none K lw rp rl (by decide) (by decide) (by decide) (by decide) (by decide)
  refine hk _ _ (ref (lw + 8)) (fun a ha => ⟨Or.inl (Or.inl ha), ?_⟩) ?_ ⟨Or.inl (Or.inr rfl), ?_⟩ ⟨Or.inr rfl, ?_⟩ rfl
  · simp only [if_neg (hZne a ha).2, if_neg (hZne a ha).1]
  · intro a ha
    rcases ha with (ha | ha) | ha
    · exact Or.inl ha
    · exact Or.inr (Or.inl ha)
    · exact Or.inr (Or.inr ha)
  · simp only [if_neg hne12.symm, if_true]
  · simp only [if_true]

end tb1

end InitECandidate.Solver.MemSafe.Ptx
