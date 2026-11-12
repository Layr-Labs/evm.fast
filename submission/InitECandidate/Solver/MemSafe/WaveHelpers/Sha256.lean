import InitECandidate.Solver.MemSafe.WaveHelpers.HSeq
import InitECandidate.Solver.MemSafe.WaveHelpers.Common
import InitECandidate.Solver.MemSafe.Helpers.Mem
import InitECandidate.Solver.MemSafe.Helpers.Bytes
import InitECandidate.Solver.Spec.Mpt.Leaves.RlpItem
import Guest.SoftwareAst

set_option autoImplicit false

/-!
# `sha256`: the capability summary

```
fun 1 sha256(1 p, 1 len, 1 out) {
  sha256_state_init(sha_st); var i = 0;
  while i + 64 <=+ len { sha256_block(sha_st, p + i); i = i + 64; }
  var rem = len - i;                    // < 64
  memzero(sha_pad, 128); memcpy(sha_pad, p + i, rem); st8 sha_pad + rem, 128;
  var total = 64; if rem >=+ 56 { total = 128; }
  st_be64(sha_pad + total - 8, len << 3);
  sha256_block(sha_st, sha_pad); if total == 128 { sha256_block(sha_st, sha_pad + 64); }
  sha256_finish(sha_st, out); return 0; }
```

In the checker's activation invariant (`HSeq.lean`): every call is to a capability-summary
callee whose buffer arguments are `scalar` cells of `Γ` (the blobs `sha_st`, 64 bytes, and
`sha_pad`, 128 bytes, read from the current globals) or the `out` argument (`buf n`, `n ≥ 32`).
The loop keeps `i ≤ len`, so `rem < 64` after it (no bound on `len`).

`csumm_sha256`: `CSumm` for `⟨[.any, .any, .buf n], [], [], g⟩`, given the summaries of
`sha256_state_init` (`[.buf 64]`), `sha256_block` (`[.buf 64, .any]`), `sha256_finish`
(`[.any, .buf 32]`) and the base `memzero`, `memcpy`, `st_be64`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.WaveHelpers
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
open InitECandidate.Solver.MemSafe.Helpers (sigMemzero sigMemcpy sigSt8 ScalarGlob)
open InitECandidate.Solver.Spec.Mpt.Leaves (notLower_true' notLower_false')

variable {σ : Type} {X : Ctx 64}

/-! ## Arguments -/

theorem argsOK_1 {C : Cfg} {Γ : Gam} {p : Ptrs} {pt : PT} {v : ValueHOL 64}
    (h : ArgOK C Γ p [v] pt v) : ArgsOK C Γ p [pt] [v] := by
  refine ⟨rfl, fun i pt' v' hpt hv => ?_⟩
  match i, hpt, hv with
  | 0, hpt, hv => cases hpt; cases hv; exact h

theorem argsOK_2 {C : Cfg} {Γ : Gam} {p : Ptrs} {pt0 pt1 : PT} {v0 v1 : ValueHOL 64}
    (h0 : ArgOK C Γ p [v0, v1] pt0 v0) (h1 : ArgOK C Γ p [v0, v1] pt1 v1) :
    ArgsOK C Γ p [pt0, pt1] [v0, v1] := by
  refine ⟨rfl, fun i pt' v' hpt hv => ?_⟩
  match i, hpt, hv with
  | 0, hpt, hv => cases hpt; cases hv; exact h0
  | 1, hpt, hv => cases hpt; cases hv; exact h1

theorem argsOK_3 {C : Cfg} {Γ : Gam} {p : Ptrs} {pt0 pt1 pt2 : PT} {v0 v1 v2 : ValueHOL 64}
    (h0 : ArgOK C Γ p [v0, v1, v2] pt0 v0) (h1 : ArgOK C Γ p [v0, v1, v2] pt1 v1)
    (h2 : ArgOK C Γ p [v0, v1, v2] pt2 v2) : ArgsOK C Γ p [pt0, pt1, pt2] [v0, v1, v2] := by
  refine ⟨rfl, fun i pt' v' hpt hv => ?_⟩
  match i, hpt, hv with
  | 0, hpt, hv => cases hpt; cases hv; exact h0
  | 1, hpt, hv => cases hpt; cases hv; exact h1
  | 2, hpt, hv => cases hpt; cases hv; exact h2

