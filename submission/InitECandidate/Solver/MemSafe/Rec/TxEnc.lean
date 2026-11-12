import InitECandidate.Solver.MemSafe.Rec.TxEncMid
import InitECandidate.Solver.MemSafe.Hooks.Rec

set_option autoImplicit false

/-!
# `tx_encode_generic`: the capability summary from the record hook

**`csumm_tx_encode_generic hF hE`**: `CSumm σ X guestC H "tx_encode_generic" teSig []`,
`teSig = ⟨[fits (ptr tTX), any, any], [], [], false⟩`, for any hooks `H` with `FoldOK` and the
callee facts `EncHyps` (whose `get` field is `RecHooks`-style: a `tTX` hook gives `TxW`; for
`guestHooksR` it is `Hooks.txW_of_wf`).

The record's `TxW` bounds `bound = tx_encode_bound(tx)` below `2^63` (`TxLen`, `ALPf ≤ accSum`,
`AUPf ≤ 147 n`), `alloc(bound)` returns the fresh block, and the writes stay in it (`enc_mid`,
`enc_tail`).
-/

set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.WaveHelpers InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type} {X : Ctx 64}

/-- A fresh block ends below `scratchEnd`. -/
theorem freshBuf_end {Γ : Gam} {p p' : Ptrs} (hord : p.Ordered) (hord' : p'.Ordered) {w : BitVec 64}
    {n : Nat}
    (hf : FreshBuf Γ p p' w n) (hn : 0 < n) (hw : w.toNat + n < 2 ^ 64) :
    w.toNat + n ≤ scratchEnd := by
  have hse : scratchEnd % 8 = 0 := by decide
  let a0 := (w.toNat + n - 1) / 8 * 8
  have ha64 : a0 < 2 ^ 64 := by omega
  have hov : Overlap w.toNat n (BitVec.ofNat 64 a0) := by
    unfold Overlap
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt ha64]
    omega
  have hfr := (hf.2 _ hov).1
  unfold Fresh at hfr
  rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt ha64] at hfr
  unfold Ptrs.Ordered at hord hord'
  omega

