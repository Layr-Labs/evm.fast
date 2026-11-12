import InitECandidate.Solver.MemSafe.WaveHelpers.Sha256

set_option autoImplicit false

/-!
# `ripemd160`: the capability summary

```
fun 1 ripemd160(1 p, 1 n, 1 out) {
  st rmd_h, H0; …; st rmd_h + 32, H4;          // the 40-byte state blob
  var i = 0; while i + 64 <=+ n { ripemd160_block(rmd_h, p + i); i = i + 64; }
  var rem = n - i;                               // < 64
  memzero(rmd_pad, 128); memcpy(rmd_pad, p + i, rem); st8 rmd_pad + rem, 128;
  var total = 64; if rem >=+ 56 { total = 128; }
  st_le64(rmd_pad + total - 8, n << 3);
  ripemd160_block(rmd_h, rmd_pad); if total == 128 { ripemd160_block(rmd_h, rmd_pad + 64); }
  i = 0; while i < 5 { st_le32(out + i * 4, lds 1 (rmd_h + i * 8)); i = i + 1; }
  return 0; }
```

As `sha256` (`Sha256.lean`): the state `rmd_h` (40 bytes) and the pad `rmd_pad` (128 bytes)
are `scalar` blobs; `out` is a `buf n` argument with `n ≥ 20`.

`csumm_ripemd160`: `CSumm` for `⟨[.any, .any, .buf n], [], [], g⟩`, given the summary of
`ripemd160_block` (`[.buf 40, .any]`) and the base `memzero`, `memcpy`, `st_le64`, `st_le32`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.WaveHelpers
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
open InitECandidate.Solver.MemSafe.Helpers (sigMemzero sigMemcpy sigSt8 sigSt4 ScalarGlob)
open InitECandidate.Solver.Spec.Mpt.Leaves (notLower_true' notLower_false')

variable {σ : Type} {X : Ctx 64}

/-! ## The body -/

def rmdCond : ExpHOL 64 := .cmp .notLower (lv (nm "n")) (.op .add [lv (nm "i"), cw 64])

def rmdLoop : ProgHOL 64 :=
  .seq (callD (nm "ripemd160_block") [gv (nm "rmd_h"), .op .add [lv (nm "p"), lv (nm "i")]])
    (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 64]))

def rmdOutCond : ExpHOL 64 := .cmp .less (lv (nm "i")) (cw 5)

def rmdOutLoop : ProgHOL 64 :=
  .seq (callD (nm "st_le32") [.op .add [lv (nm "out"), .panop .mul [lv (nm "i"), cw 4]],
      .load .one (.op .add [gv (nm "rmd_h"), .panop .mul [lv (nm "i"), cw 8]])])
    (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1]))

def rmdFin : ProgHOL 64 :=
  .seq (callD (nm "ripemd160_block") [gv (nm "rmd_h"), gv (nm "rmd_pad")])
    (.seq (.ite (.cmp .equal (lv (nm "total")) (cw 128))
        (callD (nm "ripemd160_block") [gv (nm "rmd_h"), .op .add [gv (nm "rmd_pad"), cw 64]]) .skip)
      (.seq (.assign .local (nm "i") (cw 0))
        (.seq (.while rmdOutCond rmdOutLoop) (.return (cw 0)))))

def rmdTot : ProgHOL 64 :=
  .seq (.ite (.cmp .notLower (lv (nm "rem")) (cw 56)) (.assign .local (nm "total") (cw 128)) .skip)
    (.seq (callD (nm "st_le64") [.op .sub [.op .add [gv (nm "rmd_pad"), lv (nm "total")], cw 8],
        .shift .lsl (lv (nm "n")) (cw 3)]) rmdFin)

def rmdTail : ProgHOL 64 :=
  .seq (callD (nm "memzero") [gv (nm "rmd_pad"), cw 128])
    (.seq (callD (nm "memcpy") [gv (nm "rmd_pad"), .op .add [lv (nm "p"), lv (nm "i")],
        lv (nm "rem")])
      (.seq (.storeByte (.op .add [gv (nm "rmd_pad"), lv (nm "rem")]) (cw 128))
        (.dec (nm "total") .one (cw 64) rmdTot)))

