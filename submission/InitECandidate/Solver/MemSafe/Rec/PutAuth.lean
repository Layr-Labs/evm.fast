import InitECandidate.Solver.MemSafe.Rec.PutAcc

set_option autoImplicit false

/-!
# `tx_put_authorizations`: the writer spec

**`wspec_tx_put_authorizations hC hA hE1 hE2`**:
`WSpec σ X "tx_put_authorizations" (PreAu AUPf) (FAu AUPf)`. Every item writes its list header
(`hdrLen pl_i`) and its six fields; a field writes at most its share of `pl_i`
(`tx_put_u256 ≤ tx_u256_encoded_len`, exact for the address and the two words), so the cursor
stays `≤ hdrLen AU + Σ_{j ≤ i} (hdrLen pl_j + pl_j)`; a `tx_put_u256` footprint may reach one
byte past its length (`fuV ≤ tuelV + 1`), and `hdrLen AU ≤ 6` (`AU ≤ 147 N`, `N < 2^26`) leaves
room. The records lie below `D` and below `heap_ptr` (`PreAu`), so neither the writes nor the
temporaries of `tx_put_u256` (entry free heap) change them.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type} {X : Ctx 64}

/-! ## Code -/

def tpuLoop : ProgHOL 64 :=
  .dec (nm "a") .one (.op .add [lv (nm "recs"), .panop .mul [lv (nm "i"), cw 120]])
    (.decCall (nm "pl") .one (nm "auth_payload_len") [lv (nm "a")]
      (.seq (wcall "rlp_encode_list_header" [lv (nm "p"), lv (nm "pl")])
      (.seq padv
      (.seq (wcall "tx_put_u256" [lv (nm "p"), .load sh4 (.op .add [lv (nm "a"), cw 0])])
      (.seq padv
      (.seq (wcall "rlp_encode_bytes" [lv (nm "p"), .load .one (.op .add [lv (nm "a"), cw 32]), cw 20])
      (.seq padv
      (.seq (wcall "rlp_encode_word" [lv (nm "p"), .load .one (.op .add [lv (nm "a"), cw 40])])
      (.seq padv
      (.seq (wcall "rlp_encode_word" [lv (nm "p"), .load .one (.op .add [lv (nm "a"), cw 48])])
      (.seq padv
      (.seq (wcall "tx_put_u256" [lv (nm "p"), .load sh4 (.op .add [lv (nm "a"), cw 56])])
      (.seq padv
      (.seq (wcall "tx_put_u256" [lv (nm "p"), .load sh4 (.op .add [lv (nm "a"), cw 88])])
      (.seq padv
        (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1])))))))))))))))))

def tpuBody : ProgHOL 64 :=
  .decCall (nm "total") .one (nm "auth_list_payload_len") [lv (nm "recs"), lv (nm "n")]
    (.decCall (nm "w") .one (nm "rlp_encode_list_header") [lv (nm "dst"), lv (nm "total")]
      (.dec (nm "p") .one (.op .add [lv (nm "dst"), lv (nm "w")])
        (.dec (nm "i") .one (cw 0)
          (.seq (.while (.cmp .lower (lv (nm "i")) (lv (nm "n"))) tpuLoop)
            (.return (.op .sub [lv (nm "p"), lv (nm "dst")]))))))

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_tx_put_authorizations : fnEntry Guest.Software.guestFn_tx_put_authorizations =
    (nm "tx_put_authorizations", tpaPs, tpuBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_tx_put_authorizations : guestCode (nm "tx_put_authorizations") =
    some (tpaPs, tpuBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 326) (by decide)) ⟨_, rfl⟩
    entry_tx_put_authorizations

/-! ## Helpers -/

