import InitECandidate.Solver.MemSafe.Helpers.Rlp
import InitECandidate.Solver.Spec.Mpt.Leaves.RlpLen

set_option autoImplicit false

/-!
# Exact footprints of the transaction writers' leaves

`FootRet` specs (`Helpers/Seq.lean`: every good result keeps the globals and changes memory only
in the footprint; a return satisfies the return predicate) with exact footprints and lengths, for
the hand proof of `tx_encode_generic` (the cursor advances by exactly the bytes written):

* `footRet_rlp_list_header_len`: `rlp_list_header_len(n)` writes nothing, returns `hdrLen n`;
* `footRet_rlp_encode_list_header`: `rlp_encode_list_header(dst, n)` writes
  `[dst, dst + hdrLen n)`, returns `hdrLen n` (`HdrPre` / `HdrR` / `HdrRet` of `rlp_write_header`
  with the base argument dropped);
* `footRet_tx_put_to`: `tx_put_to(dst, to)` writes `[dst, dst + 21)`, returns `1` (`to = 0`) or
  `21`.
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

variable {σ : Type} {X : Ctx 64}

/-! ## Code -/

def lhlBody : ProgHOL 64 := .call none (nm "rlp_header_len") [lv (nm "payload_len")]

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_rlp_list_header_len : fnEntry Guest.Software.guestFn_rlp_list_header_len =
    (nm "rlp_list_header_len", [(nm "payload_len", .one)], lhlBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_rlp_list_header_len : guestCode (nm "rlp_list_header_len") =
    some ([(nm "payload_len", .one)], lhlBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 126) (by decide)) ⟨_, rfl⟩
    entry_rlp_list_header_len

def elhBody : ProgHOL 64 :=
  .call none (nm "rlp_write_header") [lv (nm "dst"), cw 192, lv (nm "payload_len")]

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_rlp_encode_list_header : fnEntry Guest.Software.guestFn_rlp_encode_list_header =
    (nm "rlp_encode_list_header", [(nm "dst", .one), (nm "payload_len", .one)], elhBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_rlp_encode_list_header : guestCode (nm "rlp_encode_list_header") =
    some ([(nm "dst", .one), (nm "payload_len", .one)], elhBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 124) (by decide)) ⟨_, rfl⟩
    entry_rlp_encode_list_header

def ptoBody : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (lv (nm "to")) (cw 0))
      (.seq (.storeByte (lv (nm "dst")) (cw 128)) (.return (cw 1))) .skip)
    (.call none (nm "rlp_encode_bytes") [lv (nm "dst"), lv (nm "to"), cw 20])

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_tx_put_to : fnEntry Guest.Software.guestFn_tx_put_to =
    (nm "tx_put_to", [(nm "dst", .one), (nm "to", .one)], ptoBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_tx_put_to : guestCode (nm "tx_put_to") =
    some ([(nm "dst", .one), (nm "to", .one)], ptoBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 320) (by decide)) ⟨_, rfl⟩
    entry_tx_put_to

/-! ## `rlp_list_header_len` -/

theorem hdrLenF_eq (N : BitVec 64) :
    Spec.Mpt.hdrLen N = BitVec.ofNat 64 (Helpers.hdrLen N.toNat) := by
  unfold Spec.Mpt.hdrLen Helpers.hdrLen
  rw [Spec.Mpt.Leaves.beLen_eq]
  split
  · rfl
  · apply BitVec.eq_of_toNat_eq
    have h8 := beLen_le8 N.isLt
    rw [BitVec.toNat_add, BitVec.toNat_ofNat, BitVec.toNat_ofNat]
    have h1 : (1 : BitVec 64).toNat = 1 := rfl
    rw [h1]
    omega

/-- `rlp_list_header_len(n)` returns `hdrLen n`. -/
def LhlRet (vs : List (ValueHOL 64)) (v : ValueHOL 64) : Prop :=
  ∀ N : BitVec 64, argW vs 0 = some N → v = .val (.word (BitVec.ofNat 64 (Helpers.hdrLen N.toNat)))