def rmdBody : ProgHOL 64 :=
  .seq (.store (gv (nm "rmd_h")) (cw 1732584193))
    (.seq (.store (.op .add [gv (nm "rmd_h"), cw 8]) (cw 4023233417))
      (.seq (.store (.op .add [gv (nm "rmd_h"), cw 16]) (cw 2562383102))
        (.seq (.store (.op .add [gv (nm "rmd_h"), cw 24]) (cw 271733878))
          (.seq (.store (.op .add [gv (nm "rmd_h"), cw 32]) (cw 3285377520))
            (.dec (nm "i") .one (cw 0)
              (.seq (.while rmdCond rmdLoop)
                (.dec (nm "rem") .one (.op .sub [lv (nm "n"), lv (nm "i")]) rmdTail)))))))

def rmdParams : List (MlS × ShapeHOL) := [(nm "p", .one), (nm "n", .one), (nm "out", .one)]

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_ripemd160 : fnEntry Guest.Software.guestFn_ripemd160 =
    (nm "ripemd160", rmdParams, rmdBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_ripemd160 : guestCode (nm "ripemd160") = some (rmdParams, rmdBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 617) (by decide)) ⟨_, rfl⟩
    entry_ripemd160

/-! ## Locals -/

def RL0 (P N O : BitVec 64) (m : LocalsH) : Prop :=
  m.lookup (nm "p") = some (.val (.word P)) ∧ m.lookup (nm "n") = some (.val (.word N)) ∧
    m.lookup (nm "out") = some (.val (.word O))

def RLI (P N O : BitVec 64) (m : LocalsH) : Prop :=
  RL0 P N O m ∧ ∃ I : BitVec 64, m.lookup (nm "i") = some (.val (.word I)) ∧ I.toNat ≤ N.toNat

def RLX (P N O : BitVec 64) (m : LocalsH) : Prop :=
  RL0 P N O m ∧ ∃ I : BitVec 64, m.lookup (nm "i") = some (.val (.word I)) ∧
    I.toNat ≤ N.toNat ∧ N.toNat < (I + BitVec.ofNat 64 64).toNat

def RLR (P N O : BitVec 64) (m : LocalsH) : Prop :=
  RL0 P N O m ∧ ∃ I Rm : BitVec 64, m.lookup (nm "i") = some (.val (.word I)) ∧
    m.lookup (nm "rem") = some (.val (.word Rm)) ∧ Rm.toNat < 64

def RLT (P N O : BitVec 64) (m : LocalsH) : Prop :=
  RLR P N O m ∧ ∃ T : BitVec 64, m.lookup (nm "total") = some (.val (.word T)) ∧
    (T.toNat = 64 ∨ T.toNat = 128)

def RLO (P N O : BitVec 64) (m : LocalsH) : Prop :=
  RL0 P N O m ∧ ∃ I : BitVec 64, m.lookup (nm "i") = some (.val (.word I)) ∧ I.toNat ≤ 5

theorem rL0_sv {P N O : BitVec 64} {s : State σ} (h : RL0 P N O s.locals) {x : MlS}
    (h1 : x ≠ nm "p") (h2 : x ≠ nm "n") (h3 : x ≠ nm "out") (v : ValueHOL 64) :
    RL0 P N O (setVarHOLFinite x v s).locals :=
  ⟨by rw [lk_set_ne _ _ h1]; exact h.1, by rw [lk_set_ne _ _ h2]; exact h.2.1,
    by rw [lk_set_ne _ _ h3]; exact h.2.2⟩

theorem signedLess5 {J : BitVec 64} (hJ : J.toNat < 2 ^ 62) :
    wordCmpHOL .less J (BitVec.ofNat 64 5) = decide (J.toNat < 5) := by
  simp only [wordCmpHOL, Flapjack.Compiler.Encoders.Asm.holAsmSignedLess]
  rw [if_pos (by simp; omega), if_pos (by simp)]
  simp

/-! ## The segments -/

section seg
variable {a : Act σ} (ha : ActOK a X) {P N O : BitVec 64}
  (hrh : ScalarGlob a.Cb (nm "rmd_h") 40) (hpd : ScalarGlob a.Cb (nm "rmd_pad") 128)
