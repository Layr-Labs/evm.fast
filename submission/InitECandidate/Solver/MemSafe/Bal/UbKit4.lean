import InitECandidate.Solver.MemSafe.Bal.UbKit3

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedSectionVars false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Bal
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

/-! ## Entry facts -/

structure UbEnt (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) : Prop where
  hord : p0.Ordered
  hL : Layout guestC p0 Γ0
  bs : GF (nm "bs") tBS Γ0 s0
  ts : GF (nm "ts") tTS Γ0 s0
  ba : GF (nm "bal_accounts") tHTd20 Γ0 s0
  kb : GF (nm "bal_key_buf") tB64 Γ0 s0
  ia : GF (nm "bal_idx_accts") tHTh28 Γ0 s0
  is : GF (nm "bal_idx_stor") tHTh60 Γ0 s0
  sk : GF (nm "sk_buf") tB64 Γ0 s0

structure UbF (Γ : Gam) (t : State σ) : Prop where
  bs : GF (nm "bs") tBS Γ t
  ts : GF (nm "ts") tTS Γ t
  ba : GF (nm "bal_accounts") tHTd20 Γ t
  kb : GF (nm "bal_key_buf") tB64 Γ t
  ia : GF (nm "bal_idx_accts") tHTh28 Γ t
  is : GF (nm "bal_idx_stor") tHTh60 Γ t
  sk : GF (nm "sk_buf") tB64 Γ t

theorem ub_facts {cs : List Cap} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} (E : UbEnt Γ0 s0 p0) {Γ : Gam}
    {t : State σ} (h : IV cs Γ0 s0 p0 Γ t) : UbF Γ t := by
  have hx := Struct.trk_ext h.1
  have g4 : ∀ g ∈ bal4, t.globals.lookup g = s0.globals.lookup g := h.2
  exact ⟨gf_persist hx (g4 _ (by simp [bal4])) E.bs, gf_persist hx (g4 _ (by simp [bal4])) E.ts,
    gf_persist hx (g4 _ (by simp [bal4])) E.ba, gf_persist hx (g4 _ (by simp [bal4])) E.kb,
    gf_persist hx (g4 _ (by simp [bal4])) E.ia, gf_persist hx (g4 _ (by simp [bal4])) E.is,
    gf_persist hx (g4 _ (by simp [bal4])) E.sk⟩

theorem nn_of_gf {g : MlS} {th : Nat} {Γ : Gam} {t : State σ} (h : GF g th Γ t) :
    ∃ B ∈ Γ, B.ty = th ∧ gword t g = some B.base := by
  obtain ⟨w, hw, o, ho, hob, hot⟩ := h
  exact ⟨o, ho, hot, by rw [hw, hob]⟩

theorem UbF.bsNN {Γ : Gam} {t : State σ} (F : UbF Γ t) : BsNN t Γ := nn_of_gf F.bs
theorem UbF.tsNN {Γ : Gam} {t : State σ} (F : UbF Γ t) : TsNN t Γ := nn_of_gf F.ts
theorem UbF.balNN {Γ : Gam} {t : State σ} (F : UbF Γ t) : BalNN t Γ := nn_of_gf F.ba

theorem UbF.reqGc {Γ : Gam} {t : State σ} (F : UbF Γ t) : ReqOK gcCaps t Γ := by
  intro c hc hne
  obtain ⟨o, ho, hty, hg⟩ := nn_of_gf F.sk
  simp only [gcCaps, List.mem_cons, List.not_mem_nil, or_false] at hc
  rcases hc with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact ⟨o, ho, hty, hg⟩
  all_goals exact absurd rfl hne

/-! ## Callee preconditions -/

theorem iaPre_of {Γ : Gam} {t : State σ} (F : UbF Γ t) {K : BitVec 64} (hk : SrcKey Γ K 20 tHTb20) :
    IaPre [.val (.word K)] t Γ := ⟨K, rfl, F.bsNN, hk, F.kb, F.ia⟩

theorem isPre_of {Γ : Gam} {t : State σ} (F : UbF Γ t) {K KEY : BitVec 64} (hk : SrcKey Γ K 20 tHTb20) :
    IsPre [.val (.word K), .val (.word KEY)] t Γ := ⟨K, KEY, rfl, F.bsNN, hk, F.kb, F.is⟩

theorem bcPre_of {Γ : Gam} {t : State σ} (F : UbF Γ t) {K IDX A B C D : BitVec 64} (hk : SrcKey Γ K 20 tHTd20) :
    BcPre [.val (.word K), .val (.word IDX), wv [A, B, C, D]] t Γ := ⟨K, IDX, A, B, C, D, rfl, F.balNN, hk⟩

theorem ncPre_of {Γ : Gam} {t : State σ} (F : UbF Γ t) {K IDX N : BitVec 64} (hk : SrcKey Γ K 20 tHTd20) :
    NcPre [.val (.word K), .val (.word IDX), .val (.word N)] t Γ := ⟨K, IDX, N, rfl, F.balNN, hk⟩