/-- The cells of the single buffer parameter `i` of a parameter list. -/
theorem argCells_one {ps : List PT} {vs : List (ValueHOL 64)} {i : Nat} {B : BitVec 64} {k : Nat}
    (hps : ∀ j, j ≠ i → ∀ pt, ps[j]? = some pt → pt = .any)
    (hpi : ∀ pt, ps[i]? = some pt → ∀ w, argW vs i = some w → ∀ x,
      (∃ n, pt = .buf n ∧ Overlap w.toNat n x) ∨
        (∃ j c d y, pt = .bufArg j c d ∧ argW vs j = some y ∧ Overlap w.toNat (c * y.toNat + d) x) →
      w = B ∧ Overlap B.toNat k x)
    {x : BitVec 64} (h : ArgCells ps vs x) : Overlap B.toNat k x := by
  obtain ⟨j, w, hw, h⟩ := h
  by_cases hj : j = i
  · subst hj
    rcases h with ⟨n, hn, hov⟩ | ⟨j', c, d, y, hn, hy, hov⟩
    · exact (hpi _ hn w hw x (Or.inl ⟨n, rfl, hov⟩)).2
    · exact (hpi _ hn w hw x (Or.inr ⟨j', c, d, y, rfl, hy, hov⟩)).2
  · rcases h with ⟨n, hn, -⟩ | ⟨j', c, d, y, hn, -, -⟩
    · cases hps j hj _ hn
    · cases hps j hj _ hn

/-! ## The body -/

def shaCond : ExpHOL 64 := .cmp .notLower (lv (nm "len")) (.op .add [lv (nm "i"), cw 64])

def shaLoop : ProgHOL 64 :=
  .seq (callD (nm "sha256_block") [gv (nm "sha_st"), .op .add [lv (nm "p"), lv (nm "i")]])
    (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 64]))

def shaFin : ProgHOL 64 :=
  .seq (callD (nm "sha256_block") [gv (nm "sha_st"), gv (nm "sha_pad")])
    (.seq (.ite (.cmp .equal (lv (nm "total")) (cw 128))
        (callD (nm "sha256_block") [gv (nm "sha_st"), .op .add [gv (nm "sha_pad"), cw 64]]) .skip)
      (.seq (callD (nm "sha256_finish") [gv (nm "sha_st"), lv (nm "out")]) (.return (cw 0))))

def shaTot : ProgHOL 64 :=
  .seq (.ite (.cmp .notLower (lv (nm "rem")) (cw 56)) (.assign .local (nm "total") (cw 128)) .skip)
    (.seq (callD (nm "st_be64") [.op .sub [.op .add [gv (nm "sha_pad"), lv (nm "total")], cw 8],
        .shift .lsl (lv (nm "len")) (cw 3)]) shaFin)

def shaTail : ProgHOL 64 :=
  .seq (callD (nm "memzero") [gv (nm "sha_pad"), cw 128])
    (.seq (callD (nm "memcpy") [gv (nm "sha_pad"), .op .add [lv (nm "p"), lv (nm "i")],
        lv (nm "rem")])
      (.seq (.storeByte (.op .add [gv (nm "sha_pad"), lv (nm "rem")]) (cw 128))
        (.dec (nm "total") .one (cw 64) shaTot)))

def shaBody : ProgHOL 64 :=
  .seq (callD (nm "sha256_state_init") [gv (nm "sha_st")])
    (.dec (nm "i") .one (cw 0)
      (.seq (.while shaCond shaLoop)
        (.dec (nm "rem") .one (.op .sub [lv (nm "len"), lv (nm "i")]) shaTail)))

