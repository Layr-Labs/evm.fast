import InitECandidate.Solver.MemSafe.Rec.TxEncEnv

set_option autoImplicit false

/-!
# `tx_encode_generic`: the writes

`enc_mid`: from the cursor at `u = 0` the writes (`teMid` up to the tail) keep the cursor in the
block with `u ≤ 350 + DATA_N + al + au + 33·BH_N` (`encU`), each call's room checked against
`bound = 655 + DATA_N + al + au + 33·BH_N`.
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

/-- The fixed locals of the writes. -/
def encLf (TX M CI T Bf : BitVec 64) (m : LocalsH) : Prop :=
  m.lookup (nm "tx") = some (.val (.word TX)) ∧ m.lookup (nm "mode") = some (.val (.word M)) ∧
    m.lookup (nm "chain_id") = some (.val (.word CI)) ∧ m.lookup (nm "t") = some (.val (.word T)) ∧
    m.lookup (nm "body") = some (.val (.word (Bf + BitVec.ofNat 64 10)))

theorem encLf_ok (TX M CI T Bf : BitVec 64) : LfOK (encLf TX M CI T Bf) := by
  intro m m' h ⟨h1, h2, h3, h4, h5⟩
  exact ⟨by rw [h _ (by decide) (by decide)]; exact h1, by rw [h _ (by decide) (by decide)]; exact h2,
    by rw [h _ (by decide) (by decide)]; exact h3, by rw [h _ (by decide) (by decide)]; exact h4,
    by rw [h _ (by decide) (by decide)]; exact h5⟩

theorem evs_p1 {s : State σ} {e : ExpHOL 64} {vs : List (ValueHOL 64)} {P : BitVec 64}
    (hp : s.locals.lookup (nm "p") = some (.val (.word P))) (h : evs s [lv (nm "p"), e] = some vs) :
    ∃ v, ev s e = some v ∧ vs = [.val (.word P), v] := by
  obtain ⟨v0, vs1, rfl, h0, h1⟩ := evs_cons_inv h
  obtain ⟨v1, vs2, rfl, h2, h3⟩ := evs_cons_inv h1
  rw [ev_lw hp] at h0
  cases h0
  have : vs2 = [] := by simpa [evs, evalListHOLExact] using h3.symm
  subst this
  exact ⟨v1, h2, rfl⟩

theorem evs_p2 {s : State σ} {e1 e2 : ExpHOL 64} {vs : List (ValueHOL 64)} {P : BitVec 64}
    (hp : s.locals.lookup (nm "p") = some (.val (.word P)))
    (h : evs s [lv (nm "p"), e1, e2] = some vs) :
    ∃ v1 v2, ev s e1 = some v1 ∧ ev s e2 = some v2 ∧ vs = [.val (.word P), v1, v2] := by
  obtain ⟨v0, vs1, rfl, h0, h1⟩ := evs_cons_inv h
  obtain ⟨v1, vs2, rfl, h2, h3⟩ := evs_cons_inv h1
  obtain ⟨v2, vs3, rfl, h4, h5⟩ := evs_cons_inv h3
  rw [ev_lw hp] at h0
  cases h0
  have : vs3 = [] := by simpa [evs, evalListHOLExact] using h5.symm
  subst this
  exact ⟨v1, v2, h2, h4, rfl⟩

section mid
variable {a : Act σ} {o : Obj} {TX Bf : BitVec 64} {Bn : Nat}
  {ALPf AUPf : Mem → BitVec 64 → BitVec 64 → Nat} {M CI T : BitVec 64}

theorem se_lt : scratchEnd < 2 ^ 63 := by decide

/-- The cursor value. -/
theorem cur_toNat (hv : EncEnv a X o TX Bf Bn ALPf AUPf) {u : Nat} (hu : 10 + u ≤ Bn) :
    (Bf + BitVec.ofNat 64 (10 + u)).toNat = Bf.toNat + (10 + u) :=
  toNat_addc (by have := hv.hBe; have := se_lt; omega)

theorem hBn_lt (hv : EncEnv a X o TX Bf Bn ALPf AUPf) : Bf.toNat + Bn < 2 ^ 64 := by
  have := hv.hBe; have := se_lt; omega

/-- `rlp_encode_word(p, tx[k])`. -/
theorem enc_word (hv : EncEnv a X o TX Bf Bn ALPf AUPf) (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) {U : Nat} (hroom : 10 + U + 9 ≤ Bn) {k : Nat} (hk : k < 400)
    {q : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hq : HoareG σ X (Cur a Bf Bn (encLf TX M CI T Bf) (U + 9)) q Q)
    (hQ : ∀ r t, r ≠ none → AbnQ a r t → Q r t) :
    HoareG σ X (Cur a Bf Bn (encLf TX M CI T Bf) U)
      (.seq (teW "rlp_encode_word" [tw k]) (.seq teP q)) Q := by
  refine hoareG_seqW hv.ha (wspec_rlp_encode_word hC hA) (encLf_ok _ _ _ _ _) hroom (hBn_lt hv) ?_ hq hQ
  intro s _ hc u hu hp vs hvs callee
  obtain ⟨v, hev, rfl⟩ := evs_p1 hp hvs
  obtain ⟨Γ, q', -, hh, -⟩ := hc.2.2.2
  have := hv.ev_tw hh hc.1.1 hk hev
  subst this
  refine ⟨rfl, ⟨_, _, rfl, ?_⟩, le_rfl⟩
  rw [cur_toNat hv (by omega)]
  have := hv.hBe
  omega


/-- The `hpre` obligation of a cursor step with writer `Pre`, length bound `F ≤ m`. -/
def HPre (a : Act σ) (X : Ctx 64) (Bf : BitVec 64) (Bn : Nat) (Lf : LocalsH → Prop) (U m : Nat)
    (args : List (ExpHOL 64)) (Pre : List (ValueHOL 64) → State σ → Prop)
    (F : List (ValueHOL 64) → State σ → Nat) : Prop :=
  ∀ s : State σ, InCtx s X → Cur a Bf Bn Lf U s → ∀ (u : Nat), u ≤ U →
    s.locals.lookup (nm "p") = some (.val (.word (Bf + BitVec.ofNat 64 (10 + u)))) →
    ∀ vs, evs s (lv (nm "p") :: args) = some vs → ∀ callee,
      argW vs 0 = some (Bf + BitVec.ofNat 64 (10 + u)) ∧
      Pre vs (callEntryStateHOLFinite s callee) ∧ F vs (callEntryStateHOLFinite s callee) ≤ m

