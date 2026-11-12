import InitECandidate.Solver.MemSafe.Aw.Hdr

set_option autoImplicit false

/-!
# Target F, part 2: `decode_header`
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Aw
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

def dtopN : MlS := nm "top"
def dlstN : MlS := nm "lst"
def dicN : MlS := nm "is_current"
def dhN : MlS := nm "h"
def dfN : MlS := nm "f"
def ddN : MlS := nm "d"
def dwN : MlS := nm "w"
def dtsfN : MlS := nm "tsf"
def dexN : MlS := nm "ex"
def dbgN : MlS := nm "bg"
def hdrErrN : MlS := nm "HdrErr"

def dst (c : Nat) (e : ExpHOL 64) : ProgHOL 64 := .store (.op .add [lv dhN, cw c]) e
def dca (x g : MlS) (args : List (ExpHOL 64)) : ProgHOL 64 := .call (some (some (.local, x), none)) g args
/-- Right-nested sequence ending in `last`. -/
def sq : List (ProgHOL 64) → ProgHOL 64 → ProgHOL 64
  | [], l => l
  | x :: xs, l => .seq x (sq xs l)

def dfl (x : MlS) (i w : Nat) : List (ProgHOL 64) := [dca x (nm "hdr_bytes_field") [lv arrN, cw i, cw w]]
def dcb (x : MlS) (i w c : Nat) : List (ProgHOL 64) :=
  [dca x (nm "hdr_bytes_field") [lv arrN, cw i, cw w], dst c (lv x)]
def dcw (i c : Nat) : List (ProgHOL 64) :=
  [dca dwN (nm "hdr_word_field") [lv arrN, cw i], dst c (lv dwN)]

def dhKbg : ProgHOL 64 :=
  sq (dcw 17 200 ++ [dca dbgN (nm "hdr_uint_field") [lv arrN, cw 18, cw 8]] ++ dcw 18 208 ++
      dcb dfN 19 32 216 ++ dcb dfN 20 32 224)
    (.seq (.ite (.cmp .notEqual (lv dicN) (cw 0))
        (sq (dcb dfN 21 32 232 ++ [dca dbgN (nm "hdr_uint_field") [lv arrN, cw 22, cw 8],
            dca dwN (nm "hdr_word_field") [lv arrN, cw 22]]) (dst 240 (lv dwN)))
        (sq [dst 232 (cw 0)] (dst 240 (cw 0))))
      (.return (lv dhN)))

def dhKex : ProgHOL 64 :=
  sq ([dst 128 (.rfield 0 (lv dexN)), dst 136 (.rfield 1 (lv dexN))] ++ dcb dfN 13 32 144 ++
      dcb dfN 14 8 152 ++ [dca ddN (nm "hdr_u256_field") [lv arrN, cw 15, cw 0], dst 160 (lv ddN)] ++
      dcb dfN 16 32 192)
    (.decCall dbgN (.comb [.one, .one]) (nm "hdr_uint_field") [lv arrN, cw 17, cw 8] dhKbg)

def dhKtsf : ProgHOL 64 :=
  .seq (.ite (.cmp .lower (cw 8) (.rfield 1 (lv dtsfN))) (.raise hdrErrN (cw 12)) .skip)
    (sq (dcw 11 120)
      (.decCall dexN (.comb [.one, .one]) (nm "hdr_raw_field") [lv arrN, cw 12] dhKex))

def dhKw : ProgHOL 64 :=
  sq ([dst 96 (lv dwN)] ++ dcw 9 104 ++ dcw 10 112)
    (.decCall dtsfN (.comb [.one, .one]) (nm "hdr_uint_field") [lv arrN, cw 11, cw 32] dhKtsf)

def dhKd : ProgHOL 64 :=
  .seq (dst 64 (lv ddN))
    (.decCall dwN .one (nm "hdr_word_field") [lv arrN, cw 8] dhKw)

def dhKf : ProgHOL 64 :=
  sq ([dst 8 (lv dfN)] ++ dcb dfN 1 32 16 ++ dcb dfN 2 20 24 ++ dcb dfN 3 32 32 ++ dcb dfN 4 32 40 ++
      dcb dfN 5 32 48 ++ dcb dfN 6 256 56)
    (.decCall ddN (.comb [.one, .one, .one, .one]) (nm "hdr_u256_field") [lv arrN, cw 7, cw 0] dhKd)

def dhKh : ProgHOL 64 :=
  .seq (dst 0 (lv dicN))
    (.decCall dfN .one (nm "hdr_bytes_field") [lv arrN, cw 0, cw 32] dhKf)