def shaParams : List (MlS × ShapeHOL) := [(nm "p", .one), (nm "len", .one), (nm "out", .one)]

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_sha256 : fnEntry Guest.Software.guestFn_sha256 =
    (nm "sha256", shaParams, shaBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_sha256 : guestCode (nm "sha256") = some (shaParams, shaBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 95) (by decide)) ⟨_, rfl⟩
    entry_sha256

/-! ## Buffer facts -/

/-- A global `scalar` blob at a state of the invariant. -/
theorem glob_at {a : Act σ} (ha : ActOK a X) {Γ : Gam} {p : Ptrs} {s : State σ}
    (hh : Heap a Γ p s) {g : MlS} {n : Nat} (hg : ScalarGlob a.Cb g n) :
    ∃ W : BitVec 64, ev s (gv g) = some (.val (.word W)) ∧ W.toNat % 8 = 0 ∧
      W.toNat + n ≤ scratchEnd ∧ ∀ x, Overlap W.toNat n x → SCell a.Cb Γ x := by
  obtain ⟨W, hW, h8, hb, hc⟩ := scell_of_globA (heap_G ha hh) hg
  exact ⟨W, by rw [gv, ev_gv]; exact AllocImpl.lookup_of_gword hW, h8, hb, hc⟩

theorem bufOK_cells {C : Cfg} {Γ : Gam} {p : Ptrs} {b n : Nat}
    (h : ∀ x, Overlap b n x → SCell C Γ x) : BufOK C Γ p b n := fun x hx => Or.inl (h x hx)

theorem ps_buf_any {k : Nat} : ∀ j pt, ([.buf k, .any] : List PT)[j]? = some pt → j = 0 ∨ pt = .any
  | 0, _, _ => Or.inl rfl
  | 1, _, h => Or.inr (by simp at h; exact h.symm)
  | _ + 2, _, h => by simp at h

theorem ps_any_buf {k : Nat} : ∀ j pt, ([.any, .buf k] : List PT)[j]? = some pt → j = 1 ∨ pt = .any
  | 0, _, h => Or.inr (by simp at h; exact h.symm)
  | 1, _, _ => Or.inl rfl
  | _ + 2, _, h => by simp at h

theorem ps_buf {k : Nat} : ∀ j pt, ([.buf k] : List PT)[j]? = some pt → j = 0 ∨ pt = .any
  | 0, _, _ => Or.inl rfl
  | _ + 1, _, h => by simp at h

theorem ps_memzero : ∀ j pt, ([.bufArg 1 1 0, .any] : List PT)[j]? = some pt → j = 0 ∨ pt = .any
  | 0, _, _ => Or.inl rfl
  | 1, _, h => Or.inr (by simp at h; exact h.symm)
  | _ + 2, _, h => by simp at h

theorem ps_memcpy : ∀ j pt, ([.bufArg 2 1 0, .any, .any] : List PT)[j]? = some pt →
    j = 0 ∨ pt = .any
  | 0, _, _ => Or.inl rfl
  | 1, _, h => Or.inr (by simp at h; exact h.symm)
  | 2, _, h => Or.inr (by simp at h; exact h.symm)
  | _ + 3, _, h => by simp at h

/-- The cells of the only buffer parameter `i` (`buf k`). -/
theorem argCells_bufAt {ps : List PT} {vs : List (ValueHOL 64)} {i k : Nat} {B : BitVec 64}
    (hps : ∀ j pt, ps[j]? = some pt → j = i ∨ pt = .any) (hpi : ps[i]? = some (.buf k))
    (hB : argW vs i = some B) {x : BitVec 64} (h : ArgCells ps vs x) : Overlap B.toNat k x := by
  obtain ⟨j, w, hw, h⟩ := h
  rcases h with ⟨n, hn, hov⟩ | ⟨j', c, d, y, hn, -, -⟩
  · rcases hps j _ hn with rfl | h
    · rw [hpi] at hn
      cases hn
      rw [hB] at hw
      cases hw
      exact hov
    · cases h
  · rcases hps j _ hn with rfl | h
    · rw [hpi] at hn; cases hn
    · cases h

