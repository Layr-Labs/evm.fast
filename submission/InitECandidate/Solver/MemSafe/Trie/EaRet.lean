import InitECandidate.Solver.MemSafe.MptE.Account

set_option autoImplicit false
set_option maxRecDepth 100000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

/-!
# `encode_account`: the returned length is at most 110

The proof of `MptE.hoareG_eaBody` with the return predicate `EaRP` (`off <= 110`) threaded through
(the original has `Ret = True`). `funSpec_ea_ret`.
-/

namespace InitECandidate.Solver.MemSafe.MptE
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

def EaRP (v : ValueHOL 64) : Prop := ∃ n : BitVec 64, v = .val (.word n) ∧ n.toNat ≤ 110

/-! ## `rlp_encode_word(out + off, nonce); off = off + w` -/

theorem hoareG_encWR (hC : X.code.lookup = guestCode) (hA : AlignedDom X) {c : Pm} {s0 : State σ}
    (hO : c.O.toNat + 128 ≤ scratchEnd) {K : ProgHOL 64}
    (hk : HoareG σ X (LPre (Rfa c) s0 (Os c (fun _ => True) 11)) K
      (LQ (Rfa c) s0 (fun _ => False) EaRP)) :
    HoareG σ X (LPre (Rfa c) s0 (Os c (fun _ => True) 2))
      (.decCall (nm "w") .one (nm "rlp_encode_word")
        [(.op .add [(lv (nm "out")), (lv (nm "off"))]), (lv (nm "nonce"))]
        (.seq (.assign .local (nm "off") (.op .add [(lv (nm "off")), (lv (nm "w"))])) K))
      (LQ (Rfa c) s0 (fun _ => False) EaRP) := by
  have hse : scratchEnd < 2 ^ 63 := by decide
  have hwl := wordLen_le c.N0.isLt
  refine hoareG_decCallFoot (L' := fun _ _ => False) (footRet_rlp_encode_word hC hA) ?_ ?_
    (fun _ _ _ h => h.elim)
  · intro s hs hpre vs hvs
    obtain ⟨⟨hB, ⟨OFF, hoff, hOFF⟩, -⟩, hbw⟩ := hpre
    rw [evs_cons (ev_add2 (ev_lw hB.1) (ev_lw hoff)) (evs_cons (ev_lw hB.2.1) evs_nil)] at hvs
    cases hvs
    have hs1 : (c.O + OFF).toNat = c.O.toNat + OFF.toNat := toNat_add2 (by omega)
    refine ⟨⟨c.O + OFF, rfl, fun W hW => ?_⟩, fun a ⟨D2, W2, hD2, hW2, hov⟩ => ?_⟩
    · have hW' : (some c.N0 : Option (BitVec 64)) = some W := hW
      cases hW'
      rw [hs1]; omega
    · have hD2' : (some (c.O + OFF) : Option (BitVec 64)) = some D2 := hD2
      have hW2' : (some c.N0 : Option (BitVec 64)) = some W2 := hW2
      cases hD2'
      cases hW2'
      rw [hs1] at hov
      exact Or.inl (overlap_mono hov (by omega) (by omega))
  · intro s vs v hs hL hvs hret _
    obtain ⟨hB, ⟨OFF, hoff, hOFF⟩, -⟩ := hL
    rw [evs_cons (ev_add2 (ev_lw hB.1) (ev_lw hoff)) (evs_cons (ev_lw hB.2.1) evs_nil)] at hvs
    cases hvs
    have hv := hret c.N0 rfl
    subst hv
    have hwl9 : (BitVec.ofNat 64 (wordLen c.N0.toNat)).toNat = wordLen c.N0.toNat :=
      toNat_ofNat_lt (by omega)
    let Lk : Locals → Prop := fun m => Bs c m ∧ m.lookup (nm "off") = some (.val (.word OFF)) ∧
      m.lookup (nm "w") = some (.val (.word (BitVec.ofNat 64 (wordLen c.N0.toNat))))
    have hLk : ∀ m, m = s.locals.update (nm "w", .val (.word (BitVec.ofNat 64 (wordLen c.N0.toNat)))) →
        Lk m := by
      intro m h
      subst h
      refine ⟨bs_upd hB _ (by decide) (by decide) (by decide) (by decide) (by decide), ?_,
        lookup_update_self _ _ _⟩
      rw [lookup_update_ne _ _ (by decide)]; exact hoff
    refine hoareG_preL (L' := Lk) ?_ hLk
    refine hoareG_seqL (L2 := Os c (fun _ => True) 11) (hoareG_assignL ?_) hk
    intro s' hs' ⟨hB', hoff', hw'⟩ v' hv'
    rw [ev_add2 (ev_lw hoff') (ev_lw hw')] at hv'
    cases hv'
    refine ⟨bs_upd hB' _ (by decide) (by decide) (by decide) (by decide) (by decide),
      ⟨OFF + BitVec.ofNat 64 (wordLen c.N0.toNat), lookup_update_self _ _ _, ?_⟩, trivial⟩
    rw [toNat_add2 (by rw [hwl9]; omega), hwl9]
    omega

theorem evs3_invR {s : State σ} {e1 e2 e3 : ExpHOL 64} {vs : List (ValueHOL 64)}
    (h : evs s [e1, e2, e3] = some vs) :
    ∃ v1 v2 v3, vs = [v1, v2, v3] ∧ ev s e1 = some v1 ∧ ev s e2 = some v2 ∧ ev s e3 = some v3 := by
  obtain ⟨v1, vs1, rfl, h1, hs1⟩ := evs_cons_inv h
  obtain ⟨v2, vs2, rfl, h2, hs2⟩ := evs_cons_inv hs1
  obtain ⟨v3, vs3, rfl, h3, hs3⟩ := evs_cons_inv hs2
  rw [evs_nil] at hs3
  cases hs3
  exact ⟨v1, v2, v3, rfl, h1, h2, h3⟩

/-! ## `rlp_encode_bytes(out + off, src, n); off = off + w` -/

theorem hoareG_encBR (hC : X.code.lookup = guestCode) (hA : AlignedDom X) {c : Pm} {s0 : State σ}
    (hO : c.O.toNat + 128 ≤ scratchEnd) {Ex : Locals → Prop} {b : Nat} (hb : b + 33 ≤ 128)
    {wn : MlS} (h1 : wn ≠ nm "out") (h2 : wn ≠ nm "nonce") (h3 : wn ≠ nm "balance")
    (h4 : wn ≠ nm "storage_root") (h5 : wn ≠ nm "code_hash") (h6 : wn ≠ nm "off")
    (hEx : ∀ (m : Locals) (v : ValueHOL 64), Ex m →
      Ex (m.update (wn, v)) ∧ Ex (m.update (nm "off", v)))
    {srcE nE : ExpHOL 64}
    (hsE : ∀ s : State σ, InCtx s X → LPre (Rfa c) s0 (Os c Ex b) s →
      ∃ SRC : BitVec 64, ev s srcE = some (.val (.word SRC)))
    (hnE : ∀ s : State σ, InCtx s X → Os c Ex b s.locals →
      ∃ N : BitVec 64, ev s nE = some (.val (.word N)) ∧ N.toNat ≤ 32)
    {K : ProgHOL 64}
    (hk : HoareG σ X (LPre (Rfa c) s0 (Os c Ex (b + 33))) K (LQ (Rfa c) s0 (fun _ => False) EaRP)) :
    HoareG σ X (LPre (Rfa c) s0 (Os c Ex b))
      (.decCall wn .one (nm "rlp_encode_bytes")
        [(.op .add [(lv (nm "out")), (lv (nm "off"))]), srcE, nE]
        (.seq (.assign .local (nm "off") (.op .add [(lv (nm "off")), (lv wn)])) K))
      (LQ (Rfa c) s0 (fun _ => False) EaRP) := by
  have hse : scratchEnd < 2 ^ 63 := by decide
  refine hoareG_decCallFoot (L' := fun _ _ => False) (footRet_rlp_encode_bytes hC hA) ?_ ?_
    (fun _ _ _ h => h.elim)
  · intro s hs hpre vs hvs
    obtain ⟨SRC, hsrc⟩ := hsE s hs hpre
    obtain ⟨N, hn, hN⟩ := hnE s hs hpre.1
    obtain ⟨⟨hB, ⟨OFF, hoff, hOFF⟩, hE⟩, hbw⟩ := hpre
    rw [evs_cons (ev_add2 (ev_lw hB.1) (ev_lw hoff)) (evs_cons hsrc (evs_cons hn evs_nil))] at hvs
    cases hvs
    have hs1 : (c.O + OFF).toNat = c.O.toNat + OFF.toNat := toNat_add2 (by omega)
    have hh := hdrLen_one (n := N.toNat) (by omega)
    refine ⟨⟨c.O + OFF, N, rfl, rfl, ?_⟩, fun a ⟨D2, N2, hD2, hN2, hov⟩ => ?_⟩
    · rw [hs1, hh]; omega
    · have hD2' : (some (c.O + OFF) : Option (BitVec 64)) = some D2 := hD2
      have hN2' : (some N : Option (BitVec 64)) = some N2 := hN2
      cases hD2'
      cases hN2'
      rw [hs1, hh] at hov
      exact Or.inl (overlap_mono hov (by omega) (by omega))
  · intro s vs v hs hL hvs hret _
    obtain ⟨hB, ⟨OFF, hoff, hOFF⟩, hE⟩ := hL
    obtain ⟨N, hn, hN⟩ := hnE s hs ⟨hB, ⟨OFF, hoff, hOFF⟩, hE⟩
    obtain ⟨v1, v2, v3, rfl, he1, he2, he3⟩ := evs3_invR hvs
    rw [ev_add2 (ev_lw hB.1) (ev_lw hoff)] at he1
    rw [hn] at he3
    cases he1
    cases he3
    obtain ⟨k, hkv, hk1, hk2, -⟩ := hret N rfl
    subst hkv
    have hh := hdrLen_one (n := N.toNat) (by omega)
    have hk33 : k ≤ 33 := by rw [hh] at hk2; omega
    have hkl : (BitVec.ofNat 64 k).toNat = k := toNat_ofNat_lt (by omega)
    let Lk : Locals → Prop := fun m => Bs c m ∧ m.lookup (nm "off") = some (.val (.word OFF)) ∧
      m.lookup wn = some (.val (.word (BitVec.ofNat 64 k))) ∧ Ex m
    have hLk : ∀ m, m = s.locals.update (wn, .val (.word (BitVec.ofNat 64 k))) → Lk m := by
      intro m h
      subst h
      refine ⟨bs_upd hB _ h1 h2 h3 h4 h5, ?_, lookup_update_self _ _ _, (hEx _ _ hE).1⟩
      rw [lookup_update_ne _ _ h6]; exact hoff
    refine hoareG_preL (L' := Lk) ?_ hLk
    refine hoareG_seqL (L2 := Os c Ex (b + 33)) (hoareG_assignL ?_) hk
    intro s' hs' ⟨hB', hoff', hw', hE'⟩ v' hv'
    rw [ev_add2 (ev_lw hoff') (ev_lw hw')] at hv'
    cases hv'
    refine ⟨bs_upd hB' _ (by decide) (by decide) (by decide) (by decide) (by decide),
      ⟨OFF + BitVec.ofNat 64 k, lookup_update_self _ _ _, ?_⟩, (hEx _ _ hE').2⟩
    rw [toNat_add2 (by rw [hkl]; omega), hkl]
    omega

/-! ## The `z` scan loop -/

theorem hoareG_eaLoopR {c : Pm} {s0 : State σ} :
    HoareG σ X (LPre (Rfa c) s0 (Os c Ez 11)) eaLoop
      (LQ (Rfa c) s0 (Os c Ez 11) EaRP) := by
  unfold eaLoop
  refine hoareG_while (fun t h => h) ?_ (fun s hs h hc => ⟨h.2, fun _ => h.1, fun _ h => nomatch h⟩)
  let Jl : Locals → Prop := fun m => Os c Ez 11 m ∧
    ∃ Z : BitVec 64, m.lookup (nm "z") = some (.val (.word Z)) ∧ Z.toNat < 32
  refine hoareG_seq (R := fun r t => (r = none ∧ LPre (Rfa c) s0 Jl t) ∨
    (r = some .break ∧ LQ (Rfa c) s0 (Os c Ez 11) EaRP none t)) ?_ ?_ ?_
  · refine hoareG_ite ?_ ?_
    · exact hoareG_break fun s hs ⟨⟨hpre, hc⟩, w, hw, hw0⟩ =>
        Or.inr ⟨rfl, hpre.2, fun _ => hpre.1, fun _ h => nomatch h⟩
    · refine hoareG_skip fun s hs ⟨⟨hpre, hc⟩, hw⟩ => ?_
      obtain ⟨hB, hoff, Z, hz, hZ⟩ := hpre.1
      obtain ⟨w, hw', hw0⟩ := hc
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw' hw0
      rw [ev_lw hz] at hx
      cases hx
      rw [ev_cw] at hy
      cases hy
      have hlt := lower_true hxy
      rw [toNat_ofNat_lt (by omega)] at hlt
      exact Or.inl ⟨rfl, ⟨⟨hB, hoff, Z, hz, hZ⟩, Z, hz, hlt⟩, hpre.2⟩
  · intro r t _ hr _ h
    rcases h with ⟨h1, _⟩ | ⟨h1, h2⟩
    · exact absurd h1 hr
    · subst h1
      exact ⟨(fun h => nomatch h), (fun h => nomatch h), fun _ => h2,
        fun r' hr' _ hb => absurd (Option.some.inj hr').symm hb⟩
  · refine hoareG_conseq (P := LPre (Rfa c) s0 Jl) (hoareG_assignN (n := nm "z")
      (e := .op .add [(lv (nm "z")), (cw 1)]) (L' := Os c Ez 11) ?_)
      (fun s _ h => h.elim (fun h => h.2) (fun h => nomatch h.1))
      (fun r t _ _ h => ?_)
    · intro s hs ⟨⟨hB, hoff, hEz⟩, Z, hz, hZ⟩ v hv
      rw [ev_add2 (ev_lw hz) (ev_cw _ 1)] at hv
      cases hv
      refine ⟨bs_upd hB _ (by decide) (by decide) (by decide) (by decide) (by decide), ?_, ?_⟩
      · obtain ⟨OFF, ho, hOFF⟩ := hoff
        exact ⟨OFF, by rw [lookup_update_ne _ _ (by decide)]; exact ho, hOFF⟩
      · refine ⟨Z + BitVec.ofNat 64 1, lookup_update_self _ _ _, ?_⟩
        have h1 : (BitVec.ofNat 64 1).toNat = 1 := rfl
        rw [toNat_add2 (by rw [h1]; omega), h1]
        omega
    · obtain ⟨hr, hq⟩ := h
      subst hr
      exact ⟨fun _ => hq, (fun h => nomatch h), (fun h => nomatch h), (fun r' hr' => nomatch hr')⟩

/-! ## The tail: the two `rlp_encode_bytes` of the roots, the header, the return -/

theorem hoareG_eaEndR (hA : AlignedDom X) {c : Pm} {s0 : State σ}
    (hO : c.O.toNat + 128 ≤ scratchEnd) :
    HoareG σ X (LPre (Rfa c) s0 (Os c Ez 110))
      (.seq (.storeByte (lv (nm "out")) (cw 248))
        (.seq (.storeByte (.op .add [(lv (nm "out")), (cw 1)]) (.op .sub [(lv (nm "off")), (cw 2)]))
          (.return (lv (nm "off")))))
      (LQ (Rfa c) s0 (fun _ => False) EaRP) := by
  have hse : scratchEnd < 2 ^ 63 := by decide
  refine hoareG_seqL (L2 := Os c Ez 110)
    (hoareG_stP hA (p := nm "out") (P := c.O) (n := 128) (c := 0) (k := .b)
      (Ret := EaRP) (fun m h => h.1.1) (by omega) (by omega) (fun a h => Or.inl h)
      (fun h => nomatch h)) ?_
  refine hoareG_seqL (L2 := Os c Ez 110)
    (hoareG_stP hA (p := nm "out") (P := c.O) (n := 128) (c := 1) (k := .b)
      (Ret := EaRP) (fun m h => h.1.1) (by omega) (by omega) (fun a h => Or.inl h)
      (fun h => nomatch h)) ?_
  refine hoareG_returnQ (fun s _ hs v hv => ?_)
  obtain ⟨hB, ⟨OFF, hoff, hOFF⟩, -⟩ := hs
  rw [ev_lw hoff] at hv
  cases hv
  exact ⟨OFF, rfl, hOFF⟩

theorem hoareG_eaTailR (hC : X.code.lookup = guestCode) (hA : AlignedDom X) {c : Pm} {s0 : State σ}
    (hO : c.O.toNat + 128 ≤ scratchEnd) :
    HoareG σ X (LPre (Rfa c) s0 (Os c Ez 44)) eaTail (LQ (Rfa c) s0 (fun _ => False) EaRP) := by
  have hEx : ∀ (wn : MlS), wn ≠ nm "z" → ∀ (m : Locals) (v : ValueHOL 64), Ez m →
      Ez (m.update (wn, v)) ∧ Ez (m.update (nm "off", v)) := by
    intro wn hwn m v ⟨Z, hz, hZ⟩
    exact ⟨⟨Z, by rw [lookup_update_ne _ _ hwn]; exact hz, hZ⟩,
      ⟨Z, by rw [lookup_update_ne _ _ (by decide)]; exact hz, hZ⟩⟩
  unfold eaTail
  refine hoareG_encBR hC hA hO (b := 44) (by omega) (wn := nm "wsl") (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (hEx _ (by decide))
    (fun s _ h => ⟨c.SR, ev_lw h.1.1.2.2.2.1⟩)
    (fun s _ h => ⟨BitVec.ofNat 64 32, ev_cw _ 32, by rw [toNat_ofNat_lt (by omega)]⟩) ?_
  refine hoareG_encBR hC hA hO (b := 77) (by omega) (wn := nm "wc") (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (hEx _ (by decide))
    (fun s _ h => ⟨c.CH, ev_lw h.1.1.2.2.2.2⟩)
    (fun s _ h => ⟨BitVec.ofNat 64 32, ev_cw _ 32, by rw [toNat_ofNat_lt (by omega)]⟩) ?_
  exact hoareG_eaEndR hA hO

theorem hoareG_eaMidR (hC : X.code.lookup = guestCode) (hA : AlignedDom X) {c : Pm} {s0 : State σ}
    (hgw : gword s0 (nm "mpt_hash_scratch") = some c.W)
    (hO : c.O.toNat + 128 ≤ scratchEnd) :
    HoareG σ X (LPre (Rfa c) s0 (Os c Ez 11)) eaMid (LQ (Rfa c) s0 (fun _ => False) EaRP) := by
  have hEx : ∀ (wn : MlS), wn ≠ nm "z" → ∀ (m : Locals) (v : ValueHOL 64), Ez m →
      Ez (m.update (wn, v)) ∧ Ez (m.update (nm "off", v)) := by
    intro wn hwn m v ⟨Z, hz, hZ⟩
    exact ⟨⟨Z, by rw [lookup_update_ne _ _ hwn]; exact hz, hZ⟩,
      ⟨Z, by rw [lookup_update_ne _ _ (by decide)]; exact hz, hZ⟩⟩
  unfold eaMid
  refine hoareG_seqL (L2 := Os c Ez 11) hoareG_eaLoopR ?_
  refine hoareG_encBR hC hA hO (b := 11) (by omega) (wn := nm "wb") (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (hEx _ (by decide)) ?_ ?_
    (hoareG_eaTailR hC hA hO)
  · intro s _ h
    obtain ⟨⟨hB, hoff, Z, hz, hZ⟩, hbw⟩ := h
    exact ⟨_, ev_add2 (ev_scr hbw.1 hgw) (ev_lw hz)⟩
  · intro s _ ⟨hB, hoff, Z, hz, hZ⟩
    refine ⟨BitVec.ofNat 64 32 - Z, ev_sub2 (ev_cw _ 32) (ev_lw hz), ?_⟩
    have h32 : (BitVec.ofNat 64 32).toNat = 32 := rfl
    rw [BitVec.toNat_sub_of_le (BitVec.le_def.mpr (by rw [h32]; omega)), h32]
    omega


theorem hoareG_stBeR (hC : X.code.lookup = guestCode) (hA : AlignedDom X) {c : Pm} {s0 : State σ}
    (hW : c.W.toNat + 32 ≤ scratchEnd) {L : Locals → Prop} {e1 e2 : ExpHOL 64} {k : Nat}
    (hk : k + 8 ≤ 32)
    (h1 : ∀ s : State σ, InCtx s X → LPre (Rfa c) s0 L s →
      ev s e1 = some (.val (.word (c.W + BitVec.ofNat 64 k))))
    (h2 : ∀ s : State σ, InCtx s X → LPre (Rfa c) s0 L s → ∃ v, ev s e2 = some v) :
    HoareG σ X (LPre (Rfa c) s0 L) (callD (nm "st_be64") [e1, e2]) (LQ (Rfa c) s0 L EaRP) := by
  have hse : scratchEnd < 2 ^ 63 := by decide
  refine hoareG_callFoot (foot_st_be64 hC hA) fun s hs hpre vs hvs => ?_
  obtain ⟨v2, hv2⟩ := h2 s hs hpre
  rw [evs_cons (h1 s hs hpre) (evs_cons hv2 evs_nil)] at hvs
  cases hvs
  have hs1 := toNat_addc (P := c.W) (c := k) (by omega)
  refine ⟨⟨_, rfl, by rw [hs1]; omega⟩, fun a ⟨D2, hD2, hov⟩ => ?_⟩
  have hD2' : (some (c.W + BitVec.ofNat 64 k) : Option (BitVec 64)) = some D2 := hD2
  cases hD2'
  rw [hs1] at hov
  exact Or.inr (overlap_mono hov (by omega) (by omega))

theorem hoareG_eaStoresR (hC : X.code.lookup = guestCode) (hA : AlignedDom X) {c : Pm}
    {s0 : State σ} (hgw : gword s0 (nm "mpt_hash_scratch") = some c.W)
    (hO : c.O.toNat + 128 ≤ scratchEnd) (hW : c.W.toNat + 32 ≤ scratchEnd) :
    HoareG σ X (LPre (Rfa c) s0 (Os c (fun _ => True) 11)) eaStores
      (LQ (Rfa c) s0 (fun _ => False) EaRP) := by
  have mk : ∀ (k : Nat) (e1 : ExpHOL 64) (i : Nat) (hi : i < 4) (hk : k + 8 ≤ 32),
      (∀ s : State σ, InCtx s X → LPre (Rfa c) s0 (Os c (fun _ => True) 11) s →
        ev s e1 = some (.val (.word (c.W + BitVec.ofNat 64 k)))) →
      HoareG σ X (LPre (Rfa c) s0 (Os c (fun _ => True) 11))
        (callD (nm "st_be64") [e1, .rfield i (lv (nm "balance"))])
        (LQ (Rfa c) s0 (Os c (fun _ => True) 11) EaRP) := by
    intro k e1 i hi hk h1
    refine hoareG_stBeR hC hA hW hk h1 fun s _ hpre => ?_
    exact ⟨_, ev_rfield_wv (x := lv (nm "balance")) (ws := [c.B0, c.B1, c.B2, c.B3])
      (by rw [ev_lv]; exact hpre.1.1.2.2.1) (i := i) (by simpa using hi)⟩
  unfold eaStores
  refine hoareG_seqL (L2 := Os c (fun _ => True) 11) (mk 0 gScr 3 (by decide) (by decide)
    fun s _ hpre => ?_) ?_
  · rw [ev_scr hpre.2.1 hgw]; simp
  refine hoareG_seqL (L2 := Os c (fun _ => True) 11) (mk 8 (.op .add [gScr, (cw 8)]) 2
    (by decide) (by decide) fun s _ hpre => ev_add2 (ev_scr hpre.2.1 hgw) (ev_cw _ 8)) ?_
  refine hoareG_seqL (L2 := Os c (fun _ => True) 11) (mk 16 (.op .add [gScr, (cw 16)]) 1
    (by decide) (by decide) fun s _ hpre => ev_add2 (ev_scr hpre.2.1 hgw) (ev_cw _ 16)) ?_
  refine hoareG_seqL (L2 := Os c (fun _ => True) 11) (mk 24 (.op .add [gScr, (cw 24)]) 0
    (by decide) (by decide) fun s _ hpre => ev_add2 (ev_scr hpre.2.1 hgw) (ev_cw _ 24)) ?_
  refine hoareG_decL' (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
  intro s hs hpre v hv hsh
  rw [ev_cw] at hv
  cases hv
  obtain ⟨⟨hB, ⟨OFF, hoff, hOFF⟩, -⟩, hbw⟩ := hpre
  refine hoareG_preL (L' := Os c Ez 11) (hoareG_eaMidR hC hA hgw hO) ?_
  intro m hm
  subst hm
  refine ⟨bs_upd hB _ (by decide) (by decide) (by decide) (by decide) (by decide),
    ⟨OFF, by rw [lookup_update_ne _ _ (by decide)]; exact hoff, hOFF⟩,
    BitVec.ofNat 64 0, lookup_update_self _ _ _, by simp⟩

theorem hoareG_eaBodyR (hC : X.code.lookup = guestCode) (hA : AlignedDom X) {c : Pm}
    {s0 : State σ} (hgw : gword s0 (nm "mpt_hash_scratch") = some c.W)
    (hO : c.O.toNat + 128 ≤ scratchEnd) (hW : c.W.toNat + 32 ≤ scratchEnd) :
    HoareG σ X (LPre (Rfa c) s0 (Bs c)) eaBody (LQ (Rfa c) s0 (fun _ => False) EaRP) := by
  unfold eaBody
  refine hoareG_decL' (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
  intro s hs hpre v hv hsh
  rw [ev_cw] at hv
  cases hv
  refine hoareG_preL (L' := Os c (fun _ => True) 2) ?_ ?_
  · exact hoareG_encWR hC hA hO (hoareG_eaStoresR hC hA hgw hO hW)
  · intro m hm
    subst hm
    exact ⟨bs_upd hpre.1 _ (by decide) (by decide) (by decide) (by decide) (by decide),
      ⟨BitVec.ofNat 64 2, lookup_update_self _ _ _, by simp⟩, trivial⟩


theorem funSpec_ea_ret (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FunSpec σ X (nm "encode_account") (fun vs s r t => Good (some r) → EaPre vs s →
      ∀ v, r = .returned v → EaRP v) := by
  intro vs body callee rs hl s0 hs0 hloc r hr hg hP v hv
  rw [hC] at hl
  obtain ⟨rfl, -, Nv, Bv, Sv, Cv, Ov, rfl, hsN, hsB, hsS, hsC, hsO, hlN, hlB, hlS, hlC, hlO⟩ :=
    lookupCode_five code_encode_account (by decide) hl
  obtain ⟨N0, rfl⟩ := val_of_shapeEq_one hsN
  obtain ⟨SR, rfl⟩ := val_of_shapeEq_one hsS
  obtain ⟨CH, rfl⟩ := val_of_shapeEq_one hsC
  obtain ⟨O, rfl⟩ := val_of_shapeEq_one hsO
  obtain ⟨ws, hl4, rfl⟩ := eq_wv_of_shapeEq (k := 4) hsB
  obtain ⟨b0, b1, b2, b3, rfl⟩ := list4 hl4
  obtain ⟨O', W, hO', hO, hW', hWb⟩ := hP
  have hO'' : (some O : Option (BitVec 64)) = some O' := hO'
  cases hO''
  let c : Pm := ⟨O, N0, SR, CH, b0, b1, b2, b3, W⟩
  have H := hoareG_conseq (P' := fun t => t = s0) (P := LPre (Rfa c) s0 (Bs c))
    (hoareG_eaBodyR hC hA (c := c) hW' hO hWb)
    (fun t _ ht => by
      subst ht
      exact ⟨⟨by rw [hloc]; exact hlO, by rw [hloc]; exact hlN, by rw [hloc]; exact hlB,
        by rw [hloc]; exact hlS, by rw [hloc]; exact hlC⟩, rfl, fun _ _ => rfl⟩)
    (fun r t _ _ h => h)
  have H1 := H s0 hs0 rfl (by rw [hr]; exact hg)
  rw [hr] at H1
  exact H1.2.2 v (by rw [hv])

end InitECandidate.Solver.MemSafe.MptE

#print axioms InitECandidate.Solver.MemSafe.MptE.funSpec_ea_ret