def dhBody : ProgHOL 64 :=
  .decCall dtopN (.comb [.one, .one, .one, .one]) (nm "rlp_decode_fully") [lv pN, lv lenN]
    (.seq (.ite (.cmp .notEqual (.rfield 0 (lv dtopN)) (cw 1)) (.raise hdrErrN (cw 10)) .skip)
      (.decCall dlstN (.comb [.one, .one]) (nm "rlp_list_to_slices")
        [.rfield 1 (lv dtopN), .rfield 2 (lv dtopN)]
        (.dec arrN .one (.rfield 0 (lv dlstN))
          (.dec nN .one (.rfield 1 (lv dlstN))
            (.dec dicN .one (cw 0)
              (.seq (.ite (.cmp .equal (lv nN) (cw 23)) (.assign .local dicN (cw 1))
                  (.ite (.cmp .notEqual (lv nN) (cw 21)) (.raise hdrErrN (cw 11)) .skip))
                (.decCall dhN .one (nm "alloc") [cw 248] dhKh)))))))

theorem code_decode_header : guestCode (nm "decode_header") =
    some ([(pN, .one), (lenN, .one)], dhBody, .one) := by
  have h : fnEntry Guest.Software.guestFn_decode_header =
      (nm "decode_header", [(pN, .one), (lenN, .one)], dhBody, .one) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 227) (by decide)) ⟨_, rfl⟩ h

/-- The header record pointer: at least the entry heap pointer, a live 248-byte block. -/
def LH (a : AwE σ) (m : Locals) : Prop :=
  ∃ H : BitVec 64, Lk dhN H m ∧ a.p0.hp ≤ H.toNat ∧ H.toNat + 248 ≤ heapEnd

theorem lh_upd {a : AwE σ} {m : Locals} {x : MlS} {v : ValueHOL 64} (hx : x ≠ dhN) (h : LH a m) :
    LH a (m.update (x, v)) := by
  obtain ⟨H, h1, h2, h3⟩ := h
  exact ⟨H, lk_updo hx h1, h2, h3⟩

def GoodSt (rd : List MlS) : ProgHOL 64 → Bool
  | .store (.op .add [.var .local x, .const c]) _ => x == dhN && decide (c.toNat < 2 ^ 20)
  | .call (some (some (.local, x), none)) g _ => x != dhN && rd.contains g
  | _ => false

theorem hoareG_goodSt {a : AwE σ} (hK : AwOK a) (hT : DomBelow X) {rd : List MlS}
    (hrd : ∀ g ∈ rd, ASp a X g (fun _ _ => True) (fun _ _ _ => True)) {p : ProgHOL 64}
    (h : GoodSt rd p = true) {Ret : ValueHOL 64 → Prop} :
    HoareG σ X (APre a (LH a)) p (AQ a (LH a) Ret) := by
  unfold GoodSt at h
  split at h
  · rename_i x c e
    simp only [Bool.and_eq_true, beq_iff_eq, decide_eq_true_eq] at h
    obtain ⟨rfl, hc⟩ := h
    refine hoareG_storeAD hK hT (fun s _ hL w hw => ?_)
    obtain ⟨H, hH, h1, h2⟩ := hL
    have hle : a.h0 ≤ a.p0.hp := hK.hle
    have hHE : heapEnd = 2952790016 := rfl
    have hw' : ev s (.op .add [lv dhN, .const c]) = some (.val (.word w)) := hw
    rw [ev_add2 (ev_lw hH) (ev_const _)] at hw'
    cases hw'
    rw [toNat_add2 (by omega)]
    omega
  · rename_i x g args
    simp only [Bool.and_eq_true, bne_iff_ne, ne_eq, List.contains_iff_mem, decide_eq_true_eq] at h
    obtain ⟨hx, hg⟩ := h
    refine hoareG_callAsA hK (hrd g hg) (fun _ _ _ _ _ _ => trivial) ?_
    intro s vs v st hL _ _ _
    exact lh_upd hx hL
  · exact absurd h (by simp)

theorem hoareG_sqA {a : AwE σ} {L L'' : Locals → Prop} {Ret : ValueHOL 64 → Prop} :
    ∀ (ps : List (ProgHOL 64)) (last : ProgHOL 64),
      (∀ p ∈ ps, HoareG σ X (APre a L) p (AQ a L Ret)) →
      HoareG σ X (APre a L) last (AQ a L'' Ret) → HoareG σ X (APre a L) (sq ps last) (AQ a L'' Ret)
  | [], last, _, hl => hl
  | p :: ps, last, hs, hl =>
      hoareG_seqA (L2 := L) (hs p (by simp)) (hoareG_sqA ps last (fun q hq => hs q (by simp [hq])) hl)

def dhRd : List MlS := [nm "rlp_decode_fully", nm "hdr_bytes_field", nm "hdr_raw_field",
  nm "hdr_u256_field", nm "hdr_uint_field", nm "hdr_word_field"]