/-- The cells of the only buffer parameter `i` (`bufArg j 1 0`). -/
theorem argCells_bufArgAt {ps : List PT} {vs : List (ValueHOL 64)} {i j0 : Nat} {B L : BitVec 64}
    (hps : ∀ j pt, ps[j]? = some pt → j = i ∨ pt = .any) (hpi : ps[i]? = some (.bufArg j0 1 0))
    (hB : argW vs i = some B) (hL : argW vs j0 = some L) {x : BitVec 64} (h : ArgCells ps vs x) :
    Overlap B.toNat L.toNat x := by
  obtain ⟨j, w, hw, h⟩ := h
  rcases h with ⟨n, hn, -⟩ | ⟨j', c, d, y, hn, hy, hov⟩
  · rcases hps j _ hn with rfl | h
    · rw [hpi] at hn; cases hn
    · cases h
  · rcases hps j _ hn with rfl | h
    · rw [hpi] at hn
      cases hn
      rw [hB] at hw
      cases hw
      rw [hL] at hy
      cases hy
      simpa using hov
    · cases h

theorem add64_exit {I N : BitVec 64} (hIN : I.toNat ≤ N.toNat)
    (h : N.toNat < (I + BitVec.ofNat 64 64).toNat) : N.toNat - I.toNat < 64 := by
  have hI := I.isLt
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (show 64 < 2 ^ 64 by decide)] at h
  by_cases hw : I.toNat + 64 < 2 ^ 64
  · rw [Nat.mod_eq_of_lt hw] at h; omega
  · exfalso
    have : (I.toNat + 64) % 2 ^ 64 = I.toNat + 64 - 2 ^ 64 := by
      rw [Nat.mod_eq_sub_mod (by omega), Nat.mod_eq_of_lt (by omega)]
    have := N.isLt
    omega

/-! ## Locals -/

def ShL0 (P N O : BitVec 64) (m : LocalsH) : Prop :=
  m.lookup (nm "p") = some (.val (.word P)) ∧ m.lookup (nm "len") = some (.val (.word N)) ∧
    m.lookup (nm "out") = some (.val (.word O))

def ShLI (P N O : BitVec 64) (m : LocalsH) : Prop :=
  ShL0 P N O m ∧ ∃ I : BitVec 64, m.lookup (nm "i") = some (.val (.word I)) ∧ I.toNat ≤ N.toNat

def ShLX (P N O : BitVec 64) (m : LocalsH) : Prop :=
  ShL0 P N O m ∧ ∃ I : BitVec 64, m.lookup (nm "i") = some (.val (.word I)) ∧
    I.toNat ≤ N.toNat ∧ N.toNat < (I + BitVec.ofNat 64 64).toNat

def ShLR (P N O : BitVec 64) (m : LocalsH) : Prop :=
  ShL0 P N O m ∧ ∃ I Rm : BitVec 64, m.lookup (nm "i") = some (.val (.word I)) ∧
    m.lookup (nm "rem") = some (.val (.word Rm)) ∧ Rm.toNat < 64

def ShLT (P N O : BitVec 64) (m : LocalsH) : Prop :=
  ShLR P N O m ∧ ∃ T : BitVec 64, m.lookup (nm "total") = some (.val (.word T)) ∧
    (T.toNat = 64 ∨ T.toNat = 128)

theorem shL0_set {P N O : BitVec 64} {m : LocalsH} (h : ShL0 P N O m) {x : MlS}
    (h1 : x ≠ nm "p") (h2 : x ≠ nm "len") (h3 : x ≠ nm "out") (v : ValueHOL 64) :
    ShL0 P N O (m.update (x, v)) :=
  ⟨by rw [lookup_update_ne _ _ h1]; exact h.1, by rw [lookup_update_ne _ _ h2]; exact h.2.1,
    by rw [lookup_update_ne _ _ h3]; exact h.2.2⟩