/-- The first cell of a fresh block is above the old heap pointer. -/
theorem freshBuf_start {Γ : Gam} {p p' : Ptrs} (hord : p.Ordered) (hord' : p'.Ordered) {w : BitVec 64}
    {n : Nat}
    (hf : FreshBuf Γ p p' w n) (hn : 0 < n) : p.hp ≤ w.toNat := by
  have hov : Overlap w.toNat n w := ⟨hf.1, by omega, by omega⟩
  have hfr := (hf.2 _ hov).1
  unfold Fresh at hfr
  unfold Ptrs.Ordered at hord hord'
  omega

set_option maxHeartbeats 400000 in
/-- The post of the body: the activation invariant, and on a return the slice inside a fresh heap block. -/
def HQb (a : Act σ) (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  HQa a r t ∧ ∀ v, r = some (.returned v) → ∃ (Bf : BitVec 64) (Bn : Nat), Bf.toNat % 8 = 0 ∧ a.p0.hp ≤ Bf.toNat ∧
    Bf.toNat + Bn ≤ heapEnd ∧ EncV Bf Bn v ∧ BlkH a Bf Bn t

theorem hqb_locals {a : Act σ} (hH : HooksLawful a.C a.H) {r : Option (PanSemResultExact 64)} {t : State σ} (L : LocalsH)
    (h : HQb a r t) : HQb a r { t with locals := L } := by
  refine ⟨hqa_locals hH L h.1, fun v hv => ?_⟩
  obtain ⟨Bf, Bn, a1, a2, a3, a4, a5⟩ := h.2 v hv
  exact ⟨Bf, Bn, a1, a2, a3, a4, blkH_congr (s := t) hH rfl rfl rfl rfl a5⟩

theorem hqb_of_abn {a : Act σ} {r : PanSemResultExact 64} {t : State σ} (habn : Abn r) (h : ¬ Abortive r → HHa a t) :
    HQb a (some r) t :=
  ⟨fun r' hr' hna => by cases hr'; exact h hna, fun v hv => absurd (Option.some.inj hv) (abn_ne_retV habn v)⟩

/-- **The body of `tx_encode_generic`.** -/
theorem te_hoare {H : Hooks σ} {ALPf AUPf : Mem → BitVec 64 → BitVec 64 → Nat}
    (hF : FoldOK σ X guestC H) (hE : EncHyps ALPf AUPf σ X H) {vs : List (ValueHOL 64)} {body : ProgHOL 64}
    {callee : HolFiniteMapExact MlS (ValueHOL 64)} {rs : ShapeHOL}
    (hl : PanSemStateFiniteExact.lookupCodeHOLFinite X.code.lookup (nm "tx_encode_generic") vs = some (body, callee, rs))
    {s0 : State σ} (hloc : s0.locals = callee) {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (actOf guestC H teSig [] vs s0 Γ0 p0) X) (hh : Heap (actOf guestC H teSig [] vs s0 Γ0 p0) Γ0 p0 s0) :
    HoareG σ X (fun t => t = s0) body (HQb (actOf guestC H teSig [] vs s0 Γ0 p0)) := by
  have hX := hF.hX
  have hA : AlignedDom X := hF.hal
  have halloc : CSumm σ X guestC H (nm "alloc") allocSig [] :=
    csumm_of_summ (builtinTab_sound hX hF.hH hF.hAC _ _ (by simp [builtinTab]))
  have hpsa : ∀ pt ∈ allocSig.params, pt = .any := by simp [allocSig]
  have hpsb : ∀ pt ∈ tebSig.params, pt = .any := by simp [tebSig]
  rw [hX] at hl
  obtain ⟨rfl, -, A0, B0, C0, rfl, hsA, hsB, hsC, hA', hB', hC'⟩ :=
    lookupCode_three code_tx_encode_generic (by decide) (by decide) (by decide) hl
  obtain ⟨TX, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨M, rfl⟩ := val_of_shapeEq_one hsB
  obtain ⟨CI, rfl⟩ := val_of_shapeEq_one hsC
  set a := actOf guestC H teSig [] [.val (.word TX), .val (.word M), .val (.word CI)] s0 Γ0 p0
    with hadef
  have hpT : s0.locals.lookup (nm "tx") = some (.val (.word TX)) := by rw [hloc]; exact hA'
  have hpM : s0.locals.lookup (nm "mode") = some (.val (.word M)) := by rw [hloc]; exact hB'
  have hpC : s0.locals.lookup (nm "chain_id") = some (.val (.word CI)) := by rw [hloc]; exact hC'
  -- the tx object and its record invariant
  obtain ⟨o, ho, hob, hot⟩ : ∃ o ∈ Γ0, o.base = TX ∧ o.ty = tTX := by
    obtain ⟨w, hw, o, ho, hob, hot⟩ := ha.hargs0.2 0 (.fits (.ptr tTX)) (.val (.word TX)) rfl rfl
    cases hw
    exact ⟨o, ho, hob, hot⟩
  have hG0 : G guestC H Γ0 s0 := heap_G ha hh
  obtain ⟨p1, hp1, hord, hL0, -, -, -, hW⟩ := hG0
  have hp10 : p1 = p0 := by rw [hh.2.1] at hp1; exact (Option.some.inj hp1).symm
  subst hp10
  have hTxW := hE.get Γ0 s0 o hot (hW o ho)
  set Bn := boundF s0.memory TX ALPf AUPf with hBndef
  have e25 : txF s0.memory o 25 = fld s0.memory TX 200 := by unfold txF fld Obj.cell; rw [hob]
  have e26 : txF s0.memory o 26 = fld s0.memory TX 208 := by unfold txF fld Obj.cell; rw [hob]
  have e27 : txF s0.memory o 27 = fld s0.memory TX 216 := by unfold txF fld Obj.cell; rw [hob]
  have e33 : txF s0.memory o 33 = fld s0.memory TX 264 := by unfold txF fld Obj.cell; rw [hob]
  have e35 : txF s0.memory o 35 = fld s0.memory TX 280 := by unfold txF fld Obj.cell; rw [hob]
  have hlen := hTxW.2.2.1
  unfold TxLen at hlen
  rw [e25, e26, e27, e33, e35] at hlen
  have hal := hE.alp s0.memory (fld s0.memory TX 208) (fld s0.memory TX 216) (by omega)
  have hau := hE.aup s0.memory (fld s0.memory TX 272) (fld s0.memory TX 280)
  have hBn63 : Bn < 2 ^ 63 := by
    rw [hBndef]
    unfold boundF
    -- AUTH_N at 280 is the 147 · n term
    have h35 : (fld s0.memory TX 280).toNat = (txF s0.memory o 35).toNat := by rw [e35]
    omega
  unfold teBody
  -- `bound = tx_encode_bound(tx)`
  refine hoareG_decCall ((summ_funSpec hE.bsum).and hE.bval) ?_ ?_
  rotate_left
  · intro s _ hs vs hvs callee r st ⟨hR, _⟩ _ habn
    subst s
    rw [evs_cons (ev_lw hpT) evs_nil] at hvs
    cases hvs
    refine hqb_of_abn habn fun hna => ?_
    obtain ⟨Γ1, q1, he1, hh1, -⟩ := heap_call ha hh hR (abn_good' habn) hna
      (argsOK_any hpsb rfl) (fun x hx => absurd hx (argCells_any hpsb)) (by simp [tebSig])
      (by simp [tebSig])
    exact ⟨Γ1, q1, he1, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh1⟩
  intro s _ hs vs hvs callee v st ⟨hR, hB⟩ _ hsh
  subst s
  rw [evs_cons (ev_lw hpT) evs_nil] at hvs
  cases hvs
  obtain ⟨Γ1, q1, he1, hh1, hm1, -, -⟩ := heap_call ha hh hR (by simp [Good]) (by simp [Abortive])
    (argsOK_any hpsb rfl) (fun x hx => absurd hx (argCells_any hpsb)) (by simp [tebSig])
    (by simp [tebSig])
  have hv1 := hB (by simp [Good]) TX rfl v rfl
  subst hv1
  set s1 := setVarHOLFinite (nm "bound") (.val (.word (BitVec.ofNat 64 Bn)))
    { st with locals := s0.locals } with hs1
  have hh1' : Heap a Γ1 q1 s1 := heap_congr (s := st) ha.hH rfl rfl rfl rfl hh1
  have hbl1 : s1.locals.lookup (nm "bound") = some (.val (.word (BitVec.ofNat 64 Bn))) :=
    lk_set_self _ _ _
  refine hoareG_conseq (P := fun t => t = s1) (Q := HQb a) ?_ (fun _ _ h => h)
    (fun r t _ _ h => hqb_locals ha.hH _ h)
  -- `buf = alloc(bound)`
  refine hoareG_decCall ((summ_funSpec halloc).and (allocSpec_alloc hX)) ?_ ?_
  rotate_left
  · intro s _ hs vs hvs callee r st2 ⟨hR, _⟩ _ habn
    subst s
    rw [evs_cons (ev_lw hbl1) evs_nil] at hvs
    cases hvs
    refine hqb_of_abn habn fun hna => ?_
    obtain ⟨Γ2, q2, he2, hh2, -⟩ := heap_call ha hh1' hR (abn_good' habn) hna (argsOK_any hpsa rfl)
      (fun x hx => absurd hx (argCells_any hpsa)) (by simp [allocSig]) (by simp [allocSig])
    exact ⟨Γ2, q2, ext_trans he1 he2, heap_congr (s := st2) ha.hH rfl rfl rfl rfl hh2⟩
  intro s _ hs vs hvs callee v st2 ⟨hR, hAl⟩ _ hsh2
  subst s
  rw [evs_cons (ev_lw hbl1) evs_nil] at hvs
  cases hvs
  obtain ⟨Γ2, q2, he2, hh2, hm2, -, hret⟩ := heap_call ha hh1' hR (by simp [Good])
    (by simp [Abortive]) (argsOK_any hpsa rfl) (fun x hx => absurd hx (argCells_any hpsa))
    (by simp [allocSig]) (by simp [allocSig])
  obtain ⟨Bf, rfl⟩ := val_of_shapeEq_one' hsh2
  obtain ⟨x, hx, hfb⟩ := hret _ rfl 0 (.freshArg 0 1 0) Bf rfl (by rw [flattenHOL]; rfl)
  have hxe : x = BitVec.ofNat 64 Bn := by
    simp only [argW, wordOf, List.getElem?_cons_zero, Option.some.injEq] at hx
    exact hx.symm
  subst hxe
  have hBnn : (BitVec.ofNat 64 Bn).toNat = Bn := by
    rw [BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt (by omega)
  rw [hBnn] at hfb
  have hfb1 : ∀ y : BitVec 64, Overlap Bf.toNat Bn y → Fresh q1 q2 y ∧ ¬ InObj Γ2 y.toNat :=
    fun y hy => hfb.2 y (by simpa using hy)
  have hfb' : FreshBuf Γ2 q1 q2 Bf Bn := ⟨hfb.1, hfb1⟩
  have hord1 := heap_ord hh1'
  have hord2 := heap_ord hh2
  have htop : Bf.toNat + Bn ≤ heapEnd := by
    obtain ⟨-, -, p', hp', -, -, hq⟩ := hAl (by simp [Good]) _ q1 rfl hh1'.2.1 hord1
    obtain ⟨Q, hQ, -, hlive, -⟩ := hq _ rfl
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hQ
    subst hQ
    rw [hBnn] at hlive
    have e : p' = q2 := Option.some.inj (hp'.symm.trans hh2.2.1)
    subst e
    exact le_trans hlive.2 hord2.2.1
  have hBn0 : 0 < Bn := by rw [hBndef]; unfold boundF; omega
  have hBw : Bf.toNat + Bn < 2 ^ 64 := by
    rcases freshBuf_bound hord1 hord2 hfb' with h | h
    · omega
    · exact h
  have hBe : Bf.toNat + Bn ≤ scratchEnd := freshBuf_end hord1 hord2 hfb' hBn0 hBw
  have hm1' : a.p0.Mono q1 := hm1
  have hhp : a.p0.hp ≤ Bf.toNat := by
    have := freshBuf_start hord1 hord2 hfb' hBn0
    have := hm1'.1
    omega
  have hfr : ∀ y : BitVec 64, Overlap Bf.toNat Bn y → ¬ a.p0.Allocated y.toNat :=
    fun y hy => fresh_not_alloc ha.hord0 hord2 (mono_trans hm1 hm2) (fresh_mono hm1 (hfb1 y hy).1)
  have hv : EncEnv a X o TX Bf Bn ALPf AUPf :=
    ⟨ha, hL0, rfl, rfl, rfl, ho, hob, hot, hTxW, rfl, hBe, hhp⟩
  set s2 := setVarHOLFinite (nm "buf") (.val (.word Bf)) { st2 with locals := s1.locals } with hs2
  have hb2 : BlkH a Bf Bn s2 := ⟨Γ2, q2, ext_trans he1 he2,
    heap_congr (s := st2) ha.hH rfl rfl rfl rfl hh2, fun y hy =>
      ⟨(hfb1 y hy).2, fresh_alloc hord1 (hfb1 y hy).1, hfr y hy⟩⟩
  refine hoareG_conseq (P := fun t => t = s2) (Q := HQb a) ?_ (fun _ _ h => h)
    (fun r t _ _ h => hqb_locals ha.hH _ h)
  have hbf2 : s2.locals.lookup (nm "buf") = some (.val (.word Bf)) := lk_set_self _ _ _
  -- `body = buf + 10; p = body; t = tx[0]; w = 0`
  refine hoareG_dec fun s _ hs v hv' _ => ?_
  subst s
  rw [ev_add2 (ev_lw hbf2) (ev_cw _ 10)] at hv'
  cases hv'
  refine hoareG_conseq (Q := HQb a) ?_ (fun _ _ h => h) (fun r t _ _ h => hqb_locals ha.hH _ h)
  refine hoareG_dec fun s _ hs v hv' _ => ?_
  subst s
  rw [ev_lw (lk_set_self _ _ _)] at hv'
  cases hv'
  refine hoareG_conseq (Q := HQb a) ?_ (fun _ _ h => h) (fun r t _ _ h => hqb_locals ha.hH _ h)
  set s4 := setVarHOLFinite (nm "p") (.val (.word (Bf + BitVec.ofNat 64 10)))
    (setVarHOLFinite (nm "body") (.val (.word (Bf + BitVec.ofNat 64 10))) s2) with hs4
  have htx4 : s4.locals.lookup (nm "tx") = some (.val (.word TX)) := by
    rw [hs4, lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), hs2, lk_set_ne _ _ (by decide)]
    show (s1.locals).lookup _ = _
    rw [hs1, lk_set_ne _ _ (by decide)]
    exact hpT
  have hb4 : BlkH a Bf Bn s4 := blkH_congr (s := s2) ha.hH rfl rfl rfl rfl hb2
  have hlk4 : ∀ y, y ≠ nm "p" → y ≠ nm "body" → y ≠ nm "buf" → y ≠ nm "bound" →
      s4.locals.lookup y = s0.locals.lookup y := by
    intro y h1 h2 h3 h4
    rw [hs4, lk_set_ne _ _ (Ne.symm h1), lk_set_ne _ _ (Ne.symm h2), hs2, lk_set_ne _ _ (Ne.symm h3)]
    show (s1.locals).lookup _ = _
    rw [hs1, lk_set_ne _ _ (Ne.symm h4)]
  have hb4' := hb4
  refine hoareG_dec fun s _ hs v hv' _ => ?_
  subst s
  obtain ⟨Γ4, q4, -, hh4, -⟩ := hb4
  have hT := hv.ev_tw hh4 htx4 (by decide) hv'
  subst hT
  refine hoareG_conseq (Q := HQb a) ?_ (fun _ _ h => h) (fun r t _ _ h => hqb_locals ha.hH _ h)
  refine hoareG_dec fun s _ hs v hv' _ => ?_
  subst s
  rw [ev_cw] at hv'
  cases hv'
  refine hoareG_conseq (Q := HQb a) ?_ (fun _ _ h => h) (fun r t _ _ h => hqb_locals ha.hH _ h)
  refine hoareG_conseq (enc_mid (M := M) (CI := CI) (T := fld a.s0.memory TX 0) hv hE hX hA hqv_of_abnQ
    (enc_tail hv hX hA (by
      rw [hBndef]; unfold boundF encU encDN encAL encAU encBH
      rw [show a.s0 = s0 from rfl]
      omega))) (fun t _ ht => ?_) (fun r t _ _ h => ⟨h.1, fun v' hv' => ⟨Bf, Bn, hfb'.1, hhp, htop, h.2 v' hv'⟩⟩)
  subst ht
  refine ⟨⟨?_, ?_, ?_, ?_, ?_⟩, ⟨0, le_rfl, ?_⟩, ⟨_, lk_set_self _ _ _⟩,
    blkH_congr (s := s4) ha.hH rfl rfl rfl rfl hb4'⟩
  · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact htx4
  · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
      hlk4 _ (by decide) (by decide) (by decide) (by decide)]; exact hpM
  · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
      hlk4 _ (by decide) (by decide) (by decide) (by decide)]; exact hpC
  · rw [lk_set_ne _ _ (by decide)]; exact lk_set_self _ _ _
  · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), hs4, lk_set_ne _ _ (by decide)]
    exact lk_set_self _ _ _
  · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), hs4]
    exact lk_set_self _ _ _

