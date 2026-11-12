import InitECandidate.Solver.MemSafe.Ptx.PtP2

/-!
# F3f: `msg_new` and the first stores into the message block (`ptS79` to `ptS87`)
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

theorem evI_ldtx {E : PtE σ} {En : Env} {S : FS} (hP : PtPre E) (htx : En (nm "tx") = some (.val (.word E.tx)))
    {off : Nat} (h8 : off % 8 = 0) (hN : off + 8 ≤ 400) :
    ∀ s : State σ, PA E En S s →
      EvI s (.load .one (.op .add [lv (nm "tx"), cw off]))
        (.val (.word (rd E.s0.memory (E.tx + BitVec.ofNat 64 off)))) := by
  intro s hpa
  obtain ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩ := hpa
  have hpa : PA E En S s := ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩
  have := evI_ld (evI_add (evI_lv (hpa.2 _ _ htx)) (evI_cw s off))
  rw [rd_tx hP hr hD h8 hN] at this
  exact this

theorem msk_of_adk {E : PtE σ} {En : Env} {S : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w wt wa ak nv nkv : BitVec 64} {nbl : Nat}
    (K : AdK E En S rp rl buf n CV w wt wa ak nv nkv nbl)
    (hrd : RdIn S [Fct.arrbuf wa nbl (nv.toNat + 1) 20, Fct.arrbuf wa nbl 1 20]) (wm : BitVec 64) :
    MsK E (En.set (nm "m") (.val (.word wm)))
      (addF S [Fct.fbuf wm 176, Fct.prop (BlkP wm 176), Fct.prop (wa.toNat + nbl ≤ wm.toNat)])
      rp rl buf n CV w wt wa ak nv nkv wm nbl [] := by
  have hL : ∀ X ∈ [Fct.fbuf wm 176, Fct.prop (BlkP wm 176), Fct.prop (wa.toNat + nbl ≤ wm.toNat)],
      (∀ g ty, X ≠ Fct.gobj g ty) ∧ (∀ a v, X ≠ Fct.cellv a v) ∧ (∀ y, ¬ X.reads y) := by
    intro X hX; simp at hX; rcases hX with rfl | rfl | rfl <;> simp [Fct.reads]
  refine ⟨adk_setF K (x := nm "m") (by decide) (by unfold AdV; decide) (.val (.word wm)) _
    (fun X hX => ⟨(hL X hX).1, (hL X hX).2.1⟩), env_set_self _ _ _, Or.inr (by simp), Or.inr (by simp),
    Or.inr (by simp), fun p hp => absurd hp (by simp), ?_, fun x hx => absurd hx (by simp)⟩
  have := rdin_nr hrd (L := [Fct.fbuf wm 176, Fct.prop (BlkP wm 176), Fct.prop (wa.toNat + nbl ≤ wm.toNat)])
    (fun X hX => (hL X hX).2.2)
  simpa [MR] using this

theorem hlen_gv_be {E : PtE σ} {En : Env} {S : FS} (hP : PtPre E) :
    ∀ s : State σ, PA E En S s → ∀ v, ev s (gv (nm "be")) = some v → (flattenHOL v).length = 1 := by
  intro s hpa v hv
  obtain ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩ := hpa
  have := evI_gv (be_lookup hP hr) v hv
  subst this
  exact len_word _

theorem hn_c9_one {E : PtE σ} {En : Env} {S : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w wt wa ak nv nkv wm : BitVec 64} {nbl : Nat} {L : List (Nat × BitVec 64)}
    (K : MsK E En S rp rl buf n CV w wt wa ak nv nkv wm nbl L) {off : Nat} {e : ExpHOL 64} {x : BitVec 64}
    (he : ∀ s : State σ, PA E En S s → EvI s e (.val (.word x)))
    (hoff : off % 8 = 0) (hk : off + 8 ≤ 176) (hnr : ∀ p ∈ L, p.1 + 8 ≤ off ∨ off + 8 ≤ p.1) :
    HN (PA E En S) (.store (.op .add [lv (nm "m"), cw off]) e)
      (PA E En (addF S [Fct.memw (wm + BitVec.ofNat 64 off) x])) := hn_stMsR K he hoff hk hnr