theorem footRet_rlp_list_header_len (hC : X.code.lookup = guestCode) :
    FootRet σ X (nm "rlp_list_header_len") (fun _ => True) NoFoot LhlRet := by
  refine footRet_of_hoareG fun vs body callee rs hl s0 _ hloc _ => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hsA, hA⟩ := lookupCode_one code_rlp_list_header_len hl
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hsA
  have hn0 : s0.locals.lookup (nm "payload_len") = some (.val (.word N)) := by rw [hloc]; exact hA
  refine hoareG_conseq (P := LPre (NoFoot [.val (.word N)]) s0
      (fun m => m.lookup (nm "payload_len") = some (.val (.word N))))
    (Q := LQ (NoFoot [.val (.word N)]) s0 (fun _ => True)
      (fun v => v = .val (.word (BitVec.ofNat 64 (Helpers.hdrLen N.toNat)))))
    ?_ (fun t _ ht => by subst ht; exact lpre_init hn0)
    (fun _ _ _ _ h => ⟨h.1, fun w hw N' hN' => by cases hN'; exact h.2.2 w hw⟩)
  refine hoareG_tailFoot (Spec.Mpt.Leaves.footRet_rlp_header_len hC) fun t _ hpre vs' hvs' => ?_
  rw [evs_cons (ev_lw hpre.1) evs_nil] at hvs'
  cases hvs'
  refine ⟨trivial, fun a h => h, fun v hv => ?_⟩
  have := hv N rfl
  rw [this, hdrLenF_eq]

/-! ## `rlp_encode_list_header` -/

def ElhPre (vs : List (ValueHOL 64)) : Prop :=
  ∃ D : BitVec 64, argW vs 0 = some D ∧ ∀ N : BitVec 64, argW vs 1 = some N →
    D.toNat + Helpers.hdrLen N.toNat ≤ scratchEnd

def ElhR (vs : List (ValueHOL 64)) (a : BitVec 64) : Prop :=
  ∃ D N : BitVec 64, argW vs 0 = some D ∧ argW vs 1 = some N ∧
    Overlap D.toNat (Helpers.hdrLen N.toNat) a

def ElhRet (vs : List (ValueHOL 64)) (v : ValueHOL 64) : Prop :=
  ∀ N : BitVec 64, argW vs 1 = some N → v = .val (.word (BitVec.ofNat 64 (Helpers.hdrLen N.toNat)))

theorem footRet_rlp_encode_list_header (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FootRet σ X (nm "rlp_encode_list_header") ElhPre ElhR ElhRet := by
  refine footRet_of_hoareG fun vs body callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hA', hB', hla, hlb⟩ :=
    lookupCode_two code_rlp_encode_list_header (by decide) hl
  obtain ⟨D, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hB'
  obtain ⟨D', hD, hb⟩ := hP
  cases hD
  have hb := hb N rfl
  let Rf := ElhR [.val (.word D), .val (.word N)]
  let L0 : Locals → Prop := fun m => m.lookup (nm "dst") = some (.val (.word D)) ∧
    m.lookup (nm "payload_len") = some (.val (.word N))
  refine hoareG_conseq (P := LPre Rf s0 L0)
    (Q := LQ Rf s0 (fun _ => True)
      (fun v => v = .val (.word (BitVec.ofNat 64 (Helpers.hdrLen N.toNat)))))
    ?_ (fun t _ ht => by
      subst ht; exact lpre_init ⟨by rw [hloc]; exact hla, by rw [hloc]; exact hlb⟩)
    (fun _ _ _ _ h => ⟨h.1, fun w hw N' hN' => by cases hN'; exact h.2.2 w hw⟩)
  refine hoareG_tailFoot (footRet_rlp_write_header hC hA) fun t _ hpre vs' hvs' => ?_
  rw [evs_cons (ev_lw hpre.1.1) (evs_cons (ev_cw _ 192) (evs_cons (ev_lw hpre.1.2) evs_nil))] at hvs'
  cases hvs'
  refine ⟨⟨D, rfl, fun N' hN' => by cases hN'; exact hb⟩, fun a ⟨D2, N2, hD2, hN2, hov⟩ => ?_,
    fun v hv => hv N rfl⟩
  cases hD2
  cases hN2
  exact ⟨D, N, rfl, rfl, hov⟩

/-! ## `tx_put_to` -/

def ToPre (vs : List (ValueHOL 64)) : Prop :=
  ∃ D : BitVec 64, argW vs 0 = some D ∧ D.toNat + 21 ≤ scratchEnd

def ToR (vs : List (ValueHOL 64)) (a : BitVec 64) : Prop :=
  ∃ D : BitVec 64, argW vs 0 = some D ∧ Overlap D.toNat 21 a

/-- The length of `toItem`: `1` for creation, `21` for an address. -/
def toLen (T : BitVec 64) : Nat := if T = 0 then 1 else 21

def ToRet (vs : List (ValueHOL 64)) (v : ValueHOL 64) : Prop :=
  ∀ T : BitVec 64, argW vs 1 = some T → v = .val (.word (BitVec.ofNat 64 (toLen T)))

theorem footRet_tx_put_to (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FootRet σ X (nm "tx_put_to") ToPre ToR ToRet := by
  refine footRet_of_hoareG fun vs body callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hA', hB', hla, hlb⟩ := lookupCode_two code_tx_put_to (by decide) hl
  obtain ⟨D, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨T, rfl⟩ := val_of_shapeEq_one hB'
  obtain ⟨D', hD, hb⟩ := hP
  cases hD
  have hse : scratchEnd < 2 ^ 63 := by decide
  let Rf := ToR [.val (.word D), .val (.word T)]
  have hR : ∀ a, Overlap D.toNat 21 a → Rf a := fun a h => ⟨D, rfl, h⟩
  let L0 : Locals → Prop := fun m => m.lookup (nm "dst") = some (.val (.word D)) ∧
    m.lookup (nm "to") = some (.val (.word T))
  refine hoareG_conseq (P := LPre Rf s0 L0)
    (Q := LQ Rf s0 (fun _ => True) (fun v => v = .val (.word (BitVec.ofNat 64 (toLen T)))))
    ?_ (fun t _ ht => by
      subst ht; exact lpre_init ⟨by rw [hloc]; exact hla, by rw [hloc]; exact hlb⟩)
    (fun _ _ _ _ h => ⟨h.1, fun w hw T' hT' => by cases hT'; exact h.2.2 w hw⟩)
  refine hoareG_seqL (L2 := fun m => L0 m ∧ T ≠ 0) ?_ ?_
  · refine hoareG_ite ?_ (hoareG_skip fun t _ ⟨⟨hL, hbw⟩, hc⟩ => ⟨hbw, fun _ => ⟨hL, ?_⟩,
      fun _ h => nomatch h⟩)
    · refine hoareG_pre (P := LPre Rf s0 (fun m => L0 m ∧ T = 0)) ?_ ?_
      · refine hoareG_seqL (L2 := fun m => L0 m ∧ T = 0)
          (hoareG_stP (k := .b) (c := 0) (n := 21) hA (fun _ h => h.1.1) (by omega) (by omega) hR
            (fun h => nomatch h)) ?_
        refine hoareG_returnQ fun t _ hL w hw => ?_
        rw [ev_cw] at hw
        cases hw
        unfold toLen
        rw [if_pos hL.2]
      · intro t _ ⟨⟨hL, hbw⟩, w, hw, hw0⟩
        have hxy := cmp_val_true hw hw0 (ev_lw hL.2) (ev_cw _ 0)
        simp only [wordCmpHOL, beq_iff_eq] at hxy
        exact ⟨⟨hL, hxy⟩, hbw⟩
    · have hxy := cmp_val_false hc (ev_lw hL.2) (ev_cw _ 0)
      simp only [wordCmpHOL, beq_eq_false_iff_ne] at hxy
      exact hxy
  · refine hoareG_tailFoot (footRet_rlp_encode_bytes hC hA) fun t _ hpre vs' hvs' => ?_
    obtain ⟨⟨hd, ht⟩, hT0⟩ := hpre.1
    rw [evs_cons (ev_lw hd) (evs_cons (ev_lw ht) (evs_cons (ev_cw _ 20) evs_nil))] at hvs'
    cases hvs'
    have h20 : (BitVec.ofNat 64 20).toNat = 20 := rfl
    have hh20 : Helpers.hdrLen 20 = 1 := by decide
    refine ⟨⟨D, BitVec.ofNat 64 20, rfl, rfl, by rw [h20, hh20]; omega⟩,
      fun a ⟨D2, N2, hD2, hN2, hov⟩ => ?_, fun v hv => ?_⟩
    · cases hD2
      cases hN2
      rw [h20, hh20] at hov
      exact hR a hov
    · obtain ⟨k, rfl, -, -, hk⟩ := hv _ rfl
      rw [h20, hh20] at hk
      unfold toLen
      rw [if_neg hT0, hk (by decide)]


/-! ## Loop bodies with calls -/

/-- A loop-body post: footprint always, the invariant on normal completion, and every other
result abnormal (no `break` / `continue` / `return` in the body). -/
def LB (Rf : BitVec 64 → Prop) (s0 : State σ) (J : Locals → Prop)
    (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  BWPost Rf s0 t ∧ (r = none → J t.locals) ∧ ∀ r', r = some r' → Abn r'

theorem hoareG_callAFootB {f x : MlS} {args : List (ExpHOL 64)} {Pre : List (ValueHOL 64) → Prop}
    {R : List (ValueHOL 64) → BitVec 64 → Prop} {RetF : List (ValueHOL 64) → ValueHOL 64 → Prop}
    (hf : FootRet σ X f Pre R RetF) {Rf : BitVec 64 → Prop} {s0 : State σ} {L L' : Locals → Prop}
    (h : ∀ s : State σ, InCtx s X → LPre Rf s0 L s → ∀ vs, evs s args = some vs →
      Pre vs ∧ ∀ a, R vs a → Rf a)
    (hL : ∀ (s : State σ) vs v, L s.locals → evs s args = some vs → RetF vs v →
      isValidValueHOLExact s.toExact .local x v = true → L' (s.locals.update (x, v))) :
    HoareG σ X (LPre Rf s0 L) (.call (some (some (.local, x), none)) f args) (LB Rf s0 L') := by
  refine hoareG_callA hf ?_ ?_
  · intro s hs hpre vs hvs callee v st hR _ hval
    obtain ⟨hP, hsub⟩ := h s hs hpre vs hvs
    obtain ⟨hgl, hmod, hret⟩ := hR (by simp [Good]) hP
    exact ⟨⟨hgl.trans hpre.2.1, hpre.2.2.trans (hmod.mono hsub)⟩,
      fun _ => hL s vs v hpre.1 hvs (hret v rfl) hval, fun _ h => nomatch h⟩
  · intro s hs hpre vs hvs callee r st hR _ habn
    obtain ⟨hP, hsub⟩ := h s hs hpre vs hvs
    obtain ⟨hgl, hmod, -⟩ := hR (abn_good habn) hP
    exact ⟨⟨hgl.trans hpre.2.1, hpre.2.2.trans (hmod.mono hsub)⟩, (fun h => nomatch h),
      fun r' hr' => by cases hr'; exact habn⟩

theorem hoareG_seqB {a b : ProgHOL 64} {Rf : BitVec 64 → Prop} {s0 : State σ}
    {L1 L2 L3 : Locals → Prop}
    (ha : HoareG σ X (LPre Rf s0 L1) a (LB Rf s0 L2))
    (hb : HoareG σ X (LPre Rf s0 L2) b (LB Rf s0 L3)) :
    HoareG σ X (LPre Rf s0 L1) (.seq a b) (LB Rf s0 L3) :=
  hoareG_seq ha (fun _ _ _ hr _ h => ⟨h.1, fun h' => absurd h' hr, h.2.2⟩)
    (hoareG_pre hb fun _ _ h => ⟨h.2.1 rfl, h.1⟩)

theorem hoareG_assignB {n : MlS} {e : ExpHOL 64} {Rf : BitVec 64 → Prop} {s0 : State σ}
    {L L' : Locals → Prop}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v →
      L' (s.locals.update (n, v))) :
    HoareG σ X (LPre Rf s0 L) (.assign .local n e) (LB Rf s0 L') :=
  hoareG_assign fun s hs hp v hv _ => ⟨hp.2, fun _ => h s hs hp.1 v hv, fun _ h => nomatch h⟩

/-- **A loop** whose body ends normally keeping `J` or abnormally. -/
theorem hoareG_whileB {c : ExpHOL 64} {body : ProgHOL 64} {Rf : BitVec 64 → Prop}
    {s0 : State σ} {J J' : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (hb : HoareG σ X (fun s => LPre Rf s0 J s ∧ CondTrue s c) body (LB Rf s0 J))
    (hexit : ∀ s : State σ, InCtx s X → J s.locals → ev s c = some (.val (.word 0)) →
      J' s.locals) :
    HoareG σ X (LPre Rf s0 J) (.while c body) (LQ Rf s0 J' Ret) := by
  refine hoareG_while (fun t h => h) ?_
    (fun s hs h hc => ⟨h.2, fun _ => hexit s hs h.1 hc, fun _ h => nomatch h⟩)
  intro t hs hpre hgood
  obtain ⟨hbw, hJ, hab⟩ := hb t hs hpre hgood
  refine ⟨fun hr => ⟨hJ hr, hbw⟩, fun hr => ?_, fun hr => ?_, fun r' hr' _ _ => ⟨hbw, ?_, ?_⟩⟩
  · rcases hab _ hr with ⟨e, v, h⟩ | ⟨e, h⟩ <;> cases h
  · rcases hab _ hr with ⟨e, v, h⟩ | ⟨e, h⟩ <;> cases h
  · intro h; rw [h] at hr'; cases hr'
  · intro v hv
    rw [hr'] at hv
    cases hv
    rcases hab _ hr' with ⟨e, w, h⟩ | ⟨e, h⟩ <;> cases h

/-! ## `tx_put_blob_hashes` -/

def bhLoop : ProgHOL 64 :=
  .seq (.call (some (some (.local, nm "w"), none)) (nm "rlp_encode_bytes")
      [lv (nm "p"), .op .add [lv (nm "buf"), .panop .mul [lv (nm "i"), cw 32]], cw 32])
    (.seq (.assign .local (nm "p") (.op .add [lv (nm "p"), lv (nm "w")]))
      (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1])))

def bhBody : ProgHOL 64 :=
  .decCall (nm "w") .one (nm "rlp_encode_list_header") [lv (nm "dst"), .panop .mul [cw 33, lv (nm "n")]]
    (.dec (nm "p") .one (.op .add [lv (nm "dst"), lv (nm "w")])
      (.dec (nm "i") .one (cw 0)
        (.seq (.while (.cmp .lower (lv (nm "i")) (lv (nm "n"))) bhLoop)
          (.return (.op .sub [lv (nm "p"), lv (nm "dst")])))))

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_tx_put_blob_hashes : fnEntry Guest.Software.guestFn_tx_put_blob_hashes =
    (nm "tx_put_blob_hashes", [(nm "dst", .one), (nm "buf", .one), (nm "n", .one)], bhBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_tx_put_blob_hashes : guestCode (nm "tx_put_blob_hashes") =
    some ([(nm "dst", .one), (nm "buf", .one), (nm "n", .one)], bhBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 323) (by decide)) ⟨_, rfl⟩
    entry_tx_put_blob_hashes

/-- The length of `.list (blobVersionedHashes.map .bytes)`: `hdrLen (33 n) + 33 n`. -/
def bhLen (N : Nat) : Nat := Helpers.hdrLen (33 * N) + 33 * N

def BhPre (vs : List (ValueHOL 64)) : Prop :=
  ∃ D N : BitVec 64, argW vs 0 = some D ∧ argW vs 2 = some N ∧ 33 * N.toNat < 2 ^ 64 ∧
    D.toNat + bhLen N.toNat ≤ scratchEnd

def BhR (vs : List (ValueHOL 64)) (a : BitVec 64) : Prop :=
  ∃ D N : BitVec 64, argW vs 0 = some D ∧ argW vs 2 = some N ∧ Overlap D.toNat (bhLen N.toNat) a

def BhRet (vs : List (ValueHOL 64)) (v : ValueHOL 64) : Prop :=
  ∀ N : BitVec 64, argW vs 2 = some N → v = .val (.word (BitVec.ofNat 64 (bhLen N.toNat)))

/-- The loop invariant: `p = dst + hdrLen + 33 i`, `i ≤ n`. -/
def BhJ (D Bf N : BitVec 64) (h : Nat) (m : Locals) : Prop :=
  m.lookup (nm "dst") = some (.val (.word D)) ∧ m.lookup (nm "buf") = some (.val (.word Bf)) ∧
    m.lookup (nm "n") = some (.val (.word N)) ∧ (∃ W : BitVec 64, m.lookup (nm "w") = some (.val (.word W))) ∧
    ∃ I : BitVec 64, m.lookup (nm "i") = some (.val (.word I)) ∧ I.toNat ≤ N.toNat ∧
      m.lookup (nm "p") = some (.val (.word (D + BitVec.ofNat 64 (h + 33 * I.toNat))))

theorem footRet_tx_put_blob_hashes (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FootRet σ X (nm "tx_put_blob_hashes") BhPre BhR BhRet := by
  refine footRet_of_hoareG fun vs body callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, Bv, Cv, rfl, hA', hB', hC', hla, hlb, hlc⟩ :=
    lookupCode_three code_tx_put_blob_hashes (by decide) (by decide) (by decide) hl
  obtain ⟨D, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨Bf, rfl⟩ := val_of_shapeEq_one hB'
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hC'
  obtain ⟨D', N', hD, hN, h33, hb⟩ := hP
  cases hD
  cases hN
  have hse : scratchEnd < 2 ^ 63 := by decide
  set h := Helpers.hdrLen (33 * N.toNat) with hh
  have hh9 := hdrLen_le (n := 33 * N.toNat) h33
  have hbl : bhLen N.toNat = h + 33 * N.toNat := rfl
  let Rf := BhR [.val (.word D), .val (.word Bf), .val (.word N)]
  have hR : ∀ a, Overlap D.toNat (h + 33 * N.toNat) a → Rf a := fun a ha => ⟨D, N, rfl, rfl, ha⟩
  have hm33 : (BitVec.ofNat 64 33 * N).toNat = 33 * N.toNat := by
    rw [BitVec.toNat_mul, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 33) (by decide),
      Nat.mod_eq_of_lt h33]
  let L0 : Locals → Prop := fun m => m.lookup (nm "dst") = some (.val (.word D)) ∧
    m.lookup (nm "buf") = some (.val (.word Bf)) ∧ m.lookup (nm "n") = some (.val (.word N))
  refine hoareG_conseq (P := LPre Rf s0 L0)
    (Q := LQ Rf s0 (fun _ => True) (fun v => v = .val (.word (BitVec.ofNat 64 (bhLen N.toNat)))))
    ?_ (fun t _ ht => by
      subst ht
      exact lpre_init ⟨by rw [hloc]; exact hla, by rw [hloc]; exact hlb, by rw [hloc]; exact hlc⟩)
    (fun _ _ _ _ hq => ⟨hq.1, fun w hw N' hN' => by cases hN'; exact hq.2.2 w hw⟩)
  refine hoareG_decCallFoot (L' := fun _ _ => True) (footRet_rlp_encode_list_header hC hA) ?_ ?_
    (fun _ _ _ _ => trivial)
  · intro t _ hpre vs' hvs'
    obtain ⟨hd, -, hn⟩ := hpre.1
    rw [evs_cons (ev_lw hd) (evs_cons (ev_mul2 (ev_cw _ 33) (ev_lw hn)) evs_nil)] at hvs'
    cases hvs'
    refine ⟨⟨D, rfl, fun N2 hN2 => by cases hN2; rw [hm33]; omega⟩,
      fun a ⟨D2, N2, hD2, hN2, hov⟩ => ?_⟩
    cases hD2
    cases hN2
    rw [hm33] at hov
    exact hR a (overlap_mono hov (by omega) (by omega))
  intro s vs' v _ hL hvs' hret _
  obtain ⟨hd, hbf, hn⟩ := hL
  rw [evs_cons (ev_lw hd) (evs_cons (ev_mul2 (ev_cw _ 33) (ev_lw hn)) evs_nil)] at hvs'
  cases hvs'
  have hv := hret _ rfl
  rw [hm33] at hv
  subst hv
  have hhN : (BitVec.ofNat 64 h).toNat = h := by
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  refine hoareG_decL (L' := fun _ _ => True) ?_ (fun _ _ _ _ => trivial)
  intro s1 _ hL1 v1 hv1 _
  rw [ev_add2 (ev_lw (by rw [hL1, lookup_update_ne _ _ (by decide)]; exact hd))
    (ev_lw (by rw [hL1]; exact lookup_update_self _ _ _))] at hv1
  cases hv1
  refine hoareG_decL (L' := fun _ _ => True) ?_ (fun _ _ _ _ => trivial)
  intro s2 _ hL2 v2 hv2 _
  rw [ev_cw] at hv2
  cases hv2
  refine hoareG_preL (L' := BhJ D Bf N h) ?_ ?_
  rotate_left
  · intro m hm
    subst hm
    rw [hL2, hL1]
    refine ⟨?_, ?_, ?_, ⟨BitVec.ofNat 64 h, ?_⟩, BitVec.ofNat 64 0, lookup_update_self _ _ _,
      by simp, ?_⟩
    · rw [lookup_update_ne _ _ (by decide), lookup_update_ne _ _ (by decide),
        lookup_update_ne _ _ (by decide)]; exact hd
    · rw [lookup_update_ne _ _ (by decide), lookup_update_ne _ _ (by decide),
        lookup_update_ne _ _ (by decide)]; exact hbf
    · rw [lookup_update_ne _ _ (by decide), lookup_update_ne _ _ (by decide),
        lookup_update_ne _ _ (by decide)]; exact hn
    · rw [lookup_update_ne _ _ (by decide), lookup_update_ne _ _ (by decide)]
      exact lookup_update_self _ _ _
    · rw [lookup_update_ne _ _ (by decide)]
      rw [lookup_update_self]
      simp [hh]
  refine hoareG_seqL (L2 := fun m => BhJ D Bf N h m ∧ ∀ I : BitVec 64,
    m.lookup (nm "i") = some (.val (.word I)) → N.toNat ≤ I.toNat) ?_ ?_
  · refine hoareG_whileB ?_ ?_
    · rintro t ht ⟨⟨⟨hd', hbf', hn', -, I, hi, hIN, hp⟩, hbw⟩, hcond⟩
      have hIlt : I.toNat < N.toNat := ltN_true hn' hi hcond
      have hP : (D + BitVec.ofNat 64 (h + 33 * I.toNat)).toNat = D.toNat + (h + 33 * I.toNat) := by
        rw [toNat_addc (by omega)]
      refine (?_ : HoareG σ X (LPre Rf s0 (fun m => m = t.locals)) bhLoop (LB Rf s0 (BhJ D Bf N h)))
        t ht ⟨rfl, hbw⟩
      unfold bhLoop
      refine hoareG_seqB (L2 := fun m => m.lookup (nm "w") = some (.val (.word (BitVec.ofNat 64 33))) ∧
        ∀ y, y ≠ nm "w" → m.lookup y = t.locals.lookup y) ?_ ?_
      · refine hoareG_callAFootB (footRet_rlp_encode_bytes hC hA) ?_ ?_
        · intro u _ hpre vs2 hvs2
          rw [evs_cons (ev_lw (by rw [hpre.1]; exact hp))
            (evs_cons (ev_add2 (ev_lw (by rw [hpre.1]; exact hbf')) (ev_mul2 (ev_lw (by rw [hpre.1]; exact hi)) (ev_cw _ 32)))
              (evs_cons (ev_cw _ 32) evs_nil))] at hvs2
          cases hvs2
          have h32 : (BitVec.ofNat 64 32).toNat = 32 := rfl
          have hh32 : Helpers.hdrLen 32 = 1 := by decide
          refine ⟨⟨_, _, rfl, rfl, by rw [h32, hh32, hP]; omega⟩,
            fun a ⟨D2, N2, hD2, hN2, hov⟩ => ?_⟩
          cases hD2
          cases hN2
          rw [h32, hh32, hP] at hov
          exact hR a (overlap_mono hov (by omega) (by omega))
        · intro u vs2 v hL hvs2 hret _
          rw [evs_cons (ev_lw (by rw [hL]; exact hp))
            (evs_cons (ev_add2 (ev_lw (by rw [hL]; exact hbf')) (ev_mul2 (ev_lw (by rw [hL]; exact hi))
              (ev_cw _ 32))) (evs_cons (ev_cw _ 32) evs_nil))] at hvs2
          cases hvs2
          obtain ⟨k, rfl, -, -, hk⟩ := hret _ rfl
          have h32 : (BitVec.ofNat 64 32).toNat = 32 := rfl
          have hh32 : Helpers.hdrLen 32 = 1 := by decide
          rw [h32, hh32] at hk
          rw [hk (by decide)]
          refine ⟨lookup_update_self _ _ _, fun y hy => ?_⟩
          rw [lookup_update_ne _ _ (Ne.symm hy), hL]
      refine hoareG_seqB (L2 := fun m => m.lookup (nm "w") = some (.val (.word (BitVec.ofNat 64 33))) ∧
        m.lookup (nm "p") = some (.val (.word (D + BitVec.ofNat 64 (h + 33 * (I.toNat + 1))))) ∧
        ∀ y, y ≠ nm "w" → y ≠ nm "p" → m.lookup y = t.locals.lookup y) ?_ ?_
      · refine hoareG_assignB fun u _ ⟨hw, hrest⟩ v hv => ?_
        rw [ev_add2 (ev_lw (by rw [hrest _ (by decide)]; exact hp)) (ev_lw hw)] at hv
        cases hv
        refine ⟨by rw [lookup_update_ne _ _ (by decide)]; exact hw, ?_, fun y h1 h2 => ?_⟩
        · rw [lookup_update_self]
          congr 3
          apply BitVec.eq_of_toNat_eq
          have hI1 : D.toNat + (h + 33 * (I.toNat + 1)) < 2 ^ 64 := by omega
          rw [BitVec.toNat_add, hP, toNat_addc hI1, BitVec.toNat_ofNat]
          have h33' : (33 : Nat) % 2 ^ 64 = 33 := by decide
          rw [h33', Nat.mod_eq_of_lt (by omega)]
          omega
        · rw [lookup_update_ne _ _ (Ne.symm h2)]; exact hrest y h1
      · refine hoareG_assignB fun u _ ⟨hw, hp2, hrest⟩ v hv => ?_
        rw [ev_add2 (ev_lw (by rw [hrest _ (by decide) (by decide)]; exact hi)) (ev_cw _ 1)] at hv
        cases hv
        have hI1 : (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := by
          rw [BitVec.toNat_add, BitVec.toNat_ofNat]; omega
        refine ⟨?_, ?_, ?_, ⟨BitVec.ofNat 64 33, ?_⟩, I + BitVec.ofNat 64 1, lookup_update_self _ _ _,
          by omega, ?_⟩
        · rw [lookup_update_ne _ _ (by decide), hrest _ (by decide) (by decide)]; exact hd'
        · rw [lookup_update_ne _ _ (by decide), hrest _ (by decide) (by decide)]; exact hbf'
        · rw [lookup_update_ne _ _ (by decide), hrest _ (by decide) (by decide)]; exact hn'
        · rw [lookup_update_ne _ _ (by decide)]; exact hw
        · rw [lookup_update_ne _ _ (by decide), hI1]; exact hp2
    · intro t _ hJ hc
      refine ⟨hJ, fun I hI => ?_⟩
      obtain ⟨_, _, hn', _, I', hi', _, _⟩ := hJ
      rw [hi'] at hI
      cases hI
      have := cmp_val_false hc (ev_lw hi') (ev_lw hn')
      exact lower_false this
  · refine hoareG_returnQ fun t _ ⟨⟨hd', _, _, _, I, hi, hIN, hp⟩, hge⟩ v hv => ?_
    have hI : I.toNat = N.toNat := by have := hge I hi; omega
    rw [ev_sub2 (ev_lw hp) (ev_lw hd')] at hv
    cases hv
    rw [hI, hbl, BitVec.add_comm, BitVec.add_sub_cancel]

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.footRet_rlp_list_header_len
#print axioms InitECandidate.Solver.MemSafe.Rec.footRet_rlp_encode_list_header
#print axioms InitECandidate.Solver.MemSafe.Rec.footRet_tx_put_to
#print axioms InitECandidate.Solver.MemSafe.Rec.footRet_tx_put_blob_hashes