/-- `w = f(p, args); p = p + w; rest` with a length `≤ K`. -/
theorem hoareGX_cstepB {Rf : BitVec 64 → Prop} {s0 : State σ} {Ret : ValueHOL 64 → Prop} {f : MlS}
    {args : List (ExpHOL 64)} {Pre : List (ValueHOL 64) → State σ → Prop}
    {R : List (ValueHOL 64) → State σ → BitVec 64 → Prop}
    {RetF : List (ValueHOL 64) → State σ → ValueHOL 64 → Prop}
    (hf : FootRetS σ X f Pre R RetF) {Lk : List (MlS × ValueHOL 64)}
    (hw : (Lk.map Prod.fst).contains (nm "w") = false)
    (hpn : (Lk.map Prod.fst).contains (nm "p") = false)
    {D : BitVec 64} {U K : Nat} {rest : ProgHOL 64} {L' : Locals → Prop}
    (hcall : ∀ s : State σ, InCtx s X → LkAll Lk s.locals → ∀ c, c ≤ U →
      s.locals.lookup (nm "p") = some (.val (.word (D + BitVec.ofNat 64 c))) → BWPost Rf s0 s →
      ∀ vs, evs s (lv (nm "p") :: args) = some vs → CallOK Rf Pre R s vs ∧
        ∀ callee v, RetF vs (callEntryStateHOLFinite s callee) v →
          ∃ k, k ≤ K ∧ v = .val (.word (BitVec.ofNat 64 k)))
    (hk : HoareG σ X (LPre Rf s0 (fun m => LkAll Lk m ∧ ∃ c, c ≤ U + K ∧
      m.lookup (nm "p") = some (.val (.word (D + BitVec.ofNat 64 c))))) rest (LX Rf s0 L' Ret)) :
    HoareG σ X (LPre Rf s0 (fun m => LkAll Lk m ∧ ∃ c, c ≤ U ∧
      m.lookup (nm "p") = some (.val (.word (D + BitVec.ofNat 64 c)))))
      (.seq (.call (some (some (.local, nm "w"), none)) f (lv (nm "p") :: args)) (.seq padv rest))
      (LX Rf s0 L' Ret) := by
  refine hoareGX_seq (L2 := fun m => LkAll Lk m ∧ ∃ c k, c ≤ U ∧ k ≤ K ∧
    m.lookup (nm "p") = some (.val (.word (D + BitVec.ofNat 64 c))) ∧
    m.lookup (nm "w") = some (.val (.word (BitVec.ofNat 64 k)))) ?_ (hoareGX_seq ?_ hk)
  · refine hoareGX_callA hf (fun s hs hp vs hvs => by
      obtain ⟨c, hc, hpc⟩ := hp.1.2
      exact (hcall s hs hp.1.1 c hc hpc hp.2 vs hvs).1) ?_
    intro s vs v callee hs hp hvs hR _
    obtain ⟨c, hc, hpc⟩ := hp.1.2
    obtain ⟨k, hk, rfl⟩ := (hcall s hs hp.1.1 c hc hpc hp.2 vs hvs).2 callee v hR
    exact ⟨lkAll_upd hp.1.1 hw _, c, k, hc, hk, by rw [lookup_update_ne _ _ (by decide)]; exact hpc,
      lookup_update_self _ _ _⟩
  · refine hoareGX_assign fun s _ hp v hv => ?_
    obtain ⟨c, k, hc, hk, hpc, hwk⟩ := hp.1.2
    rw [ev_add2 (ev_lw hpc) (ev_lw hwk)] at hv
    cases hv
    exact ⟨lkAll_upd hp.1.1 hpn _, c + k, by omega, by rw [lookup_update_self, addc]⟩

theorem tuW_congr4 {m m' : Mem} {x : BitVec 64} (h0 : m' x = m x)
    (h8 : m' (x + BitVec.ofNat 64 8) = m (x + BitVec.ofNat 64 8))
    (h16 : m' (x + BitVec.ofNat 64 16) = m (x + BitVec.ofNat 64 16))
    (h24 : m' (x + BitVec.ofNat 64 24) = m (x + BitVec.ofNat 64 24)) : tuW m' x = tuW m x := by
  unfold tuW
  rw [cellW_congr h0, cellW_congr h8, cellW_congr h16, cellW_congr h24]

/-- `plF` reads only the 15 cells of the record. -/
theorem plF_congr8 {m m' : Mem} {a : BitVec 64} (ha : a.toNat + 120 < 2 ^ 64)
    (h : ∀ c : BitVec 64, a.toNat ≤ c.toNat → c.toNat + 8 ≤ a.toNat + 120 → m' c = m c) :
    plF m' a = plF m a := by
  have hk : ∀ k, k + 8 ≤ 120 → m' (a + BitVec.ofNat 64 k) = m (a + BitVec.ofNat 64 k) := fun k hk =>
    h _ (by rw [off_toNat a k (by omega)]; omega) (by rw [off_toNat a k (by omega)]; omega)
  have hkj : ∀ k j, k + j + 8 ≤ 120 → m' (a + BitVec.ofNat 64 k + BitVec.ofNat 64 j) =
      m (a + BitVec.ofNat 64 k + BitVec.ofNat 64 j) := fun k j hkj => by
    rw [addc]; exact hk _ (by omega)
  unfold plF
  rw [tuW_congr4 (hk 0 (by decide)) (hkj 0 8 (by decide)) (hkj 0 16 (by decide)) (hkj 0 24 (by decide)),
    tuW_congr4 (hk 56 (by decide)) (hkj 56 8 (by decide)) (hkj 56 16 (by decide))
      (hkj 56 24 (by decide)),
    tuW_congr4 (hk 88 (by decide)) (hkj 88 8 (by decide)) (hkj 88 16 (by decide))
      (hkj 88 24 (by decide)),
    rd_congr' (hk 40 (by decide)), rd_congr' (hk 48 (by decide))]

theorem fuF_le_tuel (a0 a1 a2 a3 : BitVec 64) : fuF a0 a1 a2 a3 ≤ tuelF a0 a1 a2 a3 + 1 := by
  rw [fuF_eq]
  unfold tuelF
  split
  · omega
  · split <;> omega

theorem hdrLen_le6 {n : Nat} (h : n < 2 ^ 40) : Helpers.hdrLen n ≤ 6 := by
  unfold Helpers.hdrLen
  split
  · omega
  · have := beLen_le 5 n (by simpa using h)
    omega

theorem hdrLen_le2 {n : Nat} (h : n < 256) : Helpers.hdrLen n ≤ 2 := by
  unfold Helpers.hdrLen
  split
  · omega
  · have := beLen_le 1 n (by simpa using h)
    omega

theorem freeHeap_congr {s t : State σ} (h : t.globals = s.globals) {a : BitVec 64}
    (hf : FreeHeap t a) : FreeHeap s a := by
  obtain ⟨w, hw, h1, h2⟩ := hf
  exact ⟨w, by unfold gword at hw ⊢; rw [← h]; exact hw, h1, h2⟩

theorem aupS_mono (m : Mem) (P : BitVec 64) : ∀ {i n : Nat}, i ≤ n → aupS m P i ≤ aupS m P n
  | i, 0, h => by rw [Nat.le_zero.mp h]
  | i, n + 1, h => by
      rcases Nat.lt_or_ge i (n + 1) with h' | h'
      · have := aupS_mono m P (i := i) (n := n) (by omega)
        simp only [aupS]; omega
      · rw [show i = n + 1 by omega]

/-! ## The spec -/

theorem wspec_tx_put_authorizations (hC : X.code.lookup = guestCode) (hA : AlignedDom X)
    (hE1 : CalleeEscFree σ X (nm "u256_to_be_min"))
    (hE2 : CalleeEscFree σ X (nm "rlp_encode_bytes")) :
    WSpec σ X (nm "tx_put_authorizations") (PreAu AUPf) (FAu AUPf) := by
  have hAUL := footS_auth_list_payload_len (σ := σ) hC
  have hPL := footS_auth_payload_len (σ := σ) hC
  have hEH := FootRetS.of_footRet (footRet_rlp_encode_list_header (σ := σ) hC hA)
  have hEB := FootRetS.of_footRet (footRet_rlp_encode_bytes (σ := σ) hC hA)
  have hEW := FootRetS.of_footRet (footRet_rlp_encode_word (σ := σ) hC hA)
  have hPU := footS_tx_put_u256 (σ := σ) hC hA hE1 hE2
  refine footRetS_of_hoareGX fun vs body callee rs hl s0 hs0 hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A1, B1, C1, rfl, hsA, hsB, hsC, hla, hlb, hlc⟩ :=
    lookupCode_three code_tx_put_authorizations (by decide) (by decide) (by decide) hl
  obtain ⟨D, P, N, hvs, hDle, hbel, q, hq, hqo, hbhp⟩ := hP
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl, rfl⟩ := hvs
  set m0 := s0.memory with hm0
  set AU := AUPf m0 P N with hAUdef
  have hse : scratchEnd < 2 ^ 63 := by decide
  have hse32 : scratchEnd < 2 ^ 32 := by decide
  have hN26 : N.toNat < 2 ^ 26 := by rcases hbel with h | h <;> omega
  have hAUle := AUPf_le m0 P N
  obtain ⟨H, F, S, hH, -, -, rfl⟩ := AllocImpl.ptrsOf_some hq
  have hD0 : s0.locals.lookup (nm "dst") = some (.val (.word D)) := by rw [hloc]; exact hla
  have hP0 : s0.locals.lookup (nm "recs") = some (.val (.word P)) := by rw [hloc]; exact hlb
  have hN0 : s0.locals.lookup (nm "n") = some (.val (.word N)) := by rw [hloc]; exact hlc
  let RF : BitVec 64 → Prop := fun a => (∃ D' : BitVec 64,
    argW [.val (.word D), .val (.word P), .val (.word N)] 0 = some D' ∧
      Overlap D'.toNat (FAu AUPf [.val (.word D), .val (.word P), .val (.word N)] s0) a) ∨
    FreeHeap s0 a
  have hfoot : ∀ (c len : Nat) (a : BitVec 64), c + len ≤ 9 + AU →
      Overlap (D + BitVec.ofNat 64 c).toNat len a → RF a := by
    intro c len a hc h
    rw [toNat_addc (by omega)] at h
    exact Or.inl ⟨D, rfl, show Overlap D.toNat (9 + AU) a from overlap_mono h (by omega) (by omega)⟩
  have hcur : ∀ c, c ≤ 9 + AU → (D + BitVec.ofNat 64 c).toNat = D.toNat + c :=
    fun c _ => toNat_addc (by omega)
  have hcells : ∀ (t : State σ), BWPost RF s0 t → ∀ c : BitVec 64, P.toNat ≤ c.toNat →
      c.toNat + 8 ≤ P.toNat + 120 * N.toNat → t.memory c = m0 c := by
    intro t hbw c h1 h2
    refine hbw.2 c fun hR => ?_
    rcases hR with ⟨D', hD', hov⟩ | ⟨w, hw, hw1, hw2⟩
    · cases hD'
      obtain ⟨-, h3, -⟩ := hov
      rcases hbel with h | h <;> omega
    · rw [hH] at hw
      cases hw
      rcases hbhp with h | h
      · omega
      · simp only at h; omega
  have hnoF : ∀ (s : State σ) (vs : List (ValueHOL 64)), CallOK RF (fun _ _ => True) NoF s vs :=
    fun _ _ _ => ⟨trivial, fun _ h => h.elim⟩
  let F0 : List (MlS × ValueHOL 64) :=
    [(nm "dst", .val (.word D)), (nm "recs", .val (.word P)), (nm "n", .val (.word N))]
  have hF0 : LkAll F0 s0.locals := lkAll_cons hD0 (lkAll_cons hP0 (lkAll_cons hN0 fun _ h => nomatch h))
  unfold tpuBody
  -- `var total = auth_list_payload_len(recs, n)`
  refine hoareGX_decCall (L' := fun _ _ => True) hAUL (fun s _ _ vs _ => hnoF s vs) ?_
    (fun _ _ _ _ => trivial)
  intro s1 vs v1 callee _ hp1 hvs hR _
  rw [evs_cons (ev_lw (by rw [hp1.1]; exact hP0)) (evs_cons (ev_lw (by rw [hp1.1]; exact hN0))
    evs_nil)] at hvs
  cases hvs
  have hv1 := hR P N rfl
  subst hv1
  set AU1 := AUPf (callEntryStateHOLFinite s1 callee).memory P N with hAU1
  have hAU1le : AU1 ≤ 147 * N.toNat := AUPf_le _ P N
  have hAU1n : (BitVec.ofNat 64 AU1).toNat = AU1 := by
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  set H1 := Helpers.hdrLen (BitVec.ofNat 64 AU1).toNat with hH1
  have hH16 : H1 ≤ 6 := hdrLen_le6 (by rw [hAU1n]; omega)
  have hF1 : LkAll F0 (s1.locals.update (nm "total", .val (.word (BitVec.ofNat 64 AU1)))) :=
    lkAll_upd (by rw [hp1.1]; exact hF0) rfl _
  -- `var w = rlp_encode_list_header(dst, total)`
  refine hoareGX_decCall (L' := fun _ _ => True) hEH ?_ ?_ (fun _ _ _ _ => trivial)
  · intro s _ hp vs hvs callee
    rw [evs_cons (ev_lw (by rw [hp.1]; exact hF1.lk (by mem_tac)))
      (evs_cons (ev_lw (by rw [hp.1]; exact lookup_update_self _ _ _)) evs_nil)] at hvs
    cases hvs
    refine ⟨⟨D, rfl, fun N' hN' => by cases hN'; omega⟩, fun a ⟨D', N', hD', hN', hov⟩ => ?_⟩
    cases hD'
    cases hN'
    exact hfoot 0 H1 a (by omega) (by rw [show D + BitVec.ofNat 64 0 = D from by simp]; exact hov)
  intro s2 vs v2 callee _ hp2 hvs hR _
  rw [evs_cons (ev_lw (by rw [hp2.1]; exact hF1.lk (by mem_tac)))
    (evs_cons (ev_lw (by rw [hp2.1]; exact lookup_update_self _ _ _)) evs_nil)] at hvs
  cases hvs
  have hv2 := hR _ rfl
  subst hv2
  have hF2 : LkAll F0 (s2.locals.update (nm "w", .val (.word (BitVec.ofNat 64 H1)))) :=
    lkAll_upd (by rw [hp2.1]; exact hF1) rfl _
  -- `var p = dst + w; var i = 0`
  refine hoareGX_dec (L' := fun _ _ => True) (fun s3 _ hp3 v3 hv3 _ => ?_) (fun _ _ _ _ => trivial)
  rw [ev_add2 (ev_lw (by rw [hp3.1]; exact hF2.lk (by mem_tac)))
    (ev_lw (by rw [hp3.1]; exact lookup_update_self _ _ _))] at hv3
  cases hv3
  refine hoareGX_dec (L' := fun _ _ => True) (fun s4 _ hp4 v4 hv4 _ => ?_) (fun _ _ _ _ => trivial)
  rw [ev_cw] at hv4
  cases hv4
  let J : Locals → Prop := fun m => LkAll F0 m ∧ ∃ I : BitVec 64,
    m.lookup (nm "i") = some (.val (.word I)) ∧ I.toNat ≤ N.toNat ∧ ∃ c, c ≤ H1 + aupS m0 P I.toNat ∧
    m.lookup (nm "p") = some (.val (.word (D + BitVec.ofNat 64 c)))
  refine hoareGX_pre (L' := J) ?_ (fun m hm => ?_)
  rotate_left
  · rw [hm, hp4.1]
    refine ⟨lkAll_upd (lkAll_upd (by rw [hp3.1]; exact hF2) rfl _) rfl _, BitVec.ofNat 64 0,
      lookup_update_self _ _ _, by simp, H1, by omega, ?_⟩
    rw [lookup_update_ne _ _ (by decide), lookup_update_self]
  refine hoareGX_seq (L2 := fun m => J m ∧ ∀ I : BitVec 64,
    m.lookup (nm "i") = some (.val (.word I)) → N.toNat ≤ I.toNat) ?_ ?_
  rotate_left
  · refine hoareGX_return fun t _ ⟨⟨⟨hF, I, hI, hIN, c, hc, hp⟩, hge⟩, _⟩ v hv => ?_
    rw [ev_sub2 (ev_lw hp) (ev_lw (hF.lk (by mem_tac)))] at hv
    cases hv
    have hIe : I.toNat = N.toNat := by have := hge I hI; omega
    rw [hIe] at hc
    have hAUe : AU = aupS m0 P N.toNat := rfl
    refine ⟨c, ?_, show c ≤ 9 + AU by omega⟩
    rw [BitVec.add_comm, BitVec.add_sub_cancel]
  refine hoareGX_while ?_ fun s _ hJ hc => ⟨hJ, fun I hI => ?_⟩
  rotate_left
  · exact lower_false (cmp_val_false hc (ev_lw hI) (ev_lw (hJ.1.lk (by mem_tac))))
  intro s hs ⟨hpre, hc⟩
  obtain ⟨hF, I, hI, hIN, c0, hc0, hp⟩ := hpre.1
  have hlt : I.toNat < N.toNat := ltN_true (hF.lk (by mem_tac)) hI hc
  have hPN : P.toNat + 120 * N.toNat ≤ D.toNat := by rcases hbel with h | h <;> omega
  refine (?_ : HoareG σ X (LPre RF s0 (fun m => m = s.locals)) tpuLoop (LX RF s0 J (fun _ => False)))
    s hs ⟨rfl, hpre.2⟩
  set A := P + BitVec.ofNat 64 (120 * I.toNat) with hAdef
  have hAn : A.toNat = P.toNat + 120 * I.toNat := toNat_addc (by omega)
  have hcA : ∀ (t : State σ), BWPost RF s0 t → ∀ c : BitVec 64, A.toNat ≤ c.toNat →
      c.toNat + 8 ≤ A.toNat + 120 → t.memory c = m0 c :=
    fun t hbw c h1 h2 => hcells t hbw c (by omega) (by omega)
  have hoff : ∀ k, k ≤ 120 → (A + BitVec.ofNat 64 k).toNat = A.toNat + k :=
    fun k hk => off_toNat A k (by omega)
  have hoff2 : ∀ k j, k + j ≤ 120 →
      (A + BitVec.ofNat 64 k + BitVec.ofNat 64 j).toNat = A.toNat + k + j := by
    intro k j hkj
    rw [addc, off_toNat A (k + j) (by omega)]
    omega
  set PL := plF m0 A with hPLd
  have hPL138 := plF_le m0 A
  set hP := Helpers.hdrLen PL with hhPd
  have hhP : hP ≤ 2 := hdrLen_le2 (by omega)
  set tc := tuW m0 (A + BitVec.ofNat 64 0) with htc
  set ln := Helpers.wordLen (rd m0 (A + BitVec.ofNat 64 40)).toNat with hln
  set ly := Helpers.wordLen (rd m0 (A + BitVec.ofNat 64 48)).toNat with hly
  set tr := tuW m0 (A + BitVec.ofNat 64 56) with htr
  set ts := tuW m0 (A + BitVec.ofNat 64 88) with hts
  have hPLe : PL = tc + 21 + ln + ly + tr + ts := rfl
  have hS1 : aupS m0 P (I.toNat + 1) = aupS m0 P I.toNat + (hP + PL) := rfl
  have hmono : aupS m0 P (I.toNat + 1) ≤ AU := aupS_mono m0 P (by omega)
  have htcb := tuW_le m0 (A + BitVec.ofNat 64 0)
  have htrb := tuW_le m0 (A + BitVec.ofNat 64 56)
  have htsb := tuW_le m0 (A + BitVec.ofNat 64 88)
  set U0 := H1 + aupS m0 P I.toNat with hU0
  let Jn : Locals → Prop := fun m => LkAll F0 m ∧
    m.lookup (nm "i") = some (.val (.word (I + BitVec.ofNat 64 1))) ∧
    ∃ c, c ≤ H1 + aupS m0 P (I.toNat + 1) ∧ m.lookup (nm "p") = some (.val (.word (D + BitVec.ofNat 64 c)))
  have hI1 : (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := by
    rw [BitVec.toNat_add, BitVec.toNat_ofNat]; omega
  have hJn : ∀ m, Jn m → J m := fun m ⟨h1, h2, c, hc, h3⟩ =>
    ⟨h1, _, h2, by omega, c, by rw [hI1]; exact hc, h3⟩
  have hres : ∀ (x : MlS) (old : Option (ValueHOL 64)) (m : Locals),
      (F0.map Prod.fst).contains x = false → x ≠ nm "i" → x ≠ nm "p" → Jn m →
      Jn (m.resVarEq (x, old)) :=
    fun x old m hx h1 h2 ⟨e1, e2, c, hc, e3⟩ => ⟨lkAll_res e1 hx old,
      by rw [lookup_resVarEq_ne _ _ h1]; exact e2, c, hc, by rw [lookup_resVarEq_ne _ _ h2]; exact e3⟩
  refine hoareGX_post (L := Jn) ?_ hJn (fun _ h => h)
  unfold tpuLoop
  -- `var a = recs + i * 120`
  refine hoareGX_dec (L' := fun _ m' => Jn m') ?_
    (fun m m' _ h => hres _ _ _ rfl (by decide) (by decide) h)
  intro s1 _ hp1 v hv _
  rw [ev_add2 (ev_lw (by rw [hp1.1]; exact hF.lk (by mem_tac)))
    (ev_mul2 (ev_lw (by rw [hp1.1]; exact hI)) (ev_cw _ 120)), addr_mul2 P I 120 (by decide)] at hv
  cases hv
  -- `var pl = auth_payload_len(a)`
  refine hoareGX_decCall (L' := fun _ m' => Jn m') hPL (fun s _ _ vs _ => hnoF s vs) ?_
    (fun m m' _ h => hres _ _ _ rfl (by decide) (by decide) h)
  intro s2 vs v callee _ hp2 hvs hR _
  have hl2 : s2.locals = s.locals.update (nm "a", .val (.word A)) := by rw [hp2.1, hp1.1]
  rw [evs_cons (ev_lw (by rw [hl2]; exact lookup_update_self _ _ _)) evs_nil] at hvs
  cases hvs
  have hv := hR A rfl
  subst hv
  rw [show plF (callEntryStateHOLFinite s2 callee).memory A = PL from
    plF_congr8 (by omega) (fun c h1 h2 => hcA s2 hp2.2 c h1 h2)]
  -- the frame of the writes
  let Lk : List (MlS × ValueHOL 64) := (nm "pl", .val (.word (BitVec.ofNat 64 PL))) ::
    (nm "a", .val (.word A)) :: (nm "i", .val (.word I)) :: F0
  refine hoareGX_pre (L' := fun m => LkAll Lk m ∧ ∃ c, c ≤ U0 ∧
    m.lookup (nm "p") = some (.val (.word (D + BitVec.ofNat 64 c)))) ?_ (fun m hm => ?_)
  rotate_left
  · rw [hm, hl2]
    refine ⟨lkAll_cons (lookup_update_self _ _ _) (lkAll_upd (lkAll_cons (lookup_update_self _ _ _)
      (lkAll_upd (lkAll_cons hI hF) rfl _)) rfl _), c0, hc0, ?_⟩
    rw [lookup_update_ne _ _ (by decide), lookup_update_ne _ _ (by decide)]
    exact hp
  have hPLn : (BitVec.ofNat 64 PL).toNat = PL := by
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  -- the two kinds of record loads
  have hld4 : ∀ (t : State σ) (k : Nat), k + 32 ≤ 120 → BWPost RF s0 t → LkAll Lk t.locals →
      ∀ v, ev t (.load sh4 (.op .add [lv (nm "a"), cw k])) = some v →
        v = wv [Spec.Fq12.cellW m0 (A + BitVec.ofNat 64 k),
          Spec.Fq12.cellW m0 (A + BitVec.ofNat 64 k + BitVec.ofNat 64 8),
          Spec.Fq12.cellW m0 (A + BitVec.ofNat 64 k + BitVec.ofNat 64 16),
          Spec.Fq12.cellW m0 (A + BitVec.ofNat 64 k + BitVec.ofNat 64 24)] := by
    intro t k hk hbw hL v hv
    rw [ev_ld4 (ev_add2 (ev_lw (hL.lk (by mem_tac))) (ev_cw _ k)) hv]
    have e : ∀ j, j ≤ 24 → Spec.Fq12.cellW t.memory (A + BitVec.ofNat 64 k + BitVec.ofNat 64 j) =
        Spec.Fq12.cellW m0 (A + BitVec.ofNat 64 k + BitVec.ofNat 64 j) := fun j hj =>
      cellW_congr (hcA t hbw _ (by rw [hoff2 k j (by omega)]; omega)
        (by rw [hoff2 k j (by omega)]; omega))
    rw [cellW_congr (hcA t hbw _ (by rw [hoff k (by omega)]; omega)
      (by rw [hoff k (by omega)]; omega)), e 8 (by decide), e 16 (by decide), e 24 (by decide)]
  have hld1 : ∀ (t : State σ) (k : Nat), k + 8 ≤ 120 → BWPost RF s0 t → LkAll Lk t.locals →
      ∀ v, ev t (.load .one (.op .add [lv (nm "a"), cw k])) = some v →
        v = .val (.word (rd m0 (A + BitVec.ofNat 64 k))) := by
    intro t k hk hbw hL v hv
    rw [ev_ld1 (ev_add2 (ev_lw (hL.lk (by mem_tac))) (ev_cw _ k)) hv,
      rd_congr' (hcA t hbw _ (by rw [hoff k (by omega)]; omega) (by rw [hoff k (by omega)]; omega))]
  -- a `tx_put_u256` step
  have hu256 : ∀ (k U : Nat), k + 32 ≤ 120 →
      U + tuW m0 (A + BitVec.ofNat 64 k) + 1 ≤ 9 + AU → ∀ t : State σ, InCtx t X →
      LkAll Lk t.locals → ∀ c, c ≤ U →
      t.locals.lookup (nm "p") = some (.val (.word (D + BitVec.ofNat 64 c))) → BWPost RF s0 t →
      ∀ vs, evs t (lv (nm "p") :: [.load sh4 (.op .add [lv (nm "a"), cw k])]) = some vs →
        CallOK RF PutUPre PutUR t vs ∧ ∀ callee v, PutURet vs (callEntryStateHOLFinite t callee) v →
          ∃ k', k' ≤ tuW m0 (A + BitVec.ofNat 64 k) ∧ v = .val (.word (BitVec.ofNat 64 k')) := by
    intro k U hk hU t _ hL c hc hpt hbw vs hvs
    obtain ⟨u0, vs1, rfl, hu0, hvs1⟩ := evs_cons_inv hvs
    rw [ev_lw hpt] at hu0
    cases hu0
    obtain ⟨u1, vs2, rfl, hu1, hvs2⟩ := evs_cons_inv hvs1
    rw [evs_nil] at hvs2
    cases hvs2
    rw [hld4 t k hk hbw hL u1 hu1]
    have hfu := fuF_le_tuel (Spec.Fq12.cellW m0 (A + BitVec.ofNat 64 k))
      (Spec.Fq12.cellW m0 (A + BitVec.ofNat 64 k + BitVec.ofNat 64 8))
      (Spec.Fq12.cellW m0 (A + BitVec.ofNat 64 k + BitVec.ofNat 64 16))
      (Spec.Fq12.cellW m0 (A + BitVec.ofNat 64 k + BitVec.ofNat 64 24))
    have htu : tuelF (Spec.Fq12.cellW m0 (A + BitVec.ofNat 64 k))
        (Spec.Fq12.cellW m0 (A + BitVec.ofNat 64 k + BitVec.ofNat 64 8))
        (Spec.Fq12.cellW m0 (A + BitVec.ofNat 64 k + BitVec.ofNat 64 16))
        (Spec.Fq12.cellW m0 (A + BitVec.ofNat 64 k + BitVec.ofNat 64 24)) =
        tuW m0 (A + BitVec.ofNat 64 k) := rfl
    refine ⟨fun callee => ⟨⟨_, _, rfl, ?_, _, by rw [AllocImpl.ptrsOf_congr (s := s0) (t := callEntryStateHOLFinite t callee) hbw.1]; exact hq, hqo⟩,
      fun a ha => ?_⟩, fun callee v hv => ?_⟩
    · rw [fuV_wv, hcur c (by omega)]; omega
    · rcases ha with ⟨D', v', he, hov⟩ | hfh
      · simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at he
        obtain ⟨rfl, rfl⟩ := he
        rw [fuV_wv] at hov
        exact hfoot c _ a (by omega) hov
      · exact Or.inr (freeHeap_congr hbw.1 hfh)
    · obtain ⟨k', rfl, hk'⟩ := hv
      exact ⟨k', by have := (hk' _ _ rfl).1; rw [tuelV_wv, htu] at this; exact this, rfl⟩
  -- an `rlp_encode_word` step
  have hword : ∀ (k U : Nat), k + 8 ≤ 120 →
      U + Helpers.wordLen (rd m0 (A + BitVec.ofNat 64 k)).toNat ≤ 9 + AU → ∀ t : State σ,
      InCtx t X → LkAll Lk t.locals → ∀ c, c ≤ U →
      t.locals.lookup (nm "p") = some (.val (.word (D + BitVec.ofNat 64 c))) → BWPost RF s0 t →
      ∀ vs, evs t (lv (nm "p") :: [.load .one (.op .add [lv (nm "a"), cw k])]) = some vs →
        CallOK RF (fun vs _ => WPre vs) (fun vs _ => WR vs) t vs ∧
        ∀ (_ : HolFiniteMapExact MlS (ValueHOL 64)) v, WRet vs v →
          ∃ k', k' ≤ Helpers.wordLen (rd m0 (A + BitVec.ofNat 64 k)).toNat ∧
          v = .val (.word (BitVec.ofNat 64 k')) := by
    intro k U hk hU t _ hL c hc hpt hbw vs hvs
    obtain ⟨u0, vs1, rfl, hu0, hvs1⟩ := evs_cons_inv hvs
    rw [ev_lw hpt] at hu0
    cases hu0
    obtain ⟨u1, vs2, rfl, hu1, hvs2⟩ := evs_cons_inv hvs1
    rw [evs_nil] at hvs2
    cases hvs2
    rw [hld1 t k hk hbw hL u1 hu1]
    refine ⟨fun callee => ⟨⟨_, rfl, fun W hW => by cases hW; rw [hcur c (by omega)]; omega⟩,
      fun a ⟨D', W', hD', hW', hov⟩ => ?_⟩, fun _ v hv => ⟨_, le_rfl, hv _ rfl⟩⟩
    cases hD'
    cases hW'
    exact hfoot c _ a (by omega) hov
  have hln9 := (wordLen_le (rd m0 (A + BitVec.ofNat 64 40)).isLt).2
  have hly9 := (wordLen_le (rd m0 (A + BitVec.ofNat 64 48)).isLt).2
  have hEB21 : Helpers.hdrLen (BitVec.ofNat 64 20).toNat + (BitVec.ofNat 64 20).toNat = 21 := by decide
  -- `w = rlp_encode_list_header(p, pl); p = p + w`
  refine hoareGX_cstepB (U := U0) (K := hP) hEH rfl rfl ?_ ?_
  · intro t _ hL c hc hpt _ vs hvs
    rw [evs_cons (ev_lw hpt) (evs_cons (ev_lw (hL.lk (by mem_tac))) evs_nil)] at hvs
    cases hvs
    refine ⟨fun _ => ⟨⟨_, rfl, fun N' hN' => by
        cases hN'; rw [hcur c (by omega), hPLn]; omega⟩,
      fun a ⟨D', N', hD', hN', hov⟩ => ?_⟩, fun _ v hv => ⟨hP, le_rfl, by rw [hv _ rfl, hPLn]⟩⟩
    cases hD'
    cases hN'
    rw [hPLn] at hov
    exact hfoot c hP a (by omega) hov
  -- `w = tx_put_u256(p, a.chain_id); p = p + w`
  refine hoareGX_cstepB (K := tc) hPU rfl rfl (hu256 0 (U0 + hP) (by decide) (by omega)) ?_
  -- `w = rlp_encode_bytes(p, a.addr, 20); p = p + w`
  refine hoareGX_cstepB (K := 21) hEB rfl rfl ?_ ?_
  · intro t _ hL c hc hpt _ vs hvs
    obtain ⟨u0, vs1, rfl, hu0, hvs1⟩ := evs_cons_inv hvs
    rw [ev_lw hpt] at hu0
    cases hu0
    obtain ⟨x, vs2, rfl, -, hvs2⟩ := evs_cons_inv hvs1
    rw [evs_cons (ev_cw _ 20) evs_nil] at hvs2
    cases hvs2
    refine ⟨fun _ => ⟨⟨_, _, rfl, rfl, by rw [hcur c (by omega)]; have := hEB21; omega⟩,
      fun a ⟨D', N', hD', hN', hov⟩ => ?_⟩, fun _ v hv => ?_⟩
    · cases hD'
      cases hN'
      rw [hEB21] at hov
      exact hfoot c 21 a (by omega) hov
    · obtain ⟨k, rfl, -, -, hk⟩ := hv _ rfl
      exact ⟨21, le_rfl, by rw [hk (by decide), hEB21]⟩
  -- `w = rlp_encode_word(p, a.nonce); p = p + w`
  refine hoareGX_cstepB (K := ln) hEW rfl rfl (hword 40 _ (by decide) (by omega)) ?_
  -- `w = rlp_encode_word(p, a.y_parity); p = p + w`
  refine hoareGX_cstepB (K := ly) hEW rfl rfl (hword 48 _ (by decide) (by omega)) ?_
  -- `w = tx_put_u256(p, a.r); p = p + w`
  refine hoareGX_cstepB (K := tr) hPU rfl rfl (hu256 56 _ (by decide) (by omega)) ?_
  -- `w = tx_put_u256(p, a.s); p = p + w`
  refine hoareGX_cstepB (K := ts) hPU rfl rfl (hu256 88 _ (by decide) (by omega)) ?_
  -- `i = i + 1`
  refine hoareGX_assign fun t _ hpt v hv => ?_
  obtain ⟨hL, c, hc, hpc⟩ := hpt.1
  rw [ev_add2 (ev_lw (hL.lk (by mem_tac))) (ev_cw _ 1)] at hv
  cases hv
  refine ⟨lkAll_upd (lkAll_tail (lkAll_tail (lkAll_tail hL))) rfl _, lookup_update_self _ _ _, c,
    by omega, ?_⟩
  rw [lookup_update_ne _ _ (by decide)]
  exact hpc

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.wspec_tx_put_authorizations