theorem hpre_u256 (hv : EncEnv a X o TX Bf Bn ALPf AUPf) {U : Nat} (hroom : 10 + U + 33 ≤ Bn)
    {k : Nat} : HPre a X Bf Bn (encLf TX M CI T Bf) U 33 [t4 k] PreU (fun _ _ => 33) := by
  intro s _ hc u hu hp vs hvs callee
  obtain ⟨v, -, rfl⟩ := evs_p1 hp hvs
  obtain ⟨Γ, q', -, hh, -⟩ := hc.2.2.2
  refine ⟨rfl, ⟨_, v, rfl, ?_, q', hh.2.1, heap_ord hh⟩, le_rfl⟩
  rw [cur_toNat hv (by omega)]
  have := hv.hBe
  omega

theorem hpre_to (hv : EncEnv a X o TX Bf Bn ALPf AUPf) {U : Nat} (hroom : 10 + U + 21 ≤ Bn) :
    HPre a X Bf Bn (encLf TX M CI T Bf) U 21 [tw 152] WtPre (fun _ _ => 21) := by
  intro s _ hc u hu hp vs hvs callee
  obtain ⟨v, hev, rfl⟩ := evs_p1 hp hvs
  obtain ⟨Γ, q', -, hh, -⟩ := hc.2.2.2
  have := hv.ev_tw hh hc.1.1 (by decide) hev
  subst this
  refine ⟨rfl, ⟨_, _, rfl, ?_⟩, le_rfl⟩
  rw [cur_toNat hv (by omega)]
  have := hv.hBe
  omega

theorem hpre_wordCI (hv : EncEnv a X o TX Bf Bn ALPf AUPf) {U : Nat} (hroom : 10 + U + 9 ≤ Bn) :
    HPre a X Bf Bn (encLf TX M CI T Bf) U 9 [lv (nm "chain_id")] WwPre (fun _ _ => 9) := by
  intro s _ hc u hu hp vs hvs callee
  obtain ⟨v, hev, rfl⟩ := evs_p1 hp hvs
  rw [ev_lw hc.1.2.2.1] at hev
  cases hev
  refine ⟨rfl, ⟨_, _, rfl, ?_⟩, le_rfl⟩
  rw [cur_toNat hv (by omega)]
  have := hv.hBe
  omega

/-- The data length. -/
abbrev encDN (a : Act σ) (TX : BitVec 64) : Nat := (fld a.s0.memory TX 200).toNat

theorem hpre_bytes (hv : EncEnv a X o TX Bf Bn ALPf AUPf) {U : Nat}
    (hroom : 10 + U + (9 + encDN a TX) ≤ Bn) :
    HPre a X Bf Bn (encLf TX M CI T Bf) U (9 + encDN a TX) [tw 192, tw 200] WbPre WbF := by
  intro s _ hc u hu hp vs hvs callee
  obtain ⟨v1, v2, hev1, hev2, rfl⟩ := evs_p2 hp hvs
  obtain ⟨Γ, q', -, hh, -⟩ := hc.2.2.2
  have e1 := hv.ev_tw hh hc.1.1 (by decide) hev1
  have e2 := hv.ev_tw hh hc.1.1 (by decide) hev2
  subst e1 e2
  refine ⟨rfl, ⟨_, _, _, rfl, ?_⟩, le_rfl⟩
  rw [cur_toNat hv (by omega)]
  have := hv.hBe
  unfold encDN at hroom
  omega

theorem accN_txF (hv : EncEnv a X o TX Bf Bn ALPf AUPf) :
    txF a.s0.memory o 26 = fld a.s0.memory TX 208 ∧ txF a.s0.memory o 27 = fld a.s0.memory TX 216 ∧
      txF a.s0.memory o 34 = fld a.s0.memory TX 272 ∧ txF a.s0.memory o 35 = fld a.s0.memory TX 280 ∧
      txF a.s0.memory o 25 = fld a.s0.memory TX 200 ∧ txF a.s0.memory o 33 = fld a.s0.memory TX 264 :=
  ⟨hv.txF_fld 26, hv.txF_fld 27, hv.txF_fld 34, hv.txF_fld 35, hv.txF_fld 25, hv.txF_fld 33⟩

/-- A sub-array of the tx record lies below the output block and is stable. -/
theorem sub_below (hv : EncEnv a X o TX Bf Bn ALPf AUPf) {P : BitVec 64} {N t sz : Nat}
    (hsub : SubArr a.Γ0 P N t sz) (hheap : (guestC.ty t).region = .heap)
    (hpr : ∀ k, (guestC.ty t).slot k = .prot) :
    (N = 0 ∨ P.toNat + sz * N ≤ Bf.toNat) ∧ (N = 0 ∨ P.toNat + sz * N ≤ a.p0.hp) ∧
      ∀ {Γ : Gam} {q : Ptrs} {s : State σ}, Heap a Γ q s →
      ∀ x : BitVec 64, P.toNat ≤ x.toNat → x.toNat < P.toNat + sz * N → s.memory x = a.s0.memory x := by
  rcases hsub with h | ⟨x, hx, hxb, hxt, hxs, hxe⟩
  · exact ⟨Or.inl h, Or.inl h, fun _ y h1 h2 => absurd h2 (by rw [h]; omega)⟩
  have hlo : x.lo = P.toNat := by unfold Obj.lo; rw [hxb]
  have hl := (hv.hL0.1 x hx).2.2.2.2
  rw [hv.hC, hxt, hheap] at hl
  simp only [Region.Live] at hl
  refine ⟨Or.inr (by have := hv.hhp; omega), Or.inr (by omega), fun hh y h1 h2 => ?_⟩
  exact hv.stable hh hx (by rw [hxt]; exact hpr) (by omega) (by unfold Obj.hi; unfold Obj.lo at hlo; omega)

