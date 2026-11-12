import InitECandidate.Solver.MemSafe.Exb.PhA

/-!
# `payload_header`: the spec

`funSpec_payload_header (hPl : HypPlS σ) (hWd : HypWdFresh σ)`: an above-writer spec with growth. From `G` at a heap-only `Γ` (`Below Γ p.hp`) and `PhPre` (`si`'s payload is a `tPL` object),
a return ends with `G` at `Γ' ⊇ Γ`, writing only scalar cells of `Γ` and cells at or above the entry heap pointer (or below the heap), and `PhRx`: the result is a fresh header block whose
coinbase cell holds `C`, a 20-byte range in a `tVAL` object; the global `wd_rlp_slices` holds a fresh array of `NW` slices in `tVAL` objects.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Exb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type}

/-- The first allocation: the header. -/
theorem ph_allocH {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (haH : a.H = Hooks.guestHooksR (σ := σ)) {Rv : Gam → Ptrs → Mem → LocalsH → ValueHOL 64 → Prop}
    {kv : List (MlS × ValueHOL 64)} (hx : ∀ p ∈ kv, p.1 ≠ nm "h") {PL C : BitVec 64} {k : ProgHOL 64} {L2 : LocalsH → Prop}
    {E2 : Gam → Ptrs → Mem → LocalsH → Prop}
    (hk : ∀ H, HoareG σ guestCtx (PJ a (Trie.LV ((nm "h", Wv H) :: kv)) (EA a.p0 PL C H [] fun _ => True)) k (PP a (fun _ => False) E2 Rv)) :
    HoareG σ guestCtx (PJ a (Trie.LV kv) (fun Γ q _ _ => PhI PL C Γ q)) (.decCall (nm "h") .one (nm "alloc") [cw 248] k) (PP a L2 E2 Rv) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  have hZ : (BitVec.ofNat 64 248).toNat = 248 := by decide
  refine pp_decCall ha (Trie.sa_cast hCb haH Dn.alloc_R) (Trie.funSpec_allocRel hX) (by simp) (fun h => by simp at h)
    (L1 := fun v m => ∃ B : BitVec 64, v = Wv B ∧ Trie.LV ((nm "h", v) :: kv) m)
    (E1 := fun v Γ q m g => ∀ B : BitVec 64, v = Wv B → EA a.p0 PL C B [] (fun _ => True) Γ q m g) (L2 := fun _ => False)
    ?_ ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s Γ q _ hL hh hE vs hvs
    exact ⟨(anyArgsG (by simp) rfl hvs).1, fun y hy => (argCells_any (by simp) hy).elim, fun _ => trivial⟩
  · intro s st vs callee v Γ Γ' q q' _ hL hvs hE hLc hQ hh hext hh' hmo hnf hnfp hmd hret hsh B hB
    rw [evs_cons (ev_cw s 248) evs_nil] at hvs
    cases hvs
    have hnoarg : ∀ y, ¬ ArgCells ([.any] : List PT) [Wv (BitVec.ofNat 64 248)] y := fun y => argCells_any (by simp)
    have co : CO a ⟨[PT.any], [RT.freshArg 0 1 0], [], false⟩ [Wv (BitVec.ofNat 64 248)] Γ Γ' q q' s st (.returned v) :=
      ⟨hh, hext, hh', hmo, hnf, hnfp, fun y hw hal => hmd y hw (hnoarg y) (by rintro ⟨-, c, hc, -⟩; simp at hc) hal,
        fun v' hv' => by cases hv'; exact hret⟩
    obtain ⟨H', hv', hHn, hFB, hmem⟩ := Trie.alloc_fblk haC rfl co hLc rfl (by rw [hZ])
    rw [hB] at hv'
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hv'
    subst hv'
    rw [hZ] at hFB
    have hord' := heap_ord hh'
    have hLy := Ra.layout_heap haC hh'
    have hmo0 := hh.2.2.1.1
    have hq := hFB.2.2.2.1
    have hqe := hord'.2.1
    exact ⟨phI_step hord' hLy hext (hnfp rfl) hmo hE, below_nf hord' hLy (hnfp rfl) (by rw [hHn]; exact hE.2.1),
      by rw [hHn]; exact hmo0, hFB.1, by omega, hFB, (fun b hb => by cases hb), (fun b hb => by cases hb), trivial⟩
  · intro s st v hL hsh
    obtain ⟨B, rfl⟩ := val_of_shapeEq_one' hsh
    exact ⟨B, rfl, Trie.lv_new (s := { st with locals := s.locals }) hL hx _⟩
  · intro v
    by_cases hw : ∃ B : BitVec 64, v = Wv B
    swap
    · exact hoareG_false fun s _ h => hw (by obtain ⟨B, hB, -⟩ := h.1; exact ⟨B, hB⟩)
    obtain ⟨B, rfl⟩ := hw
    exact hoareG_pre (hk B) fun s _ ⟨⟨B', hB', hL⟩, Γ, q, he, hh, hE⟩ => by
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hB'
      subst hB'
      exact ⟨hL, Γ, q, he, hh, hE _ rfl⟩

/-- `var x = e; body` when `x` is untracked. -/
theorem pp_decKeep {a : Act σ} (hH : HooksLawful a.C a.H) {Rv : Gam → Ptrs → Mem → LocalsH → ValueHOL 64 → Prop}
    {kv : List (MlS × ValueHOL 64)} {x : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64} {L2 : LocalsH → Prop}
    {E E2 : Gam → Ptrs → Mem → LocalsH → Prop} (hx : ∀ p ∈ kv, p.1 ≠ x)
    (hk : HoareG σ guestCtx (PJ a (Trie.LV kv) E) body (PP a (fun _ => False) E2 Rv)) :
    HoareG σ guestCtx (PJ a (Trie.LV kv) E) (.dec x sh e body) (PP a L2 E2 Rv) :=
  pp_dec hH (fun s Γ q _ hL _ _ v _ => Trie.lv_set hL hx v) hk (fun _ _ _ h => h.elim)

/-- The result with the header and its buffers existential. -/
def PhRy (p0 : Ptrs) (M0 : Mem) (PL C : BitVec 64) (Γ : Gam) (q : Ptrs) (m : Mem) (g : LocalsH) (v : ValueHOL 64) : Prop :=
  ∃ H WR RH BH : BitVec 64, PhRx p0 M0 PL C H WR RH BH Γ q m g v

/-- **The body.** -/
theorem ph_all {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (haH : a.H = Hooks.guestHooksR (σ := σ)) (hfp : a.p0.fp = heapEnd) (hsp : a.p0.sp = scratchEnd)
    (hgr : a.sg.grows = true) (hPl : HypPlS σ) (hWd : HypWdFresh σ) {SI PL RAW : BitVec 64} {M0 : Mem}
    (hPE : PlE a PL) (hPLe : PL = rd M0 (SI + BitVec.ofNat 64 0)) (hRAW : RAW = rd M0 (PL + BitVec.ofNat 64 0))
    {E2 : Gam → Ptrs → Mem → LocalsH → Prop} :
    HoareG σ guestCtx (PJ a (Trie.LV [(nm "si", Wv SI)]) (fun Γ q m _ => m = M0 ∧ PhI PL (RAW + BitVec.ofNat 64 32) Γ q)) phBody
      (PP a (fun _ => False) E2 (PhRy a.p0 a.s0.memory PL (RAW + BitVec.ofNat 64 32))) := by
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
  refine pp_dec ha.hH (L1 := Trie.LV [(nm "pl", Wv PL), (nm "si", Wv SI)]) (L2 := fun _ => False) ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s Γ q _ hL _ hE v hv
    have h := iv_load hL (X := SI) (by simp) hv
    rw [hE.1, ← hPLe] at h
    subst h
    exact Trie.lv_new hL (by ph_freshL) _
  refine pp_dec ha.hH (L1 := Trie.LV [(nm "raw", Wv RAW), (nm "pl", Wv PL), (nm "si", Wv SI)]) (L2 := fun _ => False) ?_ ?_
    (fun _ _ _ h => h.elim)
  · intro s Γ q _ hL _ hE v hv
    have h := iv_load hL (X := PL) (by simp) hv
    rw [hE.1, ← hRAW] at h
    subst h
    exact Trie.lv_new hL (by ph_freshL) _
  refine hoareG_pre (ph_allocH ha haC hCb haH (by ph_freshL) ?_) fun s _ ⟨hL, Γ, q, he, hh, hE⟩ => ⟨hL, Γ, q, he, hh, hE.2⟩
  intro H
  refine pp_seq (ph_memzero ha haC hCb haH hfp hsp (x := nm "h") (B := H) (n := 248) (by norm_num) (by simp)
    (fun _ _ _ _ h => h.fH) (fun _ _ _ _ _ _ _ => trivial)) ?_
  refine pp_seq (ph_stH ha hfp hsp (off := 0) (by omega) (by simp) (fun _ _ _ _ _ _ _ => trivial)) ?_
  refine pp_seq (ph_stH ha hfp hsp (off := 8) (by omega) (by simp) (fun _ _ _ _ _ _ _ => trivial)) ?_
  refine ph_alloc ha haC hCb haH hfp hsp (x := nm "oh") (n := 32) (by ph_freshL) (by norm_num) (by norm_num) ?_
  intro OH
  refine ph_alloc ha haC hCb haH hfp hsp (x := nm "tmp") (n := 8) (by ph_freshL) (by norm_num) (by norm_num) ?_
  intro TMP
  -- st8 tmp, 192
  refine pp_seq (pp_stByteAbove ha hfp hsp (Hb := H.toNat) (E' := EA a.p0 PL (RAW + BitVec.ofNat 64 32) H [(TMP, 8), (OH, 32)] fun _ => True)
    (fun Γ q m g h => ⟨h.bh, h.p0h, h.al⟩) ?_ ?_) ?_
  · intro s Γ q _ hL hE w hw
    rw [Trie.lv_ev hL (x := nm "tmp") (v := Wv TMP) (by simp)] at hw
    cases hw
    exact le_trans (by omega) (hE.abv (TMP, 8) (by simp))
  · intro s Γ q w mem _ hL hw hE hm
    exact ⟨hE.i, hE.bh, hE.p0h, hE.al, hE.top, hE.fH, hE.fbs, hE.abv, trivial⟩
  -- keccak256(tmp, 1, oh)
  refine pp_seq (pp_call ha hK (funSpec_true _) (by simp) (fun h => by simp at h)
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
  refine pp_seq (ph_stH ha hfp hsp (off := 16) (by omega) (by simp) (fun _ _ _ _ _ _ _ => trivial)) ?_
  -- the coinbase
  refine pp_seq (pp_stCell ha
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
  refine pp_seq (ph_stH ha hfp hsp (off := 32) (by omega) (by simp) (hck2 H 32 (by omega))) ?_
  refine ph_alloc ha haC hCb haH hfp hsp (x := nm "txr") (n := 32) (by ph_freshL) (by norm_num) (by norm_num) ?_
  intro TXR
  refine pp_seq (ph_stH ha hfp hsp (off := 40) (by omega) (by simp) (hck2 H 40 (by omega))) ?_
  refine pp_seq (ph_stH ha hfp hsp (off := 48) (by omega) (by simp) (hck2 H 48 (by omega))) ?_
  refine pp_seq (ph_stH ha hfp hsp (off := 56) (by omega) (by simp) (hck2 H 56 (by omega))) ?_
  refine pp_seq (ph_stH ha hfp hsp (off := 64) (by omega) (by simp) (hck2 H 64 (by omega))) ?_
  refine pp_seq (ph_stH ha hfp hsp (off := 96) (by omega) (by simp) (hck2 H 96 (by omega))) ?_
  refine pp_seq (ph_stH ha hfp hsp (off := 104) (by omega) (by simp) (hck2 H 104 (by omega))) ?_
  refine pp_seq (ph_stH ha hfp hsp (off := 112) (by omega) (by simp) (hck2 H 112 (by omega))) ?_
  refine pp_seq (ph_stH ha hfp hsp (off := 120) (by omega) (by simp) (hck2 H 120 (by omega))) ?_
  refine pp_seq (ph_stH ha hfp hsp (off := 128) (by omega) (by simp) (hck2 H 128 (by omega))) ?_
  refine pp_seq (ph_stH ha hfp hsp (off := 136) (by omega) (by simp) (hck2 H 136 (by omega))) ?_
  refine pp_seq (ph_stH ha hfp hsp (off := 144) (by omega) (by simp) (hck2 H 144 (by omega))) ?_
  refine ph_alloc ha haC hCb haH hfp hsp (x := nm "z8") (n := 8) (by ph_freshL) (by norm_num) (by norm_num) ?_
  intro Z8
  refine pp_seq (ph_memzero ha haC hCb haH hfp hsp (x := nm "z8") (B := Z8) (n := 8) (by norm_num) (by simp)
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
  refine pp_seq (ph_stH ha hfp hsp (off := 152) (by omega) (by simp) (hck2 H 152 (by omega))) ?_
  refine pp_decKeep ha.hH (by ph_freshL) ?_
  refine pp_seq (ph_stH ha hfp hsp (off := 160) (by omega) (by simp) (hck2 H 160 (by omega))) ?_
  refine ph_alloc ha haC hCb haH hfp hsp (x := nm "wr") (n := 32) (by ph_freshL) (by norm_num) (by norm_num) ?_
  intro WR
  refine pp_seq (ph_stH ha hfp hsp (off := 192) (by omega) (by simp) (hck2 H 192 (by omega))) ?_
  refine pp_seq (ph_stH ha hfp hsp (off := 200) (by omega) (by simp) (hck2 H 200 (by omega))) ?_
  refine pp_seq (ph_stH ha hfp hsp (off := 208) (by omega) (by simp) (hck2 H 208 (by omega))) ?_
  refine pp_seq (ph_stH ha hfp hsp (off := 216) (by omega) (by simp) (hck2 H 216 (by omega))) ?_
  refine ph_alloc ha haC hCb haH hfp hsp (x := nm "rh") (n := 32) (by ph_freshL) (by norm_num) (by norm_num) ?_
  intro RH
  refine pp_seq (ph_stH ha hfp hsp (off := 224) (by omega) (by simp) (hck2 H 224 (by omega))) ?_
  refine ph_alloc ha haC hCb haH hfp hsp (x := nm "bh") (n := 32) (by ph_freshL) (by norm_num) (by norm_num) ?_
  intro BH
  refine pp_seq (ph_stH ha hfp hsp (off := 232) (by omega) (by simp) (hck2 H 232 (by omega))) ?_
  refine pp_seq (ph_stH ha hfp hsp (off := 240) (by omega) (by simp) (hck2 H 240 (by omega))) ?_
  refine pp_rv (hoareG_pre (ph_mid ha haC hCb haH hfp hsp hgr hPl hWd hPE (PL := PL) (C := RAW + BitVec.ofNat 64 32) (H := H)
    (TXR := TXR) (WR := WR) (RH := RH) (BH := BH)) fun s _ ⟨hL, Γ, q, he, hh, hE⟩ => ?_) fun Γ q m g v h => ⟨H, WR, RH, BH, h⟩
  refine ⟨Trie.lv_mono hL ?_, Γ, q, he, hh, ⟨hE.i, hE.fH, hE.fbs (WR, 32) (by simp), hE.fbs (RH, 32) (by simp),
    hE.fbs (BH, 32) (by simp), hE.abv (WR, 32) (by simp), hE.abv (RH, 32) (by simp), hE.abv (BH, 32) (by simp), hE.ck⟩,
    hE.fbs (TXR, 32) (by simp), hE.abv (TXR, 32) (by simp)⟩
  intro p hp
  simp only [phKvB, List.mem_cons, List.not_mem_nil, or_false] at hp ⊢
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl <;> simp

def phSig : Sig := ⟨[.any], [], [], true⟩

/-- `si`'s payload is a `tPL` object. -/
def PhPre (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ SI : BitVec 64, vs = [Wv SI] ∧ ∃ o ∈ Γ, o.base = rd s.memory (SI + BitVec.ofNat 64 0) ∧ o.ty = Types.tPL

/-- **`payload_header`'s spec.** -/
theorem funSpec_payload_header (hPl : HypPlS σ) (hWd : HypWdFresh σ) :
    FunSpec σ guestCtx (nm "payload_header") (fun vs s r t => ∀ v, r = .returned v → ∀ (Γ : Gam) (p : Ptrs),
      G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s → ptrsOf s = some p → Aw.Below Γ p.hp → PhPre vs s Γ →
      ∃ (Γ' : Gam) (q' : Ptrs) (PL C : BitVec 64), G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ' t ∧ ptrsOf t = some q' ∧ Ext Γ Γ' ∧
        p.hp ≤ q'.hp ∧ NewFresh Γ Γ' (gp0 p) q' ∧
        ModifiesOnly (fun x => WCell Types.guestC Γ x ∨ ¬ (gp0 p).Allocated x.toNat) s.memory t.memory ∧
        (∀ g ∈ Types.guestC.PG, t.globals.lookup g = s.globals.lookup g) ∧
        PhRy (gp0 p) s.memory PL C Γ' q' t.memory t.globals v ∧
        ∀ SI : BitVec 64, vs = [Wv SI] → PL = rd s.memory (SI + BitVec.ofNat 64 0)) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  intro vs body callee rs hl s hs hloc r hr v hv Γ p hG hp hB hPre
  subst hv
  obtain ⟨SI, rfl, o, ho, hb, ht⟩ := hPre
  have hl' := hl
  rw [hX] at hl'
  obtain ⟨rfl, -, hlen, hbind⟩ := MemSafe.lookupCode_gen code_ph hl'
  have hargs : ArgsOK Types.guestC Γ (gp0 p) phSig.params [Wv SI] := argsOK_any (by simp [phSig]) rfl
  obtain ⟨ha, hh⟩ := ph_entry (sg := phSig) hF hG hp hargs
  have hL0 : Trie.LV [(nm "si", Wv SI)] s.locals := by
    intro q hq
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hq
    subst hq
    rw [hloc]
    exact (hbind 0 (by decide) (by simp)).1
  obtain ⟨-, -, hS⟩ := hPl Γ s o hG ho ht
  rw [txF_eq hb 0] at hS
  have hI : PhI (rd s.memory (SI + BitVec.ofNat 64 0)) (rd s.memory (rd s.memory (SI + BitVec.ofNat 64 0) + BitVec.ofNat 64 0) + BitVec.ofNat 64 32) Γ p :=
    ⟨⟨o, ho, hb, ht⟩, hB, hS⟩
  obtain ⟨p2, hp2, hord2, hL2, -⟩ := id hG
  obtain rfl : p = p2 := (Option.some.inj (hp2.symm.trans hp)).symm
  have hmin : (Types.guestC.ty Types.tPL).minSz = 136 := by decide
  have hPE : PlE (phA phSig [Wv SI] s Γ p) (rd s.memory (SI + BitVec.ofNat 64 0)) := by
    refine ⟨rfl, fun x => argCells_any (by simp [phA, actOf, phSig]), ⟨o, ho, hb, ht, ?_⟩, ?_⟩
    · have := (hL2.1 o ho).2.2.2.1
      rw [ht, hmin] at this
      exact this
    · intro o' ho' ht' k hk
      have hc := cell_toNat hord2 hL2 ho' hk
      have hlive := (hL2.1 o' ho').2.2.2.2
      have hreg : (Types.guestC.ty o'.ty).region = .heap := by rw [ht']; decide
      rw [hreg] at hlive
      unfold Region.Live at hlive
      have e0 : (phA phSig [Wv SI] s Γ p).p0 = gp0 p := rfl
      rw [e0]
      unfold Ptrs.Allocated gp0
      simp only
      unfold Obj.HasSlot at hk
      unfold Obj.hi Obj.lo at *
      omega
  have H := ph_all ha rfl rfl rfl rfl rfl rfl hPl hWd hPE (SI := SI) (M0 := s.memory) rfl rfl (E2 := fun _ _ _ _ => True)
    s hs ⟨hL0, Γ, p, ext_refl _, hh, rfl, hI⟩ (by rw [hr]; simp [Good])
  rw [hr] at H
  obtain ⟨Γ', q', he, hh', hR⟩ := (H.2 _ rfl).2 _ rfl
  refine ⟨Γ', q', _, _, hh'.1, hh'.2.1, he, hh'.2.2.1.1, hh'.2.2.2.2.1, fun x hx => hh'.2.2.2.2.2.1 x fun hf => hx ?_,
    fun g hg => hh'.2.2.2.2.2.2.1 g hg (by simp [phA, actOf, phSig]), hR, fun SI' hSI' => by
      simp only [Wv, List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hSI'
      subst hSI'
      rfl⟩
  rcases hf with h | h | h | ⟨-, c, hc, -⟩
  · exact Or.inl h
  · exact absurd h (argCells_any (by simp [phA, actOf, phSig]))
  · exact Or.inr h
  · cases hc

end InitECandidate.Solver.MemSafe.Exb

#print axioms InitECandidate.Solver.MemSafe.Exb.ph_all
#print axioms InitECandidate.Solver.MemSafe.Exb.funSpec_payload_header