theorem shL0_res {P N O : BitVec 64} {m : LocalsH} (h : ShL0 P N O m) {x : MlS}
    (h1 : x ≠ nm "p") (h2 : x ≠ nm "len") (h3 : x ≠ nm "out") (old : Option (ValueHOL 64)) :
    ShL0 P N O (m.resVarEq (x, old)) :=
  ⟨by rw [lookup_resVarEq_ne _ _ h1]; exact h.1, by rw [lookup_resVarEq_ne _ _ h2]; exact h.2.1,
    by rw [lookup_resVarEq_ne _ _ h3]; exact h.2.2⟩

theorem shL0_sv {P N O : BitVec 64} {s : State σ} (h : ShL0 P N O s.locals) {x : MlS}
    (h1 : x ≠ nm "p") (h2 : x ≠ nm "len") (h3 : x ≠ nm "out") (v : ValueHOL 64) :
    ShL0 P N O (setVarHOLFinite x v s).locals :=
  ⟨by rw [lk_set_ne _ _ h1]; exact h.1, by rw [lk_set_ne _ _ h2]; exact h.2.1,
    by rw [lk_set_ne _ _ h3]; exact h.2.2⟩

/-! ## The segments -/

section seg
variable {a : Act σ} (ha : ActOK a X) {P N O : BitVec 64}
  (hst : ScalarGlob a.Cb (nm "sha_st") 64) (hpd : ScalarGlob a.Cb (nm "sha_pad") 128)
include ha hst hpd