def DhPost (p : Ptrs) (v : ValueHOL 64) : Prop :=
  ∃ H : BitVec 64, v = .val (.word H) ∧ p.hp ≤ H.toNat ∧ H.toNat + 248 ≤ heapEnd

/-- Everything after the allocation of the record. -/
theorem dh_tail {a : AwE σ} (hK : AwOK a) (hT : DomBelow X)
    (hrd : ∀ g ∈ dhRd, ASp a X g (fun _ _ => True) (fun _ _ _ => True)) :
    HoareG σ X (APre a (LH a)) dhKh (AQ a (fun _ => False) (DhPost a.p0)) := by
  have hg := fun {p : ProgHOL 64} (h : GoodSt dhRd p = true) =>
    hoareG_goodSt hK hT hrd h (Ret := DhPost a.p0)
  have hret : HoareG σ X (APre a (LH a)) (.return (lv dhN)) (AQ a (fun _ => False) (DhPost a.p0)) :=
    hoareG_returnA hK (fun s _ hL v hv => by
      obtain ⟨H, hH, h1, h2⟩ := hL
      rw [ev_lw hH] at hv
      cases hv
      exact ⟨H, rfl, h1, h2⟩)
  have key : ∀ l : List (ProgHOL 64), l.all (GoodSt dhRd) = true →
      ∀ p ∈ l, HoareG σ X (APre a (LH a)) p (AQ a (LH a) (DhPost a.p0)) :=
    fun l hl p hp => hg (List.all_eq_true.mp hl p hp)
  have dc : ∀ {g : MlS} {x : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)} {k : ProgHOL 64},
      g ∈ dhRd → x ≠ dhN → HoareG σ X (APre a (LH a)) k (AQ a (fun _ => False) (DhPost a.p0)) →
      HoareG σ X (APre a (LH a)) (.decCall x sh g args k) (AQ a (fun _ => False) (DhPost a.p0)) :=
    fun hg' hx hk => hoareG_decCallAs' hK (hrd _ hg') (L := LH a) (Lk := LH a)
      (L' := fun _ _ => False) (fun _ _ _ _ _ _ => trivial)
      (fun s vs v st hL _ _ _ => lh_upd hx hL) (fun _ => hk) (fun _ _ _ h => False.elim h)
  have hbg : HoareG σ X (APre a (LH a)) dhKbg (AQ a (fun _ => False) (DhPost a.p0)) := by
    unfold dhKbg
    refine hoareG_sqA _ _ (key _ (by decide)) (hoareG_seqA (L2 := LH a) (hoareG_iteA ?_ ?_) hret)
    · exact hoareG_sqA _ _ (key _ (by decide)) (hg (by decide))
    · exact hoareG_sqA _ _ (key _ (by decide)) (hg (by decide))
  have hex : HoareG σ X (APre a (LH a)) dhKex (AQ a (fun _ => False) (DhPost a.p0)) := by
    unfold dhKex
    exact hoareG_sqA _ _ (key _ (by decide)) (dc (by decide) (by decide) hbg)
  have htsf : HoareG σ X (APre a (LH a)) dhKtsf (AQ a (fun _ => False) (DhPost a.p0)) := by
    unfold dhKtsf
    refine hoareG_seqA (L2 := LH a) (hoareG_iteA hoareG_raiseA (hoareG_skipA fun m h => h)) ?_
    exact hoareG_sqA _ _ (key _ (by decide)) (dc (by decide) (by decide) hex)
  have hw : HoareG σ X (APre a (LH a)) dhKw (AQ a (fun _ => False) (DhPost a.p0)) := by
    unfold dhKw
    exact hoareG_sqA _ _ (key _ (by decide)) (dc (by decide) (by decide) htsf)
  have hd : HoareG σ X (APre a (LH a)) dhKd (AQ a (fun _ => False) (DhPost a.p0)) := by
    unfold dhKd
    exact hoareG_seqA (L2 := LH a) (hg (by decide)) (dc (by decide) (by decide) hw)
  have hf : HoareG σ X (APre a (LH a)) dhKf (AQ a (fun _ => False) (DhPost a.p0)) := by
    unfold dhKf
    exact hoareG_sqA _ _ (key _ (by decide)) (dc (by decide) (by decide) hd)
  unfold dhKh
  exact hoareG_seqA (L2 := LH a) (hg (by decide)) (dc (by decide) (by decide) hf)

theorem awSpec_decode_header {C : Cfg} {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hT : DomBelow X) (hH : HooksLawful C H) (hTS : TagSlots C) (hAG : AllocGlobs C)
    (hRd : ∀ f ∈ dhRd, RdSpec σ X f) (hWS : ScalarGlob C wsN 640)
    (hRls : CSumm σ X C H (nm "rlp_list_to_slices") ⟨[.any, .any], [], [], false⟩ []) :
    AWSpec σ X C H (nm "decode_header") [] (fun _ _ _ => True)
      (fun _ s v _ => ∀ p, ptrsOf s = some p → DhPost p v) := by
  refine awSpec_of_hoareG2 (PV := fun _ p v => DhPost p v) hH hTS hAG ?_
  intro vs body callee rs hl s0 Γ h0 p hs hloc hK hG hp hB hPre
  rw [hC] at hl
  obtain ⟨rfl, -, A, Bn, rfl, hA', hB', hla, hlb⟩ := lookupCode_two code_decode_header (by decide) hl
  obtain ⟨P0, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨Ln, rfl⟩ := val_of_shapeEq_one hB'
  let a : AwE σ := ⟨C, H, [], s0, Γ, p, h0⟩
  have hrd : ∀ g ∈ dhRd, ASp a X g (fun _ _ => True) (fun _ _ _ => True) :=
    fun g hg => asp_of_rd hK hWS (hRd g hg)
  have hcs := asp_of_cs hK hRls rfl (fun g hg => absurd hg (by simp))
  refine hoareG_conseq (P := APre a (fun _ => True)) (Q := AQ a (fun _ => True) (DhPost p)) ?_
    (fun t _ ht => by subst ht; exact ⟨awInv_init a hG hp hB, trivial⟩) (fun _ _ _ _ h => h)
  unfold dhBody
  refine hoareG_decCallAs' hK (hrd _ (by simp [dhRd])) (Lk := fun _ => True)
    (L' := fun _ _ => False) (fun _ _ _ _ _ _ => trivial) (fun _ _ _ _ _ _ _ _ => trivial) ?_
    (fun _ _ _ h => False.elim h)
  intro s1
  refine hoareG_seqA (L2 := fun _ => True) (hoareG_iteA hoareG_raiseA (hoareG_skipA fun m h => h)) ?_
  refine hoareG_decCallAs' hK hcs (Lk := fun _ => True) (L' := fun _ _ => False) ?_
    (fun _ _ _ _ _ _ _ _ => trivial) ?_ (fun _ _ _ h => False.elim h)
  · intro s hs hP vs hvs callee
    obtain ⟨v1, v2, rfl, -, -⟩ := evs_two hvs
    obtain ⟨Γ', p', hG', hp', -⟩ := hP.1
    refine ⟨rfl, p', hp', fun i pt v hpt hv => ?_⟩
    rcases i with _ | _ | i <;> simp at hpt <;> subst hpt <;> trivial
  intro s2
  -- arr, n, is_current
  refine hoareG_decA hK (L' := fun _ _ => False) ?_ (fun _ _ _ h => False.elim h)
  intro s3 hs3 hL3 v3 hv3 hsh3
  refine hoareG_preA (L' := fun _ => True) ?_ (fun m hm => trivial)
  refine hoareG_decA hK (L' := fun _ _ => False) ?_ (fun _ _ _ h => False.elim h)
  intro s4 hs4 hL4 v4 hv4 hsh4
  refine hoareG_preA (L' := fun _ => True) ?_ (fun m hm => trivial)
  refine hoareG_decA hK (L' := fun _ _ => False) ?_ (fun _ _ _ h => False.elim h)
  intro s5 hs5 hL5 v5 hv5 hsh5
  refine hoareG_preA (L' := fun _ => True) ?_ (fun m hm => trivial)
  refine hoareG_seqA (L2 := fun _ => True)
    (hoareG_iteA (hoareG_assignA hK fun _ _ _ _ _ => trivial)
      (hoareG_iteA hoareG_raiseA (hoareG_skipA fun m h => h))) ?_
  refine hoareG_decCallAs' hK (asp_alloc2 hK hC) (Lk := LH a) (L' := fun _ _ => False) ?_ ?_
    (fun _ => dh_tail hK hT hrd) (fun _ _ _ h => False.elim h)
  · intro s hs hP vs hvs callee
    rw [evs_cons (ev_cw _ 248) evs_nil] at hvs
    cases hvs
    exact ⟨_, rfl⟩
  · intro s vs v st hL hvs hRet hsh
    rw [evs_cons (ev_cw _ 248) evs_nil] at hvs
    cases hvs
    obtain ⟨⟨n, q, p'', hvs, hvq, hq1, hq2, hp'', hq3, hq4⟩, q', hq', hq5⟩ := hRet
    cases hvs
    cases hvq
    cases hq'
    have h248 : (BitVec.ofNat 64 248).toNat = 248 := by decide
    exact ⟨q, lk_new _ _ _, hq5, by rw [h248] at hq3; omega⟩

end InitECandidate.Solver.MemSafe.Aw

#print axioms InitECandidate.Solver.MemSafe.Aw.awSpec_decode_header