theorem ccPre_of {Γ : Gam} {t : State σ} (F : UbF Γ t) {K IDX C L : BitVec 64} (hk : SrcKey Γ K 20 tHTd20) :
    CcPre [.val (.word K), .val (.word IDX), .val (.word C), .val (.word L)] t Γ :=
  ⟨K, IDX, C, L, rfl, F.balNN, hk⟩

theorem swPre_of {Γ : Gam} {t : State σ} (F : UbF Γ t) {K SL IDX A B C D : BitVec 64} (hk : SrcKey Γ K 20 tHTd20)
    (hs : SrcKey Γ SL 32 tHTl32) :
    SwPre [.val (.word K), .val (.word SL), .val (.word IDX), wv [A, B, C, D]] t Γ :=
  ⟨K, SL, IDX, A, B, C, D, rfl, F.balNN, hk, hs⟩

theorem rsPre_of {Γ : Gam} {t : State σ} (F : UbF Γ t) {K SL IDX : BitVec 64} :
    RsPre [.val (.word K), .val (.word SL), .val (.word IDX)] t Γ := ⟨K, SL, IDX, rfl, F.balNN⟩

theorem rcPre_bal {Γ : Gam} {t : State σ} (F : UbF Γ t) {K IDX : BitVec 64} :
    RcPre [.val (.word K), .val (.word (BitVec.ofNat 64 16)), .val (.word (BitVec.ofNat 64 40)), .val (.word IDX)] t Γ :=
  ⟨K, _, _, IDX, rfl, F.balNN, 2, 73, 40, by decide, by decide, by decide, by decide, rfl, rfl⟩

theorem rcPre_nonce {Γ : Gam} {t : State σ} (F : UbF Γ t) {K IDX : BitVec 64} :
    RcPre [.val (.word K), .val (.word (BitVec.ofNat 64 24)), .val (.word (BitVec.ofNat 64 16)), .val (.word IDX)] t Γ :=
  ⟨K, _, _, IDX, rfl, F.balNN, 3, 74, 16, by decide, by decide, by decide, by decide, rfl, rfl⟩

theorem rcPre_code {Γ : Gam} {t : State σ} (F : UbF Γ t) {K IDX : BitVec 64} :
    RcPre [.val (.word K), .val (.word (BitVec.ofNat 64 32)), .val (.word (BitVec.ofNat 64 24)), .val (.word IDX)] t Γ :=
  ⟨K, _, _, IDX, rfl, F.balNN, 4, 75, 24, by decide, by decide, by decide, by decide, rfl, rfl⟩

/-! ## Found items -/

/-- The result of `htab_item` on a table of type `th0`: a triple whose key is a source key and whose value
is a typed pointer when found. -/
def ItemG (th0 : Nat) (v : ValueHOL 64) (Γ : Gam) : Prop :=
  ∃ a b c : BitVec 64, v = wv [a, b, c] ∧
    (a ≠ 0 → Fits Γ (valK th0) c ∧ ∀ n th, n ≤ htKL th0 → th0 ≠ th → SrcKey Γ b n th)

theorem itemG_mono (th0 : Nat) (v : ValueHOL 64) : MonoF (ItemG th0 v) :=
  fun Γ Γ1 hx ⟨a, b, c, hv, h⟩ => ⟨a, b, c, hv, fun ha =>
    ⟨fits_ext hx (h ha).1, fun n th h1 h2 => srcKey_ext hx ((h ha).2 n th h1 h2)⟩⟩

section ubk4
variable {cs : List Cap} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

