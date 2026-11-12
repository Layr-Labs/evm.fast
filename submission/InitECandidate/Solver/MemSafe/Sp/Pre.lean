import InitECandidate.Solver.MemSafe.Sp.PhA

/-!
# Sp: the head of `payload_header` with cost (mirror of `Exb.ph_all`), up to `phMid`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Sp
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Exb

variable {σ : Type}

def bPreE (Bmid : Nat) : Nat := (1 + 2 + ((1 + cMz + 0) + (0 + (0 + (1 + 2 + (1 + 2 + (0 + ((1 + cKec + 0) + (0 + (0 + (0 + (1 + 2 + (0 + (0 + (0 + (0 + (0 + (0 + (0 + (0 + (0 + (0 + (0 + (1 + 2 + ((1 + cMz + 0) + (0 + (0 + (1 + 2 + (0 + (0 + (0 + (0 + (1 + 2 + (0 + (1 + 2 + (0 + (0 + Bmid)))))))))))))))))))))))))))))))))))))

/-- **The body.** -/
theorem ch_pre_all {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (haH : a.H = Hooks.guestHooksR (σ := σ)) (hfp : a.p0.fp = heapEnd) (hsp : a.p0.sp = scratchEnd)
    (hgr : a.sg.grows = true) (hPl : HypPlS σ) (hWd : HypWdFresh σ) {SI PL RAW : BitVec 64} {M0 : Mem}
    (hPE : PlE a PL) {E2 : Gam → Ptrs → Mem → LocalsH → Prop} {Bmid : Nat}
    (hmid : ∀ H TXR WR RH BH : BitVec 64, CH (PJ a (Trie.LV ((nm "txr", Wv TXR) :: phKvB PL H WR RH BH))
        (fun Γ q m g => EB a.p0 PL (RAW + BitVec.ofNat 64 32) H WR RH BH Γ q m g ∧ Trie.FBlk a.p0 TXR 32 Γ q ∧ H.toNat + 248 ≤ TXR.toNat)) phMid
      (PP a (fun _ => False) E2 (PhRx a.p0 a.s0.memory PL (RAW + BitVec.ofNat 64 32) H WR RH BH)) Bmid)
    (hPLe : PL = rd M0 (SI + BitVec.ofNat 64 0)) (hRAW : RAW = rd M0 (PL + BitVec.ofNat 64 0)) :
    CH (PJ a (Trie.LV [(nm "si", Wv SI)]) (fun Γ q m _ => m = M0 ∧ PhI PL (RAW + BitVec.ofNat 64 32) Γ q)) phBody
      (PP a (fun _ => False) E2 (PhRy a.p0 a.s0.memory PL (RAW + BitVec.ofNat 64 32))) (bPreE Bmid) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  have ht : ∀ (H : BitVec 64) (m mem : Mem) (w : BitVec 64), H.toNat + 248 ≤ heapEnd → True →
      ModifiesOnly (fun x => w.toNat ≤ x.toNat) m mem → H.toNat + 0 ≤ w.toNat → True := fun _ _ _ _ _ _ _ _ => trivial
  have hck2 : ∀ (H : BitVec 64) (off : Nat), 32 ≤ off → ∀ (m mem : Mem) (w : BitVec 64), H.toNat + 248 ≤ heapEnd →
      rd m (H + BitVec.ofNat 64 24) = RAW + BitVec.ofNat 64 32 →
      ModifiesOnly (fun x => w.toNat ≤ x.toNat) m mem → H.toNat + off ≤ w.toNat →
      rd mem (H + BitVec.ofNat 64 24) = RAW + BitVec.ofNat 64 32 := by
    intro H off ho m mem w hb hc hm hle
    have he : heapEnd < 2 ^ 63 := by decide
    have e : (H + BitVec.ofNat 64 24).toNat = H.toNat + 24 := ofNat_add_toNat (by omega)
    rw [← hc]
    exact Hooks.rd_congr (hm _ (by show ¬ w.toNat ≤ (H + BitVec.ofNat 64 24).toNat; rw [e]; omega))
  have hK : SumSpecA σ guestCtx a.Cb a.H (nm "keccak256") ⟨[.any, .any, .buf 32], [], [], false⟩ (fun _ _ _ => True)
      (fun _ s Γ x => CapPW [] s Γ x) (fun _ _ _ _ _ _ => True) := Trie.sa_cast hCb haH Ra.keccak_C
  unfold phBody
  refine ch_dec ha.hH (L1 := Trie.LV [(nm "pl", Wv PL), (nm "si", Wv SI)]) (L2 := fun _ => False) ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s Γ q _ hL _ hE v hv
    have h := iv_load hL (X := SI) (by simp) hv
    rw [hE.1, ← hPLe] at h
    subst h
    exact Trie.lv_new hL (by ph_freshL) _
  refine ch_dec ha.hH (L1 := Trie.LV [(nm "raw", Wv RAW), (nm "pl", Wv PL), (nm "si", Wv SI)]) (L2 := fun _ => False) ?_ ?_
    (fun _ _ _ h => h.elim)
  · intro s Γ q _ hL _ hE v hv
    have h := iv_load hL (X := PL) (by simp) hv
    rw [hE.1, ← hRAW] at h
    subst h
    exact Trie.lv_new hL (by ph_freshL) _
  refine ch_pre (ch_allocH ha haC hCb haH (kv := [(nm "raw", Wv RAW), (nm "pl", Wv PL), (nm "si", Wv SI)]) (PL := PL) (C := RAW + BitVec.ofNat 64 32) (by ph_freshL) ?_) (fun s _ h => ?pre1)
  intro H
  refine ch_seq (chMz <| ph_memzero ha haC hCb haH hfp hsp (x := nm "h") (B := H) (n := 248) (by norm_num) (by simp)
    (fun _ _ _ _ h => h.fH) (fun _ _ _ _ _ _ _ => trivial)) ?_
  refine ch_seq (chS <| ph_stH ha hfp hsp (off := 0) (by omega) (by simp) (fun _ _ _ _ _ _ _ => trivial)) ?_
  refine ch_seq (chS <| ph_stH ha hfp hsp (off := 8) (by omega) (by simp) (fun _ _ _ _ _ _ _ => trivial)) ?_
  refine ch_alloc ha haC hCb haH hfp hsp (x := nm "oh") (n := 32) (by ph_freshL) (by norm_num) (by norm_num) ?_
  intro OH
  refine ch_alloc ha haC hCb haH hfp hsp (x := nm "tmp") (n := 8) (by ph_freshL) (by norm_num) (by norm_num) ?_
  intro TMP
  -- st8 tmp, 192
  refine ch_seq (chSB <| pp_stByteAbove ha hfp hsp (Hb := H.toNat) (E' := EA a.p0 PL (RAW + BitVec.ofNat 64 32) H [(TMP, 8), (OH, 32)] fun _ => True)
    (fun Γ q m g h => ⟨h.bh, h.p0h, h.al⟩) ?_ ?_) ?_
  · intro s Γ q _ hL hE w hw
    rw [Trie.lv_ev hL (x := nm "tmp") (v := Wv TMP) (by simp)] at hw
    cases hw
    exact le_trans (by omega) (hE.abv (TMP, 8) (by simp))
  · intro s Γ q w mem _ hL hw hE hm
    exact ⟨hE.i, hE.bh, hE.p0h, hE.al, hE.top, hE.fH, hE.fbs, hE.abv, trivial⟩
  -- keccak256(tmp, 1, oh)
  refine ch_seq (chKec <| pp_call ha hK (funSpec_true _) (by simp) (fun h => by simp at h)
    (E' := EA a.p0 PL (RAW + BitVec.ofNat 64 32) H [(TMP, 8), (OH, 32)] fun _ => True) ?_ ?_) ?_
  · intro s Γ q _ hL hh hE vs hvs
    rw [evs_cons (Trie.lv_ev hL (x := nm "tmp") (v := Wv TMP) (by simp)) (evs_cons (ev_cw s 1)
      (evs_cons (Trie.lv_ev hL (x := nm "oh") (v := Wv OH) (by simp)) evs_nil))] at hvs
    cases hvs
    obtain ⟨hb1, hb2⟩ := Trie.fblk_sub (hE.fbs (OH, 32) (by simp)) (off := 0) (n := 32) (by omega) (by omega)
    exact ⟨Ra.ao_aab _ _ OH (by rw [hCb]; exact hb1), fun x hx => Or.inr (Or.inr (Or.inl (hb2 x (Ra.ac_aab hx)).2.1)),
      fun _ => trivial⟩
  · intro s st vs callee v Γ Γ' q q' _ hL hvs hE hLc hQ hh hext hh' hmo hnf hnfp hmd
    exact ea_step (heap_ord hh) (heap_ord hh') (Ra.layout_heap haC hh') hext (hnfp rfl) hmo (fun _ => trivial) hE
  refine ch_seq (chS <| ph_stH ha hfp hsp (off := 16) (by omega) (by simp) (fun _ _ _ _ _ _ _ => trivial)) ?_
  -- the coinbase
  refine ch_seq (chS <| pp_stCell ha
    (E' := EA a.p0 PL (RAW + BitVec.ofNat 64 32) H [(TMP, 8), (OH, 32)] fun m => rd m (H + BitVec.ofNat 64 24) = RAW + BitVec.ofNat 64 32)
    ?_ ?_ ?_) ?_
  · intro s Γ q _ hL hE v hv
    rw [ev_add2 (Trie.lv_ev hL (x := nm "raw") (v := Wv RAW) (by simp)) (ev_cw s 32)] at hv
    cases hv
    exact ⟨_, rfl⟩
  · intro s Γ q w _ hL hh hE hw
    rw [ev_add2 (Trie.lv_ev hL (x := nm "h") (v := Wv H) (by simp)) (ev_cw s 24)] at hw
    cases hw
    exact fblk_out (d := 24) (heap_ord hh) hE.fH (by omega)
  · intro s Γ q w x mem _ hL hh hw hx hE hrd hne
    rw [ev_add2 (Trie.lv_ev hL (x := nm "h") (v := Wv H) (by simp)) (ev_cw s 24)] at hw
    cases hw
    rw [ev_add2 (Trie.lv_ev hL (x := nm "raw") (v := Wv RAW) (by simp)) (ev_cw s 32)] at hx
    cases hx
    exact ⟨hE.i, hE.bh, hE.p0h, hE.al, hE.top, hE.fH, hE.fbs, hE.abv, hrd⟩
  refine ch_seq (chS <| ph_stH ha hfp hsp (off := 32) (by omega) (by simp) (hck2 H 32 (by omega))) ?_
  refine ch_alloc ha haC hCb haH hfp hsp (x := nm "txr") (n := 32) (by ph_freshL) (by norm_num) (by norm_num) ?_
  intro TXR
  refine ch_seq (chS <| ph_stH ha hfp hsp (off := 40) (by omega) (by simp) (hck2 H 40 (by omega))) ?_
  refine ch_seq (chS <| ph_stH ha hfp hsp (off := 48) (by omega) (by simp) (hck2 H 48 (by omega))) ?_
  refine ch_seq (chS <| ph_stH ha hfp hsp (off := 56) (by omega) (by simp) (hck2 H 56 (by omega))) ?_
  refine ch_seq (chS <| ph_stH ha hfp hsp (off := 64) (by omega) (by simp) (hck2 H 64 (by omega))) ?_
  refine ch_seq (chS <| ph_stH ha hfp hsp (off := 96) (by omega) (by simp) (hck2 H 96 (by omega))) ?_
  refine ch_seq (chS <| ph_stH ha hfp hsp (off := 104) (by omega) (by simp) (hck2 H 104 (by omega))) ?_
  refine ch_seq (chS <| ph_stH ha hfp hsp (off := 112) (by omega) (by simp) (hck2 H 112 (by omega))) ?_
  refine ch_seq (chS <| ph_stH ha hfp hsp (off := 120) (by omega) (by simp) (hck2 H 120 (by omega))) ?_
  refine ch_seq (chS <| ph_stH ha hfp hsp (off := 128) (by omega) (by simp) (hck2 H 128 (by omega))) ?_
  refine ch_seq (chS <| ph_stH ha hfp hsp (off := 136) (by omega) (by simp) (hck2 H 136 (by omega))) ?_
  refine ch_seq (chS <| ph_stH ha hfp hsp (off := 144) (by omega) (by simp) (hck2 H 144 (by omega))) ?_
  refine ch_alloc ha haC hCb haH hfp hsp (x := nm "z8") (n := 8) (by ph_freshL) (by norm_num) (by norm_num) ?_
  intro Z8
  refine ch_seq (chMz <| ph_memzero ha haC hCb haH hfp hsp (x := nm "z8") (B := Z8) (n := 8) (by norm_num) (by simp)
    (fun _ _ _ _ h => h.fbs (Z8, 8) (by simp)) ?_) ?_
  · intro s st Γ q hh hE hmd
    rw [← hE.ck]
    obtain ⟨-, h1, h2, h3⟩ := fblk_cell (d := 24) (heap_ord hh) hE.fH (by omega)
    obtain ⟨e, -, -, -⟩ := fblk_cell (d := 24) (heap_ord hh) hE.fH (by omega)
    refine Hooks.rd_congr (keep_of_mod haC hCb hh hmd h1 h2 h3 fun hac => ?_)
    have hov := Mod.argCells_mz hac
    have hab := hE.abv (Z8, 8) (by simp)
    have hal := (hE.fbs (Z8, 8) (by simp)).1
    obtain ⟨o1, o2⟩ := ovl_in (B := Z8) (n := 1 * (BitVec.ofNat 64 8).toNat + 0) hov hal
    simp only at hab
    omega
  refine ch_seq (chS <| ph_stH ha hfp hsp (off := 152) (by omega) (by simp) (hck2 H 152 (by omega))) ?_
  refine ch_decKeep ha.hH (by ph_freshL) ?_
  refine ch_seq (chS <| ph_stH ha hfp hsp (off := 160) (by omega) (by simp) (hck2 H 160 (by omega))) ?_
  refine ch_alloc ha haC hCb haH hfp hsp (x := nm "wr") (n := 32) (by ph_freshL) (by norm_num) (by norm_num) ?_
  intro WR
  refine ch_seq (chS <| ph_stH ha hfp hsp (off := 192) (by omega) (by simp) (hck2 H 192 (by omega))) ?_
  refine ch_seq (chS <| ph_stH ha hfp hsp (off := 200) (by omega) (by simp) (hck2 H 200 (by omega))) ?_
  refine ch_seq (chS <| ph_stH ha hfp hsp (off := 208) (by omega) (by simp) (hck2 H 208 (by omega))) ?_
  refine ch_seq (chS <| ph_stH ha hfp hsp (off := 216) (by omega) (by simp) (hck2 H 216 (by omega))) ?_
  refine ch_alloc ha haC hCb haH hfp hsp (x := nm "rh") (n := 32) (by ph_freshL) (by norm_num) (by norm_num) ?_
  intro RH
  refine ch_seq (chS <| ph_stH ha hfp hsp (off := 224) (by omega) (by simp) (hck2 H 224 (by omega))) ?_
  refine ch_alloc ha haC hCb haH hfp hsp (x := nm "bh") (n := 32) (by ph_freshL) (by norm_num) (by norm_num) ?_
  intro BH
  refine ch_seq (chS <| ph_stH ha hfp hsp (off := 232) (by omega) (by simp) (hck2 H 232 (by omega))) ?_
  refine ch_seq (chS <| ph_stH ha hfp hsp (off := 240) (by omega) (by simp) (hck2 H 240 (by omega))) ?_
  refine ch_rv (ch_pre (hmid H TXR WR RH BH) fun s _ h => ?_) fun Γ q m g v h => ⟨H, WR, RH, BH, h⟩
  obtain ⟨hL, Γ, q, he, hh, hE⟩ := h
  refine ⟨Trie.lv_mono hL ?_, Γ, q, he, hh, ⟨hE.i, hE.fH, hE.fbs (WR, 32) (by simp), hE.fbs (RH, 32) (by simp),
    hE.fbs (BH, 32) (by simp), hE.abv (WR, 32) (by simp), hE.abv (RH, 32) (by simp), hE.abv (BH, 32) (by simp), hE.ck⟩,
    hE.fbs (TXR, 32) (by simp), hE.abv (TXR, 32) (by simp)⟩
  intro p hp
  simp only [phKvB, List.mem_cons, List.not_mem_nil, or_false] at hp ⊢
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl <;> simp

  case pre1 =>
    obtain ⟨hL, Γ, q, he, hh, hE⟩ := h
    exact ⟨hL, Γ, q, he, hh, hE.2⟩

end InitECandidate.Solver.MemSafe.Sp