include ha hrh hpd

theorem rmd_fin {sgB : Sig}
    (hB : CSumm σ X a.Cb a.H (nm "ripemd160_block") sgB []) (hpB : sgB.params = [.buf 40, .any])
    (hgB : sgB.gw = []) (hgB2 : sgB.grows = true → a.sg.grows = true)
    (hS4 : CSumm σ X a.Cb a.H (nm "st_le32") sigSt4 [])
    (hout : BufOK a.Cb a.Γ0 a.p0 O.toNat 20) (hfootO : ∀ x, Overlap O.toNat 20 x → a.Foot x)
    (hO : O.toNat + 20 < 2 ^ 64) :
    HoareG σ X (PreH a (RLT P N O)) rmdFin (HQa a) := by
  unfold rmdFin
  refine hoareG_seqSP hqa_of_abn (hoareG_callSP ha hB (by simp [hgB]) hgB2 ?_) ?_
  · intro s _ _ Γ p _ hh vs hvs
    obtain ⟨W, hW, -, -, hc⟩ := glob_at ha hh hrh
    obtain ⟨Wp, hWp, -, -, -⟩ := glob_at ha hh hpd
    rw [evs_cons hW (evs_cons hWp evs_nil)] at hvs
    cases hvs
    rw [hpB]
    exact ⟨argsOK_2 ⟨W, rfl, bufOK_cells hc⟩ trivial,
      fun x hx => foot_of_scell ha hh (hc x (argCells_bufAt ps_buf_any rfl rfl hx))⟩
  refine hoareG_seqSP (L := RLT P N O) hqa_of_abn (hoareG_iteSP ?_ ?_) ?_
  · refine hoareG_pre (hoareG_callSP ha hB (by simp [hgB]) hgB2 ?_) fun _ _ h => h.1
    intro s _ _ Γ p _ hh vs hvs
    obtain ⟨W, hW, -, -, hc⟩ := glob_at ha hh hrh
    obtain ⟨Wp, hWp, -, -, -⟩ := glob_at ha hh hpd
    rw [evs_cons hW (evs_cons (ev_add2 hWp (ev_cw _ 64)) evs_nil)] at hvs
    cases hvs
    rw [hpB]
    exact ⟨argsOK_2 ⟨W, rfl, bufOK_cells hc⟩ trivial,
      fun x hx => foot_of_scell ha hh (hc x (argCells_bufAt ps_buf_any rfl rfl hx))⟩
  · exact hoareG_pre (hoareG_skipSP fun _ h => h) fun _ _ h => h.1
  refine hoareG_seqSP (L := RLO P N O) hqa_of_abn (hoareG_assignSP ha.hH fun s _ hL v hv => ?_) ?_
  · rw [ev_cw] at hv
    cases hv
    exact ⟨rL0_sv hL.1.1 (by decide) (by decide) (by decide) _, _, lk_set_self _ _ _, by simp⟩
  refine hoareG_seqSP (L := RLO P N O) hqa_of_abn ?_
    (hoareG_return fun t _ ⟨_, hH'⟩ v _ =>
      hqa_of_hha (t := emptyLocalsHOLFinite t) (hha_congr (s := t) ha.hH rfl rfl rfl rfl hH') _)
  refine hoareG_while (fun t h => ⟨h.1, hha_congr (s := t) ha.hH rfl rfl rfl rfl h.2⟩) ?_ ?_
  · refine hoareG_conseq (Q := SPA a (RLO P N O)) ?_ (fun _ _ h => h) ?_
    · intro s hs ⟨⟨⟨h0, I, hi, hI5⟩, hH'⟩, hc⟩
      obtain ⟨w, hw, hw0⟩ := condTrue_iff.mp hc
      have hlt := cmp_val_true hw hw0 (ev_lw hi) (ev_cw _ 5)
      rw [signedLess5 (by omega)] at hlt
      have hI : I.toNat < 5 := of_decide_eq_true hlt
      refine (?_ : HoareG σ X (PreH a (fun m => RL0 P N O m ∧
          m.lookup (nm "i") = some (.val (.word I)))) rmdOutLoop (SPA a (RLO P N O)))
        s hs ⟨⟨h0, hi⟩, hH'⟩
      unfold rmdOutLoop
      refine hoareG_seqSP spa_of_abn
        (hoareG_callSP ha hS4 (by simp [Helpers.sigSt4]) (by simp [Helpers.sigSt4]) ?_) ?_
      · intro u _ hL Γ p he hh vs hvs
        obtain ⟨W, hW, -, -, -⟩ := glob_at ha hh hrh
        obtain ⟨vv, vs', rfl, hv0, hvs'⟩ := evs_cons_inv hvs
        rw [ev_add2 (ev_lw hL.1.2.2) (ev_mul2 (ev_lw hL.2) (ev_cw _ 4))] at hv0
        cases hv0
        obtain ⟨vl, vs'', rfl, -, hn⟩ := evs_cons_inv hvs'
        rw [evs_nil] at hn
        cases hn
        have e1 : (I * BitVec.ofNat 64 4).toNat = 4 * I.toNat := by
          rw [BitVec.toNat_mul, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 4) (by decide),
            Nat.mod_eq_of_lt (by omega)]
          omega
        have e2 : (O + I * BitVec.ofNat 64 4).toNat = O.toNat + 4 * I.toNat := by
          rw [BitVec.toNat_add, e1, Nat.mod_eq_of_lt (by omega)]
        have hsub : ∀ x, Overlap (O + I * BitVec.ofNat 64 4).toNat 4 x → Overlap O.toNat 20 x :=
          fun x hx => Helpers.overlap_mono hx (by rw [e2]; omega) (by rw [e2]; omega)
        exact ⟨argsOK_2 ⟨_, rfl, Helpers.bufOK_sub (bufOK_later ha hh he hout) (by rw [e2]; omega)
            (by rw [e2]; omega)⟩ trivial,
          fun x hx => hfootO x (hsub x (argCells_bufAt ps_buf_any rfl rfl hx))⟩
      refine hoareG_assignSP ha.hH fun u _ hL v hv => ?_
      rw [ev_add2 (ev_lw hL.2) (ev_cw _ 1)] at hv
      cases hv
      have hI1 : (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := by
        rw [BitVec.toNat_add, BitVec.toNat_ofNat]; omega
      exact ⟨rL0_sv hL.1 (by decide) (by decide) (by decide) _, _, lk_set_self _ _ _,
        by rw [hI1]; omega⟩
    · intro r t _ _ h
      refine ⟨h.1, fun hc => ?_, fun hb => ?_, fun r' hr' _ _ => ⟨fun h' => ?_, h.2⟩⟩
      · exact absurd rfl (abn_nb (h.2 _ hc).1).2
      · exact absurd rfl (abn_nb (h.2 _ hb).1).1
      · rw [hr'] at h'; cases h'
  · intro s _ h _
    exact ⟨fun _ => h, fun r' h => absurd h (by simp)⟩


theorem rmd_tot (hS : CSumm σ X a.Cb a.H (nm "st_le64") sigSt8 [])
    (hfin : HoareG σ X (PreH a (RLT P N O)) rmdFin (HQa a)) :
    HoareG σ X (PreH a (RLT P N O)) rmdTot (HQa a) := by
  have hse : scratchEnd < 2 ^ 63 := by decide
  unfold rmdTot
  refine hoareG_seqSP (L := RLT P N O) hqa_of_abn (hoareG_iteSP ?_ ?_) ?_
  · refine hoareG_pre (hoareG_assignSP ha.hH ?_) fun _ _ h => h.1
    intro s _ hL v hv
    rw [ev_cw] at hv
    cases hv
    obtain ⟨⟨h0, I, Rm, hi, hr, hRm⟩, -⟩ := hL
    exact ⟨⟨rL0_sv h0 (by decide) (by decide) (by decide) _, I, Rm,
      by rw [lk_set_ne _ _ (by decide)]; exact hi, by rw [lk_set_ne _ _ (by decide)]; exact hr, hRm⟩,
      _, lk_set_self _ _ _, Or.inr rfl⟩
  · exact hoareG_pre (hoareG_skipSP fun _ h => h) fun _ _ h => h.1
  refine hoareG_seqSP hqa_of_abn (hoareG_callSP ha hS (by simp [sigSt8]) (by simp [sigSt8]) ?_) hfin
  intro s _ hL Γ p _ hh vs hvs
  obtain ⟨⟨h0, -⟩, T, ht, hT⟩ := hL
  obtain ⟨Wp, hWp, -, hWb, hc⟩ := glob_at ha hh hpd
  rw [evs_cons (ev_sub2 (ev_add2 hWp (ev_lw ht)) (ev_cw _ 8))
    (evs_cons (ev_shift (ev_lw h0.2.1) (ev_cw _ 3)) evs_nil)] at hvs
  cases hvs
  have hA : (Wp + T - BitVec.ofNat 64 8).toNat = Wp.toNat + T.toNat - 8 := by
    have e1 : (Wp + T).toNat = Wp.toNat + T.toNat := by
      rw [BitVec.toNat_add, Nat.mod_eq_of_lt (by omega)]
    rw [BitVec.toNat_sub, e1, BitVec.toNat_ofNat]
    omega
  have hcells : ∀ x, Overlap (Wp + T - BitVec.ofNat 64 8).toNat 8 x → SCell a.Cb Γ x :=
    fun x hx => hc x (Helpers.overlap_mono hx (by rw [hA]; omega) (by rw [hA]; omega))
  exact ⟨argsOK_2 ⟨_, rfl, bufOK_cells hcells⟩ trivial,
    fun x hx => foot_of_scell ha hh (hcells x (argCells_bufAt ps_buf_any rfl rfl hx))⟩

theorem rmd_tail (hZ : CSumm σ X a.Cb a.H (nm "memzero") sigMemzero [])
    (hM : CSumm σ X a.Cb a.H (nm "memcpy") sigMemcpy [])
    (htot : HoareG σ X (PreH a (RLT P N O)) rmdTot (HQa a)) :
    HoareG σ X (PreH a (RLR P N O)) rmdTail (HQa a) := by
  have hse : scratchEnd < 2 ^ 63 := by decide
  unfold rmdTail
  refine hoareG_seqSP hqa_of_abn
    (hoareG_callSP ha hZ (by simp [sigMemzero]) (by simp [sigMemzero]) ?_) ?_
  · intro s _ _ Γ p _ hh vs hvs
    obtain ⟨Wp, hWp, -, -, hc⟩ := glob_at ha hh hpd
    rw [evs_cons hWp (evs_cons (ev_cw _ 128) evs_nil)] at hvs
    cases hvs
    have hcells : ∀ x, Overlap Wp.toNat (1 * (BitVec.ofNat 64 128).toNat + 0) x → SCell a.Cb Γ x :=
      fun x hx => hc x (by simpa using hx)
    exact ⟨argsOK_2 ⟨Wp, _, rfl, rfl, bufOK_cells hcells⟩ trivial,
      fun x hx => foot_of_scell ha hh (hcells x (by
        simpa using argCells_bufArgAt ps_memzero rfl rfl rfl hx))⟩
  refine hoareG_seqSP hqa_of_abn
    (hoareG_callSP ha hM (by simp [sigMemcpy]) (by simp [sigMemcpy]) ?_) ?_
  · intro s _ hL Γ p _ hh vs hvs
    obtain ⟨h0, I, Rm, hi, hr, hRm⟩ := hL
    obtain ⟨Wp, hWp, -, -, hc⟩ := glob_at ha hh hpd
    rw [evs_cons hWp (evs_cons (ev_add2 (ev_lw h0.1) (ev_lw hi)) (evs_cons (ev_lw hr)
      evs_nil))] at hvs
    cases hvs
    have hcells : ∀ x, Overlap Wp.toNat (1 * Rm.toNat + 0) x → SCell a.Cb Γ x :=
      fun x hx => hc x (Helpers.overlap_mono hx (le_refl _) (by omega))
    exact ⟨argsOK_3 ⟨Wp, Rm, rfl, rfl, bufOK_cells hcells⟩ trivial trivial,
      fun x hx => foot_of_scell ha hh (hcells x (by
        simpa using argCells_bufArgAt ps_memcpy rfl rfl rfl hx))⟩
  refine hoareG_seqSP hqa_of_abn (hoareG_stbSP ha ?_) ?_
  · intro s _ hL Γ p _ hh w hw
    obtain ⟨-, I, Rm, -, hr, hRm⟩ := hL
    obtain ⟨Wp, hWp, -, hWb, hc⟩ := glob_at ha hh hpd
    rw [ev_add2 hWp (ev_lw hr)] at hw
    cases hw
    have e : (Wp + Rm).toNat = Wp.toNat + Rm.toNat := by
      rw [BitVec.toNat_add, Nat.mod_eq_of_lt (by omega)]
    exact hc _ (Helpers.overlap_byte (by rw [e]; omega) (by rw [e]; omega))
  refine hoareG_decH ha.hH ?_ htot
  intro s _ hL v hv
  rw [ev_cw] at hv
  cases hv
  obtain ⟨h0, I, Rm, hi, hr, hRm⟩ := hL
  exact ⟨⟨rL0_sv h0 (by decide) (by decide) (by decide) _, I, Rm,
    by rw [lk_set_ne _ _ (by decide)]; exact hi, by rw [lk_set_ne _ _ (by decide)]; exact hr, hRm⟩,
    _, lk_set_self _ _ _, Or.inl rfl⟩

theorem rmd_loop {sgB : Sig}
    (hB : CSumm σ X a.Cb a.H (nm "ripemd160_block") sgB []) (hpB : sgB.params = [.buf 40, .any])
    (hgB : sgB.gw = []) (hgB2 : sgB.grows = true → a.sg.grows = true) :
    HoareG σ X (PreH a (RLI P N O)) (.while rmdCond rmdLoop) (SPA a (RLX P N O)) := by
  refine hoareG_while (fun t h => ⟨h.1, hha_congr (s := t) ha.hH rfl rfl rfl rfl h.2⟩) ?_ ?_
  · refine hoareG_conseq (Q := SPA a (RLI P N O)) ?_ (fun _ _ h => h) ?_
    · intro s hs ⟨⟨⟨h0, I, hi, hIN⟩, hH'⟩, hc⟩
      obtain ⟨w, hw, hw0⟩ := condTrue_iff.mp hc
      have hle := notLower_true' (cmp_val_true hw hw0 (ev_lw h0.2.1)
        (ev_add2 (ev_lw hi) (ev_cw _ 64)))
      refine (?_ : HoareG σ X (PreH a (fun m => RL0 P N O m ∧
          m.lookup (nm "i") = some (.val (.word I)))) rmdLoop (SPA a (RLI P N O)))
        s hs ⟨⟨h0, hi⟩, hH'⟩
      unfold rmdLoop
      refine hoareG_seqSP spa_of_abn (hoareG_callSP ha hB (by simp [hgB]) hgB2 ?_) ?_
      · intro u _ hL Γ p _ hh vs hvs
        obtain ⟨W, hW, -, -, hcl⟩ := glob_at ha hh hrh
        rw [evs_cons hW (evs_cons (ev_add2 (ev_lw hL.1.1) (ev_lw hL.2)) evs_nil)] at hvs
        cases hvs
        rw [hpB]
        exact ⟨argsOK_2 ⟨W, rfl, bufOK_cells hcl⟩ trivial,
          fun x hx => foot_of_scell ha hh (hcl x (argCells_bufAt ps_buf_any rfl rfl hx))⟩
      refine hoareG_assignSP ha.hH fun u _ hL v hv => ?_
      rw [ev_add2 (ev_lw hL.2) (ev_cw _ 64)] at hv
      cases hv
      exact ⟨rL0_sv hL.1 (by decide) (by decide) (by decide) _, _, lk_set_self _ _ _, hle⟩
    · intro r t _ _ h
      refine ⟨h.1, fun hc => ?_, fun hb => ?_, fun r' hr' _ _ => ⟨fun h' => ?_, h.2⟩⟩
      · exact absurd rfl (abn_nb (h.2 _ hc).1).2
      · exact absurd rfl (abn_nb (h.2 _ hb).1).1
      · rw [hr'] at h'; cases h'
  · intro s _ ⟨⟨h0, I, hi, hIN⟩, hH'⟩ hc
    have hlt := notLower_false' (cmp_val_false hc (ev_lw h0.2.1) (ev_add2 (ev_lw hi) (ev_cw _ 64)))
    exact ⟨fun _ => ⟨⟨h0, I, hi, hIN, hlt⟩, hH'⟩, fun r' h => absurd h (by simp)⟩

/-- The state stores `st rmd_h + 8 k, c`. -/
theorem rmd_st {L : LocalsH → Prop} {k c : Nat} (hk : k < 5) {e : ExpHOL 64}
    (he : ∀ (s : State σ) (W : BitVec 64), ev s (gv (nm "rmd_h")) = some (.val (.word W)) →
      ev s e = some (.val (.word (W + BitVec.ofNat 64 (8 * k))))) :
    HoareG σ X (PreH a L) (.store e (cw c)) (SPA a L) := by
  refine hoareG_stwSP ha ?_ fun s _ v hv => ?_
  · intro s _ _ Γ p _ hh w hw h8
    obtain ⟨W, hW, hW8, hWb, hc⟩ := glob_at ha hh hrh
    rw [he s W hW] at hw
    cases hw
    have hse : scratchEnd < 2 ^ 63 := by decide
    have e : (W + BitVec.ofNat 64 (8 * k)).toNat = W.toNat + 8 * k := by
      rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 8 * k) (by omega),
        Nat.mod_eq_of_lt (by omega)]
    exact hc _ ⟨h8, by rw [e]; omega, by rw [e]; omega⟩
  · rw [ev_cw] at hv
    cases hv
    exact ⟨_, by rw [flattenHOL]⟩

end seg

def sigRmd (n : Nat) (g : Bool) : Sig := ⟨[.any, .any, .buf n], [], [], g⟩

/-- **`ripemd160`** as a capability summary. -/
theorem csumm_ripemd160 {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hC : CfgOK C)
    (hal : ∀ x, X.memaddrs x → x.toNat % 8 = 0) (hAC : AllocCfg C) (hNS : NullSafe X)
    (hX : X.code.lookup = guestCode)
    (hrh : ScalarGlob C (nm "rmd_h") 40) (hpd : ScalarGlob C (nm "rmd_pad") 128)
    {sgB : Sig} (hB : CSumm σ X C H (nm "ripemd160_block") sgB [])
    (hpB : sgB.params = [.buf 40, .any]) (hgB : sgB.gw = [])
    (hZ : Summ σ X C H (nm "memzero") sigMemzero) (hM : Summ σ X C H (nm "memcpy") sigMemcpy)
    (hS : Summ σ X C H (nm "st_le64") sigSt8) (hS4 : Summ σ X C H (nm "st_le32") sigSt4)
    {n : Nat} (hn : 20 ≤ n) {g : Bool} (hgB2 : sgB.grows = true → g = true) :
    CSumm σ X C H (nm "ripemd160") (sigRmd n g) [] := by
  refine csumm_of_heap hH hC hal hAC hNS fun vs body callee rs hl s0 _ hloc Γ0 p0 ha hh => ?_
  rw [hX] at hl
  obtain ⟨rfl, -, A, B, Cc, rfl, hsa, hsb, hsc, hla, hlb, hlc⟩ :=
    lookupCode_three code_ripemd160 (by decide) (by decide) (by decide) hl
  obtain ⟨P, rfl⟩ := val_of_shapeEq_one hsa
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hsb
  obtain ⟨O, rfl⟩ := val_of_shapeEq_one hsc
  set a := actOf C H (sigRmd n g) [] [.val (.word P), .val (.word N), .val (.word O)] s0 Γ0 p0
    with hadef
  have hout0 : BufOK a.Cb a.Γ0 a.p0 O.toNat n :=
    bufOK_of_buf (ps := (sigRmd n g).params) ha.hargs0 (i := 2) (n := n) rfl rfl
  have hout : BufOK a.Cb a.Γ0 a.p0 O.toNat 20 := Helpers.bufOK_sub hout0 (le_refl _) (by omega)
  have hfootO : ∀ x, Overlap O.toNat 20 x → a.Foot x := fun x hx =>
    Or.inr (Or.inl (argCells_buf_at (ps := (sigRmd n g).params) (i := 2) (n := n) rfl rfl
      (Helpers.overlap_mono hx (le_refl _) (by omega))))
  have hO : O.toNat + 20 < 2 ^ 64 := by
    have hse : scratchEnd < 2 ^ 63 := by decide
    obtain ⟨p1, hp1, hord, hL, -⟩ := hh.1
    rw [hh.2.1] at hp1
    cases hp1
    rcases Helpers.bufOK_bound hord hL O.isLt hout0 with h | h <;> omega
  refine hoareG_conseq (P := PreH a (RL0 P N O)) (Q := HQa a) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    exact ⟨⟨by rw [hloc]; exact hla, by rw [hloc]; exact hlb, by rw [hloc]; exact hlc⟩,
      Γ0, p0, ext_refl _, hh⟩
  · intro r t _ _ h r' hr hna
    obtain ⟨Γ', p', he, hh'⟩ := h r' hr hna
    exact ⟨Γ', p', he, hh', fun v _ i rt w hrt => by simp [sigRmd] at hrt⟩
  unfold rmdBody
  have h8 : ∀ k : Nat, k ∈ [8, 16, 24, 32] → ∀ (s : State σ) (W : BitVec 64),
      ev s (gv (nm "rmd_h")) = some (.val (.word W)) →
      ev s (.op .add [gv (nm "rmd_h"), cw k]) = some (.val (.word (W + BitVec.ofNat 64 k))) :=
    fun k _ s W hW => ev_add2 hW (ev_cw _ k)
  refine hoareG_seqSP hqa_of_abn (rmd_st ha hrh hpd (k := 0) (by decide)
    fun s W hW => by rw [hW]; simp) ?_
  refine hoareG_seqSP hqa_of_abn (rmd_st ha hrh hpd (k := 1) (by decide)
    fun s W hW => h8 8 (by simp) s W hW) ?_
  refine hoareG_seqSP hqa_of_abn (rmd_st ha hrh hpd (k := 2) (by decide)
    fun s W hW => h8 16 (by simp) s W hW) ?_
  refine hoareG_seqSP hqa_of_abn (rmd_st ha hrh hpd (k := 3) (by decide)
    fun s W hW => h8 24 (by simp) s W hW) ?_
  refine hoareG_seqSP hqa_of_abn (rmd_st ha hrh hpd (k := 4) (by decide)
    fun s W hW => h8 32 (by simp) s W hW) ?_
  refine hoareG_decH ha.hH (L' := RLI P N O) ?_ ?_
  · intro s _ hL v hv
    rw [ev_cw] at hv
    cases hv
    exact ⟨rL0_sv hL (by decide) (by decide) (by decide) _, _, lk_set_self _ _ _, by simp⟩
  refine hoareG_seqSP hqa_of_abn (rmd_loop ha hrh hpd hB hpB hgB hgB2) ?_
  refine hoareG_decH ha.hH (L' := RLR P N O) ?_
    (rmd_tail ha hrh hpd (csumm_of_summ hZ) (csumm_of_summ hM)
      (rmd_tot ha hrh hpd (csumm_of_summ hS)
        (rmd_fin ha hrh hpd hB hpB hgB hgB2 (csumm_of_summ hS4) hout hfootO hO)))
  intro s _ hL v hv
  obtain ⟨h0, I, hi, hIN, hlt⟩ := hL
  rw [ev_sub2 (ev_lw h0.2.1) (ev_lw hi)] at hv
  cases hv
  have hR : (N - I).toNat < 64 := by
    have := add64_exit hIN hlt
    rw [BitVec.toNat_sub]
    omega
  exact ⟨rL0_sv h0 (by decide) (by decide) (by decide) _, I, N - I,
    by rw [lk_set_ne _ _ (by decide)]; exact hi, lk_set_self _ _ _, hR⟩

end InitECandidate.Solver.MemSafe.WaveHelpers