/-- `var rn = htab_item(tab, i); k` on a heap table of type `th0`. -/
theorem gitemE (hH : HooksLawful guestC (guestHooksR (σ := σ))) {rn : MlS} {k : ProgHOL 64}
    {tabv iv : MlS} {E Eo : Env} {F Fo : Gam → Prop} {th0 : Nat} {TW IW : BitVec 64}
    (hth : hkOf th0 = .tab) (hhp : (guestC.ty th0).region = .heap)
    (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0)
    (hF : MonoF F) (hEo : Eo rn = none) (ht : E tabv = some (.val (.word TW))) (hi : E iv = some (.val (.word IW)))
    (hTab : ∀ Γ, F Γ → ∃ S ∈ Γ, S.base = TW ∧ S.ty = th0)
    (hk : ∀ v, HoareG σ guestCtx (PE cs Γ0 s0 p0 (E.set rn v) (fun Γ => F Γ ∧ ItemG th0 v Γ)) k
      (RR cs Γ0 s0 p0 (LE Eo Fo))) :
    HoareG σ guestCtx (PE cs Γ0 s0 p0 E F)
      (.decCall rn (.comb [.one, .one, .one]) (nm "htab_item") [lv tabv, lv iv] k) (RR cs Γ0 s0 p0 (LE Eo Fo)) := by
  refine gdecCallE hH (sumSpec_htab_item_src (σ := σ)) (by decide_cbv) (fun g _ => by simp [itemSg])
    hord0 hL0 (ItemG th0) hF (fun v => itemG_mono th0 v) hEo ?_ ?_ hk
  · intro Γ s hP vs hvs callee
    obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨a2, r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
    rw [evs_nil] at hr2
    cases hr2
    rw [le_ev hP.2 ht] at ha1
    rw [le_ev hP.2 hi] at ha2
    cases ha1; cases ha2
    obtain ⟨pT, hpT, -⟩ := id hP.1.1
    obtain ⟨S, hS, hSb, hSt⟩ := hTab Γ hP.2.2
    refine ⟨⟨pT, hpT, argsOK_allAny (by simp [itemSg]) rfl⟩, ⟨S, hS, ?_, ?_, IW, ?_⟩,
      fun a h => absurd h (argCells_noBuf (by simp [itemSg])), fun y _ h => absurd h id⟩
    · rw [hSt]; exact hth
    · rw [hSt]; exact hhp
    · rw [hSb]
  · intro Γ s vs callee v Γ1 st hP hvs hsh hT2 hinfo hq
    obtain ⟨ws, hws, rfl⟩ := eq_wv_of_shapeEq' (k := 3) (by
      have := (shapeEqHOL_eq_true _ _).mp hsh
      exact (shapeEqHOL_eq_true _ _).mpr this)
    match ws, hws with
    | [a, b, c], _ =>
    obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨a2, r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
    rw [evs_nil] at hr2
    cases hr2
    rw [le_ev hP.2 ht] at ha1
    rw [le_ev hP.2 hi] at ha2
    cases ha1; cases ha2
    obtain ⟨p, p', hp, hp', hm, hx, hnf⟩ := hinfo
    obtain ⟨S, hS, hSb, hSt⟩ := hTab Γ hP.2.2
    obtain ⟨S', hS', hS'b, hS't, -⟩ := hx S hS
    refine ⟨a, b, c, rfl, fun ha => ?_⟩
    have hq' := hq (wv [a, b, c]) rfl a b c rfl ha S' hS' (by simp [hS'b, hSb])
      (by rw [hS't, hSt]; exact hth) (by rw [hS't, hSt]; exact hhp)
    rw [hS't, hSt] at hq'
    exact hq'

theorem rf0_ne {t : State σ} {x : MlS} {a b c : BitVec 64} (hs : t.locals.lookup x = some (wv [a, b, c]))
    (h : CondTrue t (.cmp .notEqual (.rfield 0 (lv x)) (cw 0))) : a ≠ 0 := by
  have hx : ev t (.rfield 0 (lv x)) = some (.val (.word a)) :=
    ev_rfield_wv (ws := [a, b, c]) (by rw [ev_lv]; exact hs) (i := 0) (by simp)
  obtain ⟨w, hw, hw0⟩ := condTrue_iff.mp h
  obtain ⟨x, y, hx', hy', hxy⟩ := cmp_true hw hw0
  have e1 : x = a := by have := hx'.symm.trans hx; simpa using this
  rw [ev_cw] at hy'
  have e2 : y = 0 := by have := hy'.symm; simpa using this
  intro h0
  have hx0 : x = 0 := by rw [e1]; exact h0
  rw [hx0, e2] at hxy
  simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at hxy

theorem le_rf {E : Env} {F : Gam → Prop} {Γ : Gam} {t : State σ} (h : LE E F Γ t) {x : MlS} {ws : List (BitVec 64)}
    (hx : E x = some (wv ws)) {i : Nat} (hi : i < ws.length) :
    ev t (.rfield i (lv x)) = some (.val (.word ws[i])) := ev_rfield_wv (le_ev' h hx) hi

theorem evs_len {s : State σ} : ∀ {as : List (ExpHOL 64)} {vs : List (ValueHOL 64)},
    evs s as = some vs → vs.length = as.length
  | [], vs, h => by rw [evs_nil] at h; cases h; rfl
  | a :: as, vs, h => by
    obtain ⟨v, vs', rfl, -, h2⟩ := evs_cons_inv h
    simp [evs_len h2]

theorem hk_G {n : MlS} {E : Env} {F : Gam → Prop} {G : ValueHOL 64 → Prop} {k : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (h : ∀ v, G v → HoareG σ guestCtx (PE cs Γ0 s0 p0 (E.set n v) F) k Q) :
    ∀ v, HoareG σ guestCtx (PE cs Γ0 s0 p0 (E.set n v) (fun Γ => F Γ ∧ G v)) k Q :=
  fun v s hs ⟨Γ, hIV, hl, hF, hG⟩ hg => h v hG s hs ⟨Γ, hIV, hl, hF⟩ hg

end ubk4

end InitECandidate.Solver.MemSafe.Bal