theorem sha_fin {sgB sgF : Sig}
    (hB : CSumm σ X a.Cb a.H (nm "sha256_block") sgB []) (hpB : sgB.params = [.buf 64, .any])
    (hgB : sgB.gw = []) (hgB2 : sgB.grows = true → a.sg.grows = true)
    (hF : CSumm σ X a.Cb a.H (nm "sha256_finish") sgF []) (hpF : sgF.params = [.any, .buf 32])
    (hgF : sgF.gw = []) (hgF2 : sgF.grows = true → a.sg.grows = true)
    (hout : BufOK a.Cb a.Γ0 a.p0 O.toNat 32) (hfootO : ∀ x, Overlap O.toNat 32 x → a.Foot x) :
    HoareG σ X (PreH a (ShLT P N O)) shaFin (HQa a) := by
  unfold shaFin
  refine hoareG_seqSP hqa_of_abn (hoareG_callSP ha hB (by simp [hgB]) hgB2 ?_) ?_
  · intro s _ _ Γ p _ hh vs hvs
    obtain ⟨W, hW, -, -, hc⟩ := glob_at ha hh hst
    obtain ⟨Wp, hWp, -, -, -⟩ := glob_at ha hh hpd
    rw [evs_cons hW (evs_cons hWp evs_nil)] at hvs
    cases hvs
    rw [hpB]
    exact ⟨argsOK_2 ⟨W, rfl, bufOK_cells hc⟩ trivial,
      fun x hx => foot_of_scell ha hh (hc x (argCells_bufAt ps_buf_any rfl rfl hx))⟩
  refine hoareG_seqSP (L := ShLT P N O) hqa_of_abn (hoareG_iteSP ?_ ?_) ?_
  · refine hoareG_pre (hoareG_callSP ha hB (by simp [hgB]) hgB2 ?_) fun _ _ h => h.1
    intro s _ _ Γ p _ hh vs hvs
    obtain ⟨W, hW, -, -, hc⟩ := glob_at ha hh hst
    obtain ⟨Wp, hWp, -, -, -⟩ := glob_at ha hh hpd
    rw [evs_cons hW (evs_cons (ev_add2 hWp (ev_cw _ 64)) evs_nil)] at hvs
    cases hvs
    rw [hpB]
    exact ⟨argsOK_2 ⟨W, rfl, bufOK_cells hc⟩ trivial,
      fun x hx => foot_of_scell ha hh (hc x (argCells_bufAt ps_buf_any rfl rfl hx))⟩
  · exact hoareG_pre (hoareG_skipSP fun _ h => h) fun _ _ h => h.1
  refine hoareG_seqSP hqa_of_abn (hoareG_callSP ha hF (by simp [hgF]) hgF2 ?_) ?_
  · intro s _ hL Γ p he hh vs hvs
    obtain ⟨W, hW, -, -, -⟩ := glob_at ha hh hst
    rw [evs_cons hW (evs_cons (ev_lw hL.1.1.2.2) evs_nil)] at hvs
    cases hvs
    rw [hpF]
    exact ⟨argsOK_2 trivial ⟨O, rfl, bufOK_later ha hh he hout⟩,
      fun x hx => hfootO x (argCells_bufAt ps_any_buf rfl rfl hx)⟩
  exact hoareG_return fun t _ ⟨_, hH'⟩ v _ =>
    hqa_of_hha (t := emptyLocalsHOLFinite t) (hha_congr (s := t) ha.hH rfl rfl rfl rfl hH') _

theorem sha_tot (hS : CSumm σ X a.Cb a.H (nm "st_be64") sigSt8 [])
    (hfin : HoareG σ X (PreH a (ShLT P N O)) shaFin (HQa a)) :
    HoareG σ X (PreH a (ShLT P N O)) shaTot (HQa a) := by
  have hse : scratchEnd < 2 ^ 63 := by decide
  unfold shaTot
  refine hoareG_seqSP (L := ShLT P N O) hqa_of_abn (hoareG_iteSP ?_ ?_) ?_
  · refine hoareG_pre (hoareG_assignSP ha.hH ?_) fun _ _ h => h.1
    intro s _ hL v hv
    rw [ev_cw] at hv
    cases hv
    obtain ⟨⟨h0, I, Rm, hi, hr, hRm⟩, -⟩ := hL
    exact ⟨⟨shL0_sv h0 (by decide) (by decide) (by decide) _, I, Rm,
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

theorem sha_tail (hZ : CSumm σ X a.Cb a.H (nm "memzero") sigMemzero [])
    (hM : CSumm σ X a.Cb a.H (nm "memcpy") sigMemcpy [])
    (htot : HoareG σ X (PreH a (ShLT P N O)) shaTot (HQa a)) :
    HoareG σ X (PreH a (ShLR P N O)) shaTail (HQa a) := by
  have hse : scratchEnd < 2 ^ 63 := by decide
  unfold shaTail
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
  exact ⟨⟨shL0_sv h0 (by decide) (by decide) (by decide) _, I, Rm,
    by rw [lk_set_ne _ _ (by decide)]; exact hi, by rw [lk_set_ne _ _ (by decide)]; exact hr, hRm⟩,
    _, lk_set_self _ _ _, Or.inl rfl⟩

end seg

theorem abn_nb {r : PanSemResultExact 64} (h : Abn r) : r ≠ .break ∧ r ≠ .continue := by
  rcases h with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> exact ⟨by simp, by simp⟩

theorem sha_loop {a : Act σ} (ha : ActOK a X) {P N O : BitVec 64}
    (hst : ScalarGlob a.Cb (nm "sha_st") 64) {sgB : Sig}
    (hB : CSumm σ X a.Cb a.H (nm "sha256_block") sgB []) (hpB : sgB.params = [.buf 64, .any])
    (hgB : sgB.gw = []) (hgB2 : sgB.grows = true → a.sg.grows = true) :
    HoareG σ X (PreH a (ShLI P N O)) (.while shaCond shaLoop) (SPA a (ShLX P N O)) := by
  refine hoareG_while (fun t h => ⟨h.1, hha_congr (s := t) ha.hH rfl rfl rfl rfl h.2⟩) ?_ ?_
  · refine hoareG_conseq (Q := SPA a (ShLI P N O)) ?_ (fun _ _ h => h) ?_
    · intro s hs ⟨⟨⟨h0, I, hi, hIN⟩, hH'⟩, hc⟩
      obtain ⟨w, hw, hw0⟩ := condTrue_iff.mp hc
      have hle := notLower_true' (cmp_val_true hw hw0 (ev_lw h0.2.1)
        (ev_add2 (ev_lw hi) (ev_cw _ 64)))
      refine (?_ : HoareG σ X (PreH a (fun m => ShL0 P N O m ∧
          m.lookup (nm "i") = some (.val (.word I)))) shaLoop (SPA a (ShLI P N O)))
        s hs ⟨⟨h0, hi⟩, hH'⟩
      unfold shaLoop
      refine hoareG_seqSP spa_of_abn (hoareG_callSP ha hB (by simp [hgB]) hgB2 ?_) ?_
      · intro u _ hL Γ p _ hh vs hvs
        obtain ⟨W, hW, -, -, hcl⟩ := glob_at ha hh hst
        rw [evs_cons hW (evs_cons (ev_add2 (ev_lw hL.1.1) (ev_lw hL.2)) evs_nil)] at hvs
        cases hvs
        rw [hpB]
        exact ⟨argsOK_2 ⟨W, rfl, bufOK_cells hcl⟩ trivial,
          fun x hx => foot_of_scell ha hh (hcl x (argCells_bufAt ps_buf_any rfl rfl hx))⟩
      refine hoareG_assignSP ha.hH fun u _ hL v hv => ?_
      rw [ev_add2 (ev_lw hL.2) (ev_cw _ 64)] at hv
      cases hv
      exact ⟨shL0_sv hL.1 (by decide) (by decide) (by decide) _, _, lk_set_self _ _ _, hle⟩
    · intro r t _ _ h
      refine ⟨h.1, fun hc => ?_, fun hb => ?_, fun r' hr' _ _ => ⟨fun h' => ?_, h.2⟩⟩
      · exact absurd rfl (abn_nb (h.2 _ hc).1).2
      · exact absurd rfl (abn_nb (h.2 _ hb).1).1
      · rw [hr'] at h'; cases h'
  · intro s _ ⟨⟨h0, I, hi, hIN⟩, hH'⟩ hc
    have hlt := notLower_false' (cmp_val_false hc (ev_lw h0.2.1) (ev_add2 (ev_lw hi) (ev_cw _ 64)))
    exact ⟨fun _ => ⟨⟨h0, I, hi, hIN, hlt⟩, hH'⟩, fun r' h => absurd h (by simp)⟩

def sigSha (n : Nat) (g : Bool) : Sig := ⟨[.any, .any, .buf n], [], [], g⟩

/-- **`sha256`** as a capability summary. -/
theorem csumm_sha256 {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hC : CfgOK C)
    (hal : ∀ x, X.memaddrs x → x.toNat % 8 = 0) (hAC : AllocCfg C) (hNS : NullSafe X)
    (hX : X.code.lookup = guestCode)
    (hst : ScalarGlob C (nm "sha_st") 64) (hpd : ScalarGlob C (nm "sha_pad") 128)
    {sgI sgB sgF : Sig}
    (hI : CSumm σ X C H (nm "sha256_state_init") sgI []) (hpI : sgI.params = [.buf 64])
    (hgI : sgI.gw = [])
    (hB : CSumm σ X C H (nm "sha256_block") sgB []) (hpB : sgB.params = [.buf 64, .any])
    (hgB : sgB.gw = [])
    (hF : CSumm σ X C H (nm "sha256_finish") sgF []) (hpF : sgF.params = [.any, .buf 32])
    (hgF : sgF.gw = [])
    (hZ : Summ σ X C H (nm "memzero") sigMemzero) (hM : Summ σ X C H (nm "memcpy") sigMemcpy)
    (hS : Summ σ X C H (nm "st_be64") sigSt8)
    {n : Nat} (hn : 32 ≤ n) {g : Bool} (hgI2 : sgI.grows = true → g = true)
    (hgB2 : sgB.grows = true → g = true) (hgF2 : sgF.grows = true → g = true) :
    CSumm σ X C H (nm "sha256") (sigSha n g) [] := by
  refine csumm_of_heap hH hC hal hAC hNS fun vs body callee rs hl s0 _ hloc Γ0 p0 ha hh => ?_
  rw [hX] at hl
  obtain ⟨rfl, -, A, B, Cc, rfl, hsa, hsb, hsc, hla, hlb, hlc⟩ :=
    lookupCode_three code_sha256 (by decide) (by decide) (by decide) hl
  obtain ⟨P, rfl⟩ := val_of_shapeEq_one hsa
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hsb
  obtain ⟨O, rfl⟩ := val_of_shapeEq_one hsc
  set a := actOf C H (sigSha n g) [] [.val (.word P), .val (.word N), .val (.word O)] s0 Γ0 p0
    with hadef
  have hout0 : BufOK a.Cb a.Γ0 a.p0 O.toNat n :=
    bufOK_of_buf (ps := (sigSha n g).params) ha.hargs0 (i := 2) (n := n) rfl rfl
  have hout : BufOK a.Cb a.Γ0 a.p0 O.toNat 32 := Helpers.bufOK_sub hout0 (le_refl _) (by omega)
  have hfootO : ∀ x, Overlap O.toNat 32 x → a.Foot x := fun x hx =>
    Or.inr (Or.inl (argCells_buf_at (ps := (sigSha n g).params) (i := 2) (n := n) rfl rfl
      (Helpers.overlap_mono hx (le_refl _) (by omega))))
  refine hoareG_conseq (P := PreH a (ShL0 P N O)) (Q := HQa a) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    exact ⟨⟨by rw [hloc]; exact hla, by rw [hloc]; exact hlb, by rw [hloc]; exact hlc⟩,
      Γ0, p0, ext_refl _, hh⟩
  · intro r t _ _ h r' hr hna
    obtain ⟨Γ', p', he, hh'⟩ := h r' hr hna
    exact ⟨Γ', p', he, hh', fun v _ i rt w hrt => by simp [sigSha] at hrt⟩
  unfold shaBody
  refine hoareG_seqSP hqa_of_abn (hoareG_callSP ha hI (by simp [hgI]) hgI2 ?_) ?_
  · intro s _ _ Γ p _ hh vs hvs
    obtain ⟨W, hW, -, -, hc⟩ := glob_at ha hh hst
    rw [evs_cons hW evs_nil] at hvs
    cases hvs
    rw [hpI]
    exact ⟨argsOK_1 ⟨W, rfl, bufOK_cells hc⟩,
      fun x hx => foot_of_scell ha hh (hc x (argCells_bufAt ps_buf rfl rfl hx))⟩
  refine hoareG_decH ha.hH (L' := ShLI P N O) ?_ ?_
  · intro s _ hL v hv
    rw [ev_cw] at hv
    cases hv
    exact ⟨shL0_sv hL (by decide) (by decide) (by decide) _, _, lk_set_self _ _ _, by simp⟩
  refine hoareG_seqSP hqa_of_abn (sha_loop ha hst hB hpB hgB hgB2) ?_
  refine hoareG_decH ha.hH (L' := ShLR P N O) ?_
    (sha_tail ha hst hpd (csumm_of_summ hZ) (csumm_of_summ hM)
      (sha_tot ha hst hpd (csumm_of_summ hS)
        (sha_fin ha hst hpd hB hpB hgB hgB2 hF hpF hgF hgF2 hout hfootO)))
  intro s _ hL v hv
  obtain ⟨h0, I, hi, hIN, hlt⟩ := hL
  rw [ev_sub2 (ev_lw h0.2.1) (ev_lw hi)] at hv
  cases hv
  have hR : (N - I).toNat < 64 := by
    have := add64_exit hIN hlt
    rw [BitVec.toNat_sub]
    omega
  exact ⟨shL0_sv h0 (by decide) (by decide) (by decide) _, I, N - I,
    by rw [lk_set_ne _ _ (by decide)]; exact hi, lk_set_self _ _ _, hR⟩

end InitECandidate.Solver.MemSafe.WaveHelpers