/-- `ptS79` to `ptS87`: `msg_new` and the stores `m[0]` .. `m[56]`. -/
theorem pt_c9 {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)} {w wt wa ak nv nkv : BitVec 64} {nbl : Nat}
    (hP : PtPreX E) (hQT : LocIns QT) (K : AdK E En S rp rl buf n CV w wt wa ak nv nkv nbl)
    (hrd : RdIn S [Fct.arrbuf wa nbl (nv.toNat + 1) 20, Fct.arrbuf wa nbl 1 20])
    (hk : ∀ (En' : Env) (S' : FS) (wm mg : BitVec 64), En' (nm "mgas") = some (.val (.word mg)) →
      S' (Fct.prop (mg.toNat ≤ 2 ^ 24)) →
      MsK E En' S' rp rl buf n CV w wt wa ak nv nkv wm nbl [(40, mg), (24, rd E.s0.memory (E.tx + BitVec.ofNat 64 152)), (16, w), (8, wt)] →
      Hoare σ guestCtx (PA E En' S') ptS87 QT) :
    Hoare σ guestCtx (PA E En S) ptS79 QT := by
  obtain ⟨mg, hmgE, hmgS⟩ := K.hmg
  obtain ⟨rs, hrsE⟩ := K.hrs
  have hPB : ∀ b ∈ [(wa, nbl)], S (Fct.fbuf b.1 b.2) ∧ S (Fct.prop (BlkP b.1 b.2)) ∧ b.2 % 8 = 0 ∧ 0 < b.2 := by
    intro b hb
    simp at hb; subst hb
    refine ⟨K.hfba, K.hppa, ?_, ?_⟩ <;> rw [K.hnbl] <;> omega
  unfold ptS79
  refine hdecNewP (locIns_resIns hQT _) mn_spec mn_fin (by norm_num) (by norm_num) (by norm_num) []
    (by simp) (fun g ty h => (K.C0.gl g ty h).1) [(wa, nbl)] hPB ?_
  intro wm
  have M0 := msk_of_adk K hrd wm
  have e_mg : (En.set (nm "m") (.val (.word wm))) (nm "mgas") = some (.val (.word mg)) := by
    rw [env_set_ne _ _ (by decide)]; exact hmgE
  have e_rs : (En.set (nm "m") (.val (.word wm))) (nm "reservoir") = some (.val (.word rs)) := by
    rw [env_set_ne _ _ (by decide)]; exact hrsE
  have e_mgS : (addF S [Fct.fbuf wm 176, Fct.prop (BlkP wm 176), Fct.prop (wa.toNat + nbl ≤ wm.toNat)])
      (Fct.prop (mg.toNat ≤ 2 ^ 24)) := Or.inl hmgS
  unfold ptS80
  refine hseqN (hn_stMs M0 (off := 0) (k := 1) (hlen_gv_be hP.toPtPre) (by norm_num) (by norm_num) (by simp)) ?_
  unfold ptS81
  refine hseqN (hn_c9_one M0 (off := 8) (x := wt) (fun s hpa => evI_lv (hpa.2 _ _ M0.A.hte)) (by norm_num)
    (by norm_num) (by simp)) ?_
  have M1 := msk_addM M0 (off := 8) (x := wt) (by norm_num) (by norm_num)
  unfold ptS82
  refine hseqN (hn_c9_one M1 (off := 16) (x := w) (fun s hpa => evI_lv (hpa.2 _ _ M1.A.C0.sd)) (by norm_num)
    (by norm_num) (by simp)) ?_
  have M2 := msk_addM M1 (off := 16) (x := w) (by norm_num) (by norm_num)
  unfold ptS83
  refine hseqN (hn_c9_one M2 (off := 24) (x := rd E.s0.memory (E.tx + BitVec.ofNat 64 152))
    (evI_ldtx hP.toPtPre M2.A.C0.tx (by norm_num) (by norm_num)) (by norm_num) (by norm_num) (by simp)) ?_
  have M2' := msk_addM M2 (off := 24) (x := rd E.s0.memory (E.tx + BitVec.ofNat 64 152)) (by norm_num) (by norm_num)
  unfold ptS84
  refine hseqN (hn_c9_one M2' (off := 40) (x := mg) (fun s hpa => evI_lv (hpa.2 _ _ e_mg)) (by norm_num)
    (by norm_num) (by simp)) ?_
  have M3 := msk_addM M2' (off := 40) (x := mg) (by norm_num) (by norm_num) (fun _ => Or.inl (Or.inl (Or.inl e_mgS)))
  unfold ptS85
  refine hseqN (hn_stMs M3 (off := 48) (k := 1) (hlen_lv_w e_rs) (by norm_num) (by norm_num) (by simp)) ?_
  unfold ptS86
  refine hseqN (hn_stMs M3 (off := 56) (k := 4) (fun s hpa v hv => len_ld4 hv) (by norm_num) (by norm_num)
    (by simp)) ?_
  exact hk _ _ wm mg e_mg (Or.inl (Or.inl (Or.inl (Or.inl e_mgS)))) M3

end InitECandidate.Solver.MemSafe.Ptx