/-- **`tx_encode_generic` keeps `G`** given the record hook and the callee facts. -/
theorem csumm_tx_encode_generic {H : Hooks σ} {ALPf AUPf : Mem → BitVec 64 → BitVec 64 → Nat}
    (hF : FoldOK σ X guestC H) (hE : EncHyps ALPf AUPf σ X H) :
    CSumm σ X guestC H (nm "tx_encode_generic") teSig [] := by
  refine csumm_of_heap hF.hH hF.hC hF.hal hF.hAC hF.hNS
    fun vs body callee rs hl s0 _ hloc Γ0 p0 ha hh => ?_
  refine hoareG_conseq (te_hoare hF hE hl hloc ha hh) (fun _ _ h => h) (fun r t _ _ h r' hr hna => ?_)
  obtain ⟨Γ', p', he, hh'⟩ := h.1 r' hr hna
  exact ⟨Γ', p', he, hh', fun v _ i rt w hrt => by simp [teSig] at hrt⟩

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.te_hoare
#print axioms InitECandidate.Solver.MemSafe.Rec.csumm_tx_encode_generic

namespace InitECandidate.Solver.MemSafe.Rec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Types

/-- `EncHyps.get` for the record family. -/
theorem encGet_guestR {σ : Type} : ∀ (Γ : Gam) (s : State σ) (o : Obj), o.ty = tTX →
    (guestHooksR (σ := σ)).wf Γ s o → TxW Γ s.memory o :=
  fun _ _ _ ht hw => (txW_of_wf ht hw).2.2

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.encGet_guestR