/-- The access-list length at entry. -/
abbrev encAL (a : Act σ) (TX : BitVec 64) (ALPf : Mem → BitVec 64 → BitVec 64 → Nat) : Nat :=
  ALPf a.s0.memory (fld a.s0.memory TX 208) (fld a.s0.memory TX 216)

theorem hpre_acc (hv : EncEnv a X o TX Bf Bn ALPf AUPf) (hE : ∀ m m' P N,
      P.toNat + 24 * N.toNat < 2 ^ 64 →
      (∀ x : BitVec 64, P.toNat ≤ x.toNat → x.toNat < P.toNat + 24 * N.toNat → m' x = m x) →
      ALPf m' P N = ALPf m P N) {U : Nat}
    (hroom : 10 + U + (9 + encAL a TX ALPf) ≤ Bn) :
    HPre a X Bf Bn (encLf TX M CI T Bf) U (9 + encAL a TX ALPf) [tw 208, tw 216] (PreA ALPf)
      (FA ALPf) := by
  intro s _ hc u hu hp vs hvs callee
  obtain ⟨v1, v2, hev1, hev2, rfl⟩ := evs_p2 hp hvs
  obtain ⟨Γ, q', -, hh, -⟩ := hc.2.2.2
  have e1 := hv.ev_tw hh hc.1.1 (by decide) hev1
  have e2 := hv.ev_tw hh hc.1.1 (by decide) hev2
  subst e1 e2
  obtain ⟨-, -, hlen, hacc, -⟩ := hv.htx
  obtain ⟨h26, h27, -, -, -, -⟩ := accN_txF hv
  rw [h26, h27] at hacc
  obtain ⟨hbel, -, hst⟩ := sub_below hv hacc acc_heap acc_prot
  have hAL : ALPf s.memory (fld a.s0.memory TX 208) (fld a.s0.memory TX 216) = encAL a TX ALPf :=
    hE _ _ _ _ (by rcases hbel with h | h <;> (have := hv.hBe; have := se_lt; omega))
      (fun x h1 h2 => hst hh x h1 h2)
  have hS : accSum s.memory (fld a.s0.memory TX 208) (fld a.s0.memory TX 216).toNat =
      accSum a.s0.memory (fld a.s0.memory TX 208) (fld a.s0.memory TX 216).toNat :=
    accSum_congr (fun i hi => hst hh _ (by
        have := toNat_addc (P := fld a.s0.memory TX 208) (c := 24 * i + 16) (by
          rcases hbel with h | h
          · omega
          · have := hv.hBe; have := se_lt; omega)
        rw [this]; omega) (by
        have := toNat_addc (P := fld a.s0.memory TX 208) (c := 24 * i + 16) (by
          rcases hbel with h | h
          · omega
          · have := hv.hBe; have := se_lt; omega)
        rw [this]; omega)) _ le_rfl
  have hlen' : accSum a.s0.memory (fld a.s0.memory TX 208) (fld a.s0.memory TX 216).toNat < 2 ^ 63 := by
    unfold TxLen at hlen
    rw [h26, h27] at hlen
    omega
  have hcp : (callEntryStateHOLFinite s callee).memory = s.memory := rfl
  refine ⟨rfl, ⟨_, _, _, rfl, ?_, ?_, ?_⟩, ?_⟩
  · rw [hcp, hAL, cur_toNat hv (by omega)]
    have := hv.hBe
    omega
  · rcases hbel with h | h
    · exact Or.inl h
    · exact Or.inr (by rw [cur_toNat hv (by omega)]; omega)
  · rw [hcp, hS]; exact hlen'
  · show 9 + ALPf (callEntryStateHOLFinite s callee).memory _ _ ≤ _
    rw [hcp, hAL]

/-- The authorization length at entry. -/
abbrev encAU (a : Act σ) (TX : BitVec 64) (AUPf : Mem → BitVec 64 → BitVec 64 → Nat) : Nat :=
  AUPf a.s0.memory (fld a.s0.memory TX 272) (fld a.s0.memory TX 280)

theorem hpre_auth (hv : EncEnv a X o TX Bf Bn ALPf AUPf) (hE : ∀ m m' P N,
      P.toNat + 120 * N.toNat < 2 ^ 64 →
      (∀ x : BitVec 64, P.toNat ≤ x.toNat → x.toNat < P.toNat + 120 * N.toNat → m' x = m x) →
      AUPf m' P N = AUPf m P N) {U : Nat}
    (hroom : 10 + U + (9 + encAU a TX AUPf) ≤ Bn) :
    HPre a X Bf Bn (encLf TX M CI T Bf) U (9 + encAU a TX AUPf) [tw 272, tw 280] (PreAu AUPf)
      (FAu AUPf) := by
  intro s _ hc u hu hp vs hvs callee
  obtain ⟨v1, v2, hev1, hev2, rfl⟩ := evs_p2 hp hvs
  obtain ⟨Γ, q', -, hh, -⟩ := hc.2.2.2
  have e1 := hv.ev_tw hh hc.1.1 (by decide) hev1
  have e2 := hv.ev_tw hh hc.1.1 (by decide) hev2
  subst e1 e2
  obtain ⟨-, -, -, -, hau⟩ := hv.htx
  obtain ⟨-, -, h34, h35, -, -⟩ := accN_txF hv
  rw [h34, h35] at hau
  obtain ⟨hbel, hbhp, hst⟩ := sub_below hv hau auth_heap auth_prot
  have hAU : AUPf s.memory (fld a.s0.memory TX 272) (fld a.s0.memory TX 280) = encAU a TX AUPf :=
    hE _ _ _ _ (by rcases hbel with h | h <;> (have := hv.hBe; have := se_lt; omega))
      (fun x h1 h2 => hst hh x h1 h2)
  have hcp : (callEntryStateHOLFinite s callee).memory = s.memory := rfl
  have hmono := hh.2.2.1
  refine ⟨rfl, ⟨_, _, _, rfl, ?_, ?_, q', hh.2.1, heap_ord hh, ?_⟩, ?_⟩
  · rw [hcp, hAU, cur_toNat hv (by omega)]
    have := hv.hBe
    omega
  · rcases hbel with h | h
    · exact Or.inl h
    · exact Or.inr (by rw [cur_toNat hv (by omega)]; omega)
  · rcases hbhp with h | h
    · exact Or.inl h
    · exact Or.inr (by unfold Ptrs.Mono at hmono; omega)
  · show 9 + AUPf (callEntryStateHOLFinite s callee).memory _ _ ≤ _
    rw [hcp, hAU]

/-- The blob-hash count. -/
abbrev encBH (a : Act σ) (TX : BitVec 64) : Nat := (fld a.s0.memory TX 264).toNat

theorem hpre_blobs (hv : EncEnv a X o TX Bf Bn ALPf AUPf) {U : Nat}
    (hroom : 10 + U + (9 + 33 * encBH a TX) ≤ Bn) :
    HPre a X Bf Bn (encLf TX M CI T Bf) U (9 + 33 * encBH a TX) [tw 256, tw 264] WhPre WhF := by
  intro s _ hc u hu hp vs hvs callee
  obtain ⟨v1, v2, hev1, hev2, rfl⟩ := evs_p2 hp hvs
  obtain ⟨Γ, q', -, hh, -⟩ := hc.2.2.2
  have e1 := hv.ev_tw hh hc.1.1 (by decide) hev1
  have e2 := hv.ev_tw hh hc.1.1 (by decide) hev2
  subst e1 e2
  refine ⟨rfl, ⟨_, _, _, rfl, ?_, ?_⟩, le_rfl⟩
  · have := hv.hBe; have := se_lt; unfold encBH at hroom; omega
  · rw [cur_toNat hv (by omega)]
    have := hv.hBe
    unfold encBH at hroom
    omega


theorem hpre_word (hv : EncEnv a X o TX Bf Bn ALPf AUPf) {U : Nat} (hroom : 10 + U + 9 ≤ Bn)
    {k : Nat} (hk : k < 400) :
    HPre a X Bf Bn (encLf TX M CI T Bf) U 9 [tw k] WwPre (fun _ _ => 9) := by
  intro s _ hc u hu hp vs hvs callee
  obtain ⟨v, hev, rfl⟩ := evs_p1 hp hvs
  obtain ⟨Γ, q', -, hh, -⟩ := hc.2.2.2
  have := hv.ev_tw hh hc.1.1 hk hev
  subst this
  refine ⟨rfl, ⟨_, _, rfl, ?_⟩, le_rfl⟩
  rw [cur_toNat hv (by omega)]
  have := hv.hBe
  omega

/-! ## Byte stores and `p = p + 2` -/

theorem hoareG_stbC (hv : EncEnv a X o TX Bf Bn ALPf AUPf) {U c : Nat} (hc : c ≤ 1)
    (hroom : 10 + U + 2 ≤ Bn) {ea e : ExpHOL 64}
    (hea : ∀ s : State σ, ∀ P : BitVec 64, s.locals.lookup (nm "p") = some (.val (.word P)) →
      ∀ w, ev s ea = some (.val (.word w)) → w = P + BitVec.ofNat 64 c) :
    HoareG σ X (Cur a Bf Bn (encLf TX M CI T Bf) U) (.storeByte ea e)
      (CurQ a Bf Bn (encLf TX M CI T Bf) U) := by
  refine hoareG_storeByte fun s _ hcur w x mem hw _ hst => ?_
  obtain ⟨hL, ⟨u, hu, hp⟩, hW, Γ, q, he, hh, hblk⟩ := hcur
  have hm := storeByte_mod hst
  have hw' := hea s _ hp w hw
  subst hw'
  have hP := cur_toNat hv (u := u) (by omega)
  have hPc : (Bf + BitVec.ofNat 64 (10 + u) + BitVec.ofNat 64 c).toNat = Bf.toNat + (10 + u) + c := by
    rw [toNat_addc (by rw [hP]; have := hv.hBe; have := se_lt; omega), hP]
  have hov : Overlap Bf.toNat Bn (panByteAlignHOL (Bf + BitVec.ofNat 64 (10 + u) + BitVec.ofNat 64 c)) :=
    overlap_byte (by rw [hPc]; omega) (by rw [hPc]; omega)
  exact ⟨fun _ => ⟨hL, ⟨u, hu, hp⟩, hW, Γ, q, he,
    heap_mod_out hv.ha hh hm (fun y hy => by subst hy; exact ⟨(hblk _ hov).1, (hblk _ hov).2.2⟩),
    hblk⟩, fun r' h => nomatch h⟩

theorem hoareG_p2 (hv : EncEnv a X o TX Bf Bn ALPf AUPf) {U : Nat} :
    HoareG σ X (Cur a Bf Bn (encLf TX M CI T Bf) U)
      (.assign .local (nm "p") (.op .add [lv (nm "p"), cw 2]))
      (CurQ a Bf Bn (encLf TX M CI T Bf) (U + 2)) := by
  refine hoareG_assign fun t _ hcur v hv' _ => ?_
  obtain ⟨hL, ⟨u, hu, hp⟩, ⟨W, hW⟩, hb⟩ := hcur
  rw [ev_add2 (ev_lw hp) (ev_cw _ 2)] at hv'
  cases hv'
  refine ⟨fun _ => ⟨(encLf_ok _ _ _ _ _) _ _ (fun y h1 _ => lk_set_ne _ _ (Ne.symm h1)) hL,
    ⟨u + 2, by omega, ?_⟩, ⟨W, by rw [lk_set_ne _ _ (by decide)]; exact hW⟩,
    blkH_congr (s := t) hv.ha.hH rfl rfl rfl rfl hb⟩, fun r' h => nomatch h⟩
  rw [lk_set_self]
  congr 3
  rw [BitVec.add_assoc]
  congr 1
  apply BitVec.eq_of_toNat_eq
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, BitVec.toNat_ofNat, BitVec.toNat_ofNat]
  omega

/-- The final cursor budget. -/
abbrev encU (a : Act σ) (TX : BitVec 64) (ALPf AUPf : Mem → BitVec 64 → BitVec 64 → Nat) : Nat :=
  171 + (9 + encDN a TX) + (9 + encAL a TX ALPf) + (33 + (9 + 33 * encBH a TX)) +
    (9 + encAU a TX AUPf) + 99 + 11

theorem hoareG_curMono {a : Act σ} {B : BitVec 64} {n : Nat} {Lf : LocalsH → Prop} {U U' : Nat}
    (hU : U ≤ U') {P : State σ → Prop} {p : ProgHOL 64}
    (h : HoareG σ X P p (CurQ a B n Lf U)) : HoareG σ X P p (CurQ a B n Lf U') :=
  hoareG_conseq h (fun _ _ h => h) fun _ _ _ _ h => curQ_mono hU h

theorem abnQ_hqa {a : Act σ} : ∀ r t, r ≠ none → AbnQ a r t → HQa a r t :=
  fun _ _ _ h r' hr hna => (h r' hr).2 hna

/-- **The writes of `tx_encode_generic`.** -/
theorem enc_mid (hv : EncEnv a X o TX Bf Bn ALPf AUPf) (hE : EncHyps ALPf AUPf σ X a.H)
    (hC : X.code.lookup = guestCode) (hA : AlignedDom X)
    {Q : Option (PanSemResultExact 64) → State σ → Prop} (hab : ∀ r t, r ≠ none → AbnQ a r t → Q r t)
    (htail : HoareG σ X (Cur a Bf Bn (encLf TX M CI T Bf) (encU a TX ALPf AUPf)) teTail Q) :
    HoareG σ X (Cur a Bf Bn (encLf TX M CI T Bf) 0) teMid Q := by
  have hBn : Bn = 655 + encDN a TX + encAL a TX ALPf + encAU a TX AUPf + 33 * encBH a TX := hv.hBn
  have ha := hv.ha
  have hLf := encLf_ok TX M CI T Bf
  have hBl := hBn_lt hv
  unfold teMid
  -- `if t != 0 { chain_id }`
  refine hoareG_seqC (U1 := 9) (hoareG_iteS (by omega) (hoareG_pre
    (hoareG_wstep ha (wspec_rlp_encode_word hC hA) hLf (by omega) hBl (hpre_word hv (by omega)
      (by decide))) fun _ _ h => h.1)) ?_ hab
  -- nonce
  refine hoareG_seqW ha hE.u256 hLf (U := 9) (m := 33) (by omega) hBl (hpre_u256 hv (by omega)) ?_
    hab
  -- fees
  refine hoareG_seqC (U1 := 108) (hoareG_iteC
    (hoareG_curMono (by omega) (hoareG_wstep ha hE.u256 hLf (U := 42) (m := 33) (by omega) hBl
      (hpre_u256 hv (by omega))))
    (hoareG_seqW ha hE.u256 hLf (U := 42) (m := 33) (by omega) hBl (hpre_u256 hv (by omega))
      (hoareG_wstep ha hE.u256 hLf (U := 42 + 33) (m := 33) (by omega) hBl (hpre_u256 hv (by omega)))
      (fun r t hr h => ⟨fun h' => absurd h' hr, h⟩))) ?_ hab
  -- gas
  refine hoareG_seqW ha (wspec_rlp_encode_word hC hA) hLf (U := 108) (m := 9) (by omega) hBl
    (hpre_word hv (by omega) (by decide)) ?_ hab
  -- to
  refine hoareG_seqW ha (wspec_tx_put_to hC hA) hLf (U := 108 + 9) (m := 21) (by omega) hBl
    (hpre_to hv (by omega)) ?_ hab
  -- value
  refine hoareG_seqW ha hE.u256 hLf (U := 108 + 9 + 21) (m := 33) (by omega) hBl
    (hpre_u256 hv (by omega)) ?_ hab
  -- data
  refine hoareG_seqW ha (wspec_rlp_encode_bytes hC hA) hLf (U := 108 + 9 + 21 + 33)
    (m := 9 + encDN a TX) (by omega) hBl (hpre_bytes hv (by omega)) ?_ hab
  -- access list
  refine hoareG_seqC (U1 := 171 + (9 + encDN a TX) + (9 + encAL a TX ALPf)) (hoareG_iteS (by omega)
    (hoareG_pre (hoareG_wstep ha hE.acc hLf (U := 171 + (9 + encDN a TX))
      (m := 9 + encAL a TX ALPf) (by omega) hBl (hpre_acc hv hE.alpc (by omega)))
      fun _ _ h => h.1)) ?_ hab
  -- blob fee and hashes
  refine hoareG_seqC (U1 := 171 + (9 + encDN a TX) + (9 + encAL a TX ALPf) +
      (33 + (9 + 33 * encBH a TX))) (hoareG_iteS (by omega)
    (hoareG_pre (hoareG_seqW ha hE.u256 hLf (U := 171 + (9 + encDN a TX) + (9 + encAL a TX ALPf))
      (m := 33) (by omega) hBl (hpre_u256 hv (by omega))
      (hoareG_curMono (by omega) (hoareG_wstep ha (wspec_tx_put_blob_hashes hC hA) hLf
        (U := 171 + (9 + encDN a TX) + (9 + encAL a TX ALPf) + 33) (m := 9 + 33 * encBH a TX)
        (by omega) hBl (hpre_blobs hv (by omega))))
      (fun r t hr h => ⟨fun h' => absurd h' hr, h⟩)) fun _ _ h => h.1)) ?_ hab
  -- authorizations
  refine hoareG_seqC (U1 := 171 + (9 + encDN a TX) + (9 + encAL a TX ALPf) +
      (33 + (9 + 33 * encBH a TX)) + (9 + encAU a TX AUPf)) (hoareG_iteS (by omega)
    (hoareG_pre (hoareG_wstep ha hE.auth hLf (U := 171 + (9 + encDN a TX) + (9 + encAL a TX ALPf) +
      (33 + (9 + 33 * encBH a TX))) (m := 9 + encAU a TX AUPf) (by omega) hBl
      (hpre_auth hv hE.aupc (by omega))) fun _ _ h => h.1)) ?_ hab
  -- mode 0: v, r, s
  refine hoareG_seqC (U1 := 171 + (9 + encDN a TX) + (9 + encAL a TX ALPf) +
      (33 + (9 + 33 * encBH a TX)) + (9 + encAU a TX AUPf) + 99) (hoareG_iteS (by omega)
    (hoareG_pre (hoareG_seqW ha hE.u256 hLf (m := 33) (by omega) hBl (hpre_u256 hv (by omega))
      (hoareG_seqW ha hE.u256 hLf (m := 33) (by omega) hBl (hpre_u256 hv (by omega))
        (hoareG_curMono (by omega) (hoareG_wstep ha hE.u256 hLf (m := 33) (by omega) hBl
          (hpre_u256 hv (by omega))))
        (fun r t hr h => ⟨fun h' => absurd h' hr, h⟩))
      (fun r t hr h => ⟨fun h' => absurd h' hr, h⟩)) fun _ _ h => h.1)) ?_ hab
  -- mode 2: chain_id, 0x80, 0x80
  refine hoareG_seqC (U1 := encU a TX ALPf AUPf) (hoareG_iteS (by simp only [encU]; omega)
    (hoareG_pre (hoareG_seqW ha (wspec_rlp_encode_word hC hA) hLf (m := 9) (by omega) hBl
      (hpre_wordCI hv (by omega))
      (hoareG_seqC (hoareG_stbC hv (c := 0) (by omega) (by omega) fun s P hp w hw => by
          rw [ev_lw hp] at hw; cases hw; simp)
        (hoareG_seqC (hoareG_stbC hv (c := 1) (by omega) (by omega) fun s P hp w hw => by
            rw [ev_add2 (ev_lw hp) (ev_cw _ 1)] at hw; cases hw; rfl)
          (hoareG_curMono (by simp only [encU]; omega) (hoareG_p2 hv))
          (fun r t hr h => ⟨fun h' => absurd h' hr, h⟩))
        (fun r t hr h => ⟨fun h' => absurd h' hr, h⟩))
      (fun r t hr h => ⟨fun h' => absurd h' hr, h⟩)) fun _ _ h => h.1)) htail hab


/-! ## The tail: the list header, the type byte, the result -/

/-- A footprint callee writing only cells of the block keeps it (any result). -/
theorem blk_footCall (hv : EncEnv a X o TX Bf Bn ALPf AUPf) {s st : State σ}
    (hb : BlkH a Bf Bn s) (hg : st.globals = s.globals) (hd : st.memaddrs = s.memaddrs)
    (hbe : st.be = s.be) {R : BitVec 64 → Prop} (hmod : ModifiesOnly R s.memory st.memory)
    (hR : ∀ x, R x → Overlap Bf.toNat Bn x) (L : LocalsH) :
    BlkH a Bf Bn { st with locals := L } := by
  obtain ⟨Γ, q, he, hh, hblk⟩ := hb
  have hh1 := heap_mod_out hv.ha hh hmod fun x hx => ⟨(hblk x (hR x hx)).1, (hblk x (hR x hx)).2.2⟩
  exact ⟨Γ, q, he, heap_congr (s := { s with memory := st.memory }) hv.ha.hH rfl hg hd hbe hh1, hblk⟩

/-- The result of `tx_encode_generic`: a slice of its block. -/
def EncV (Bf : BitVec 64) (Bn : Nat) (v : ValueHOL 64) : Prop :=
  ∃ rp rl : BitVec 64, v = .rStruct [.val (.word rp), .val (.word rl)] ∧ Bf.toNat ≤ rp.toNat ∧
    rp.toNat + rl.toNat ≤ Bf.toNat + Bn ∧ 1 ≤ rl.toNat

/-- The post of the tail: the activation invariant, and on a return the slice and the block. -/
def HQv (a : Act σ) (Bf : BitVec 64) (Bn : Nat) (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  HQa a r t ∧ ∀ v, r = some (.returned v) → EncV Bf Bn v ∧ BlkH a Bf Bn t

theorem abn_ne_retV {r : PanSemResultExact 64} (h : Abn r) (v : ValueHOL 64) : r ≠ .returned v := by
  rcases h with ⟨e, v', rfl⟩ | ⟨e, rfl⟩ <;> intro he <;> cases he

theorem hqv_locals {a : Act σ} {Bf : BitVec 64} {Bn : Nat} (hH : HooksLawful a.C a.H) {r : Option (PanSemResultExact 64)}
    {t : State σ} (L : LocalsH) (h : HQv a Bf Bn r t) : HQv a Bf Bn r { t with locals := L } :=
  ⟨hqa_locals hH L h.1, fun v hv => ⟨(h.2 v hv).1, blkH_congr (s := t) hH rfl rfl rfl rfl (h.2 v hv).2⟩⟩

theorem hqv_of_abn {a : Act σ} {Bf : BitVec 64} {Bn : Nat} {r : PanSemResultExact 64} {t : State σ} (habn : Abn r)
    (h : ¬ Abortive r → HHa a t) : HQv a Bf Bn (some r) t :=
  ⟨fun r' hr' hna => by cases hr'; exact h hna, fun v hv => absurd (Option.some.inj hv) (abn_ne_retV habn v)⟩

theorem hqv_of_abnQ {a : Act σ} {Bf : BitVec 64} {Bn : Nat} : ∀ r t, r ≠ none → AbnQ a r t → HQv a Bf Bn r t :=
  fun _ _ _ h => ⟨fun r' hr hna => (h r' hr).2 hna, fun v hv => absurd rfl (abn_ne_retV (h _ hv).1 v)⟩

theorem enc_tail (hv : EncEnv a X o TX Bf Bn ALPf AUPf) (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hroom : 10 + encU a TX ALPf AUPf ≤ Bn) :
    HoareG σ X (Cur a Bf Bn (encLf TX M CI T Bf) (encU a TX ALPf AUPf)) teTail (HQv a Bf Bn) := by
  intro s0 hs0 hc0
  obtain ⟨⟨htx, hmo, hci, ht, hbody⟩, ⟨u, hu, hp⟩, -, hb0⟩ := hc0
  refine (?_ : HoareG σ X (fun t => t = s0) teTail (HQv a Bf Bn)) s0 hs0 rfl
  have hBe := hv.hBe
  have hse := se_lt
  have hPu := cur_toNat hv (u := u) (by omega)
  have h10 : (Bf + BitVec.ofNat 64 10).toNat = Bf.toNat + 10 := toNat_addc (by omega)
  unfold teTail
  refine hoareG_dec fun s _ hs v hv' _ => ?_
  subst s
  rw [ev_sub2 (ev_lw hp) (ev_lw hbody)] at hv'
  cases hv'
  set PL := Bf + BitVec.ofNat 64 (10 + u) - (Bf + BitVec.ofNat 64 10) with hPL
  have hPLn : PL.toNat = u := by
    rw [hPL, BitVec.toNat_sub, hPu, h10]
    rw [show 2 ^ 64 - (Bf.toNat + 10) + (Bf.toNat + (10 + u)) = 2 ^ 64 + u by omega,
      Nat.add_mod_left, Nat.mod_eq_of_lt (by omega)]
  refine hoareG_conseq (Q := HQv a Bf Bn) ?_ (fun _ _ h => h) (fun r t _ _ h => hqv_locals hv.ha.hH _ h)
  have hlp : (setVarHOLFinite (nm "payload_len") (.val (.word PL)) s0).locals.lookup (nm "payload_len") =
      some (.val (.word PL)) := lk_set_self _ _ _
  have hb1 : BlkH a Bf Bn (setVarHOLFinite (nm "payload_len") (.val (.word PL)) s0) :=
    blkH_congr (s := s0) hv.ha.hH rfl rfl rfl rfl hb0
  refine hoareG_decCall ((footRet_rlp_list_header_len (σ := σ) hC).and (funSpec_dom _)) ?_ ?_
  rotate_left
  · intro s _ hs vs hvs callee r st ⟨hR, hdm, hdb⟩ _ habn
    subst s
    refine hqv_of_abn habn fun _ => ?_
    obtain ⟨hgl, hmod, -⟩ := hR (abn_good habn) trivial
    exact hha_of_blkH (blk_footCall hv hb1 hgl hdm hdb hmod (fun x h => h.elim) _)
  intro s _ hs vs hvs callee v st ⟨hR, hdm, hdb⟩ _ hsh
  subst s
  rw [evs_cons (ev_lw hlp) evs_nil] at hvs
  cases hvs
  obtain ⟨hgl, hmod, hret⟩ := hR (by simp [Good]) trivial
  have hv1 := hret v rfl PL rfl
  subst hv1
  rw [hPLn]
  set h := Helpers.hdrLen u with hhd
  have hh9 := hdrLen_le (n := u) (by omega)
  have hb2 : BlkH a Bf Bn (setVarHOLFinite (nm "hl") (.val (.word (BitVec.ofNat 64 h)))
      { st with locals := (setVarHOLFinite (nm "payload_len") (.val (.word PL)) s0).locals }) :=
    blkH_congr hv.ha.hH rfl rfl rfl rfl (blk_footCall hv hb1 hgl hdm hdb hmod (fun x h => h.elim) _)
  refine hoareG_conseq (Q := HQv a Bf Bn) ?_ (fun _ _ h => h) (fun r t _ _ h => hqv_locals hv.ha.hH _ h)
  have hbd : (setVarHOLFinite (nm "hl") (.val (.word (BitVec.ofNat 64 h)))
      { st with locals := (setVarHOLFinite (nm "payload_len") (.val (.word PL)) s0).locals }).locals.lookup
        (nm "body") = some (.val (.word (Bf + BitVec.ofNat 64 10))) := by
    rw [lk_set_ne _ _ (by decide)]
    show ((setVarHOLFinite (nm "payload_len") (.val (.word PL)) s0).locals).lookup _ = _
    rw [lk_set_ne _ _ (by decide)]
    exact hbody
  refine hoareG_dec fun s _ hs v hv' _ => ?_
  subst s
  rw [ev_sub2 (ev_lw hbd) (ev_lw (lk_set_self _ _ _))] at hv'
  cases hv'
  set SV := Bf + BitVec.ofNat 64 10 - BitVec.ofNat 64 h with hSV
  have hSVn : SV.toNat = Bf.toNat + 10 - h := by
    rw [hSV, BitVec.toNat_sub, h10, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := h) (by omega)]
    rw [show 2 ^ 64 - h + (Bf.toNat + 10) = 2 ^ 64 + (Bf.toNat + 10 - h) by omega,
      Nat.add_mod_left, Nat.mod_eq_of_lt (by omega)]
  refine hoareG_conseq (Q := HQv a Bf Bn) ?_ (fun _ _ h => h) (fun r t _ _ h => hqv_locals hv.ha.hH _ h)
  set s3 := setVarHOLFinite (nm "start") (.val (.word SV)) (setVarHOLFinite (nm "hl")
    (.val (.word (BitVec.ofNat 64 h))) { st with locals := (setVarHOLFinite (nm "payload_len")
      (.val (.word PL)) s0).locals }) with hs3
  have hb3 : BlkH a Bf Bn s3 := by
    rw [hs3]
    exact blkH_congr (s := setVarHOLFinite (nm "hl") (.val (.word (BitVec.ofNat 64 h)))
      { st with locals := (setVarHOLFinite (nm "payload_len") (.val (.word PL)) s0).locals })
      hv.ha.hH rfl rfl rfl rfl hb2
  have hst3 : s3.locals.lookup (nm "start") = some (.val (.word SV)) := lk_set_self _ _ _
  have hpl3 : s3.locals.lookup (nm "payload_len") = some (.val (.word PL)) := by
    rw [hs3, lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hlp
  have ht3 : s3.locals.lookup (nm "t") = some (.val (.word T)) := by
    rw [hs3, lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]
    show (s0.locals.update _).lookup _ = _
    rw [lookup_update_ne _ _ (by decide)]; exact ht
  have hp3 : s3.locals.lookup (nm "p") = some (.val (.word (Bf + BitVec.ofNat 64 (10 + u)))) := by
    rw [hs3, lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]
    show (s0.locals.update _).lookup _ = _
    rw [lookup_update_ne _ _ (by decide)]; exact hp
  have hh1 := hh9.1
  -- the list header at `start`
  refine hoareG_seq (R := fun r t => (r = none → t.locals = s3.locals ∧ BlkH a Bf Bn t) ∧
      (r ≠ none → HQv a Bf Bn r t)) ?_ (fun r t _ hr _ hq => hq.2 hr) ?_
  · refine hoareG_callD ((footRet_rlp_encode_list_header (σ := σ) hC hA).and (funSpec_dom _)) ?_ ?_
    · intro s _ hs vs hvs callee v st4 ⟨hR, hdm, hdb⟩ _
      subst s
      rw [evs_cons (ev_lw hst3) (evs_cons (ev_lw hpl3) evs_nil)] at hvs
      cases hvs
      obtain ⟨hgl, hmod, -⟩ := hR (by simp [Good]) ⟨SV, rfl, fun N hN => by
        cases hN; rw [hSVn, hPLn]; omega⟩
      refine ⟨fun _ => ⟨rfl, blk_footCall hv hb3 hgl hdm hdb hmod (fun x ⟨D, N, hD, hN, hov⟩ => ?_) _⟩,
        fun h => absurd rfl h⟩
      cases hD
      cases hN
      rw [hSVn, hPLn] at hov
      exact overlap_mono hov (by omega) (by omega)
    · intro s _ hs vs hvs callee r st4 ⟨hR, hdm, hdb⟩ _ habn
      subst s
      rw [evs_cons (ev_lw hst3) (evs_cons (ev_lw hpl3) evs_nil)] at hvs
      cases hvs
      obtain ⟨hgl, hmod, -⟩ := hR (abn_good habn) ⟨SV, rfl, fun N hN => by
        cases hN; rw [hSVn, hPLn]; omega⟩
      refine ⟨fun h => absurd h (by simp), fun _ => hqv_of_abn habn fun _ => hha_of_blkH
        (blk_footCall hv hb3 hgl hdm hdb hmod (fun x ⟨D, N, hD, hN, hov⟩ => ?_) _)⟩
      cases hD
      cases hN
      rw [hSVn, hPLn] at hov
      exact overlap_mono hov (by omega) (by omega)
  refine hoareG_pre (P := fun t => t.locals = s3.locals ∧ BlkH a Bf Bn t) ?_ fun t _ h => h.1 rfl
  -- the type byte, then the result
  have hS1 : (SV - BitVec.ofNat 64 1).toNat = Bf.toNat + 9 - h := by
    rw [BitVec.toNat_sub, hSVn, BitVec.toNat_ofNat]
    rw [show 2 ^ 64 - 1 % 2 ^ 64 + (Bf.toNat + 10 - h) = 2 ^ 64 + (Bf.toNat + 9 - h) by omega,
      Nat.add_mod_left, Nat.mod_eq_of_lt (by omega)]
  refine hoareG_seq (R := fun r t => (r = none → BlkH a Bf Bn t ∧
      t.locals.lookup (nm "p") = some (.val (.word (Bf + BitVec.ofNat 64 (10 + u)))) ∧
      ∃ ST : BitVec 64, t.locals.lookup (nm "start") = some (.val (.word ST)) ∧
        (ST.toNat = Bf.toNat + 10 - h ∨ ST.toNat = Bf.toNat + 9 - h)) ∧ (r ≠ none → HQv a Bf Bn r t)) ?_
    (fun r t _ hr _ hq => hq.2 hr) ?_
  · refine hoareG_ite ?_ (hoareG_skip fun t _ h => ⟨fun _ => ⟨h.1.2, by rw [h.1.1]; exact hp3,
      SV, by rw [h.1.1]; exact hst3, Or.inl hSVn⟩, fun h' => absurd rfl h'⟩)
    refine hoareG_seq (R := fun r t => r = none ∧ (t.locals.lookup (nm "start") =
        some (.val (.word (SV - BitVec.ofNat 64 1)))) ∧
        t.locals.lookup (nm "p") = some (.val (.word (Bf + BitVec.ofNat 64 (10 + u)))) ∧ BlkH a Bf Bn t) ?_
      (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine hoareG_assign fun t _ ⟨⟨hl, hbt⟩, _⟩ v hv' _ => ?_
      rw [ev_sub2 (ev_lw (by rw [hl]; exact hst3)) (ev_cw _ 1)] at hv'
      cases hv'
      refine ⟨rfl, lk_set_self _ _ _, ?_, blkH_congr (s := t) hv.ha.hH rfl rfl rfl rfl hbt⟩
      rw [lk_set_ne _ _ (by decide), hl]
      exact hp3
    · refine hoareG_storeByte fun t _ ⟨_, hl, hlp', hbt⟩ w x mem hw _ hstb => ?_
      rw [ev_lw hl] at hw
      cases hw
      have hm := storeByte_mod hstb
      have hov : Overlap Bf.toNat Bn (panByteAlignHOL (SV - BitVec.ofNat 64 1)) :=
        overlap_byte (by rw [hS1]; omega) (by rw [hS1]; omega)
      obtain ⟨Γ, q, he, hh, hblk⟩ := hbt
      exact ⟨fun _ => ⟨⟨Γ, q, he, heap_mod_out hv.ha hh hm (fun y hy => by
        subst hy; exact ⟨(hblk _ hov).1, (hblk _ hov).2.2⟩), hblk⟩, hlp', _, hl, Or.inr hS1⟩, fun h' => absurd rfl h'⟩
  · refine hoareG_return fun t _ h v hv' => ?_
    obtain ⟨hbt, hpf, ST, hst, hST⟩ := h.1 rfl
    rw [ev_rstruct (evs_cons (ev_lw hst) (evs_cons (ev_sub2 (ev_lw hpf) (ev_lw hst)) evs_nil))] at hv'
    cases hv'
    refine ⟨hqa_of_hha (t := emptyLocalsHOLFinite t)
      (hha_of_blkH (blkH_congr (s := t) hv.ha.hH rfl rfl rfl rfl hbt)) _, fun v' hv2 => ?_⟩
    cases hv2
    have hle : ST.toNat ≤ (Bf + BitVec.ofNat 64 (10 + u)).toNat := by omega
    have hsub : (Bf + BitVec.ofNat 64 (10 + u) - ST).toNat = (Bf + BitVec.ofNat 64 (10 + u)).toNat - ST.toNat :=
      BitVec.toNat_sub_of_le (by rw [BitVec.le_def]; exact hle)
    refine ⟨⟨ST, _, rfl, by omega, by rw [hsub]; omega, by rw [hsub]; omega⟩,
      blkH_congr (s := t) hv.ha.hH rfl rfl rfl rfl hbt⟩

end mid

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.enc_mid
#print axioms InitECandidate.Solver.MemSafe.Rec.enc_tail
