import InitECandidate.Solver.Improvements.AcceptedIvvhCalleeCore

/-!
# Initialized storage-slot loop in `bal_encode_account`

The structured literal code below is copied from the editable accepted
f2f17565 Solver/MemSafe/BalEnc/Defs.lean (Apache-2.0, BitWonka).
Only its first zero-initialized signed outer loop receives the tighter 2^63
allowance. Other loops retain the accepted generic 2^64+1 allowance. All
callee bounds are explicit premises; this file does not replay the sound table.
Draft until checked with the pinned Lean toolchain.
-/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.warning false
namespace AcceptedBalEncodeCore
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedIvvhCalleeCore (nm lv cw CalleeBound)
variable {σ : Type} {X : Ctx 64}

def bDst : MlS := nm "dst"
def bAddr : MlS := nm "addr"
def bAd : MlS := nm "ad"
def bTmp : MlS := nm "tmp"
def bP : MlS := nm "p"
def bW : MlS := nm "w"
def bMark : MlS := nm "mark"
def bSc : MlS := nm "sc"
def bSlots : MlS := nm "slots"
def bQ : MlS := nm "q"
def bI : MlS := nm "i"
def bSlot : MlS := nm "slot"
def bM : MlS := nm "m"
def bL : MlS := nm "l"
def bN : MlS := nm "n"
def bLp : MlS := nm "lp"
def bR : MlS := nm "r"
def bSv : MlS := nm "sv"
def bCs : MlS := nm "cs"
def bJ : MlS := nm "j"
def bE : MlS := nm "e"
def bC : MlS := nm "c"
def bHl : MlS := nm "hl"
def bHl2 : MlS := nm "hl2"
def bHl3 : MlS := nm "hl3"
def bHl4 : MlS := nm "hl4"
def bSr : MlS := nm "sr"
def bRk : MlS := nm "rk"
def bKept : MlS := nm "kept"
def bHasw : MlS := nm "hasw"
def bSv2 : MlS := nm "sv2"
def bHl5 : MlS := nm "hl5"
def bL2 : MlS := nm "l2"
def bN2 : MlS := nm "n2"
def bLp2 : MlS := nm "lp2"
def bE2 : MlS := nm "e2"
def bC2 : MlS := nm "c2"
def bHl6 : MlS := nm "hl6"
def bHl7 : MlS := nm "hl7"
def bL3 : MlS := nm "l3"
def bN3 : MlS := nm "n3"
def bLp3 : MlS := nm "lp3"
def bE3 : MlS := nm "e3"
def bC3 : MlS := nm "c3"
def bHl8 : MlS := nm "hl8"
def bHl9 : MlS := nm "hl9"
def bL4 : MlS := nm "l4"
def bN4 : MlS := nm "n4"
def bLp4 : MlS := nm "lp4"
def bE4 : MlS := nm "e4"
def bC4 : MlS := nm "c4"
def bHl10 : MlS := nm "hl10"
def bHl11 : MlS := nm "hl11"
def bPayload : MlS := nm "payload"
def bHl12 : MlS := nm "hl12"

def callD (f : MlS) (args : List (ExpHOL 64)) : ProgHOL 64 :=
  .call (some (none, none)) f args

def callW (f : MlS) (args : List (ExpHOL 64)) : ProgHOL 64 :=
  .call (some (some (.local, bW), none)) f args

/-- `ld1 x k = lds 1 (x + k)`. -/
def ld1 (x : MlS) (k : Nat) : ExpHOL 64 := .load .one (.op .add [lv x, cw k])
def ld4 (x : MlS) (k : Nat) : ExpHOL 64 :=
  .load (.comb [.one, .one, .one, .one]) (.op .add [lv x, cw k])

/-- `c - (b + 9)` -/
def subE (c b : MlS) : ExpHOL 64 := .op .sub [lv c, .op .add [lv b, cw 9]]

/-- The wrap stretch: `hl = rlp_list_header_len(c - (b+9)); memcpy(b + hl, b + 9, c - (b+9));
rlp_encode_list_header(b, c - (b+9)); b = b + hl + (c - (b+9)); k`. -/
def wrapS (hl b c : MlS) (k : ProgHOL 64) : ProgHOL 64 :=
  .decCall hl .one (nm "rlp_list_header_len") [subE c b]
    (.seq (callD (nm "memcpy") [.op .add [lv b, lv hl], .op .add [lv b, cw 9], subE c b])
      (.seq (callD (nm "rlp_encode_list_header") [lv b, subE c b])
        (.seq (.assign .local b (.op .add [lv b, lv hl, subE c b])) k)))

/-- `w = f(x, args); x = x + w; k` -/
def stepW (f x : MlS) (args : List (ExpHOL 64)) (k : ProgHOL 64) : ProgHOL 64 :=
  .seq (callW f (lv x :: args)) (.seq (.assign .local x (.op .add [lv x, lv bW])) k)

/-- One `[idx, value]` entry of a list: `e = lp + i * E; c = b + 9; word(idx); f2(value);
wrap into `b`; `i = i + 1`. -/
def entryBody (i b lp e c hl : MlS) (E : Nat) (f2 : MlS) (args2 : List (ExpHOL 64)) : ProgHOL 64 :=
  .dec e .one (.op .add [lv lp, .panop .mul [lv i, cw E]])
    (.dec c .one (.op .add [lv b, cw 9])
      (stepW (nm "rlp_encode_word") c [.load .one (lv e)]
        (stepW f2 c args2 (wrapS hl b c (.assign .local i (.op .add [lv i, cw 1]))))))

def entryLoop (i n b lp e c hl : MlS) (E : Nat) (f2 : MlS) (args2 : List (ExpHOL 64)) : ProgHOL 64 :=
  .while (.cmp .less (lv i) (lv n)) (entryBody i b lp e c hl E f2 args2)

/-- A sorted list section: `l = lds (ad + off); n = ..; lp = ..; sort_elems(lp, n, E, 0, tmp);
q = p + 9; i = 0; loop; wrap into p; k`. -/
def listSec (off E : Nat) (l n lp e c hlE hlP : MlS) (f2 : MlS) (args2 : List (ExpHOL 64))
    (k : ProgHOL 64) : ProgHOL 64 :=
  .dec l .one (ld1 bAd off)
    (.dec n .one (ld1 l 8)
      (.dec lp .one (ld1 l 0)
        (.seq (callD (nm "sort_elems") [lv lp, lv n, cw E, cw 0, lv bTmp])
          (.seq (.assign .local bQ (.op .add [lv bP, cw 9]))
            (.seq (.assign .local bI (cw 0))
              (.seq (entryLoop bI n bQ lp e c hlE E f2 args2)
                (wrapS hlP bP bQ k)))))))

/-- The storage-changes loop body (one slot). -/
def slotBody : ProgHOL 64 :=
  .dec bSlot .one (.op .add [.rfield 0 (lv bSlots), .panop .mul [lv bI, cw 32]])
    (.decCall bM (.comb [.one, .one]) (nm "htab_get") [lv bSc, lv bSlot]
      (.dec bL .one (.rfield 1 (lv bM))
        (.dec bN .one (ld1 bL 8)
          (.dec bLp .one (ld1 bL 0)
            (.seq (callD (nm "sort_elems") [lv bLp, lv bN, cw 40, cw 0, lv bTmp])
              (.dec bR .one (.op .add [lv bQ, cw 9])
                (.decCall bSv (.comb [.one, .one, .one, .one]) (nm "u256_from_be") [lv bSlot, cw 32]
                  (.seq (callW (nm "rlp_put_u256") [lv bR, lv bSv])
                    (.seq (.assign .local bR (.op .add [lv bR, lv bW]))
                      (.dec bCs .one (.op .add [lv bR, cw 9])
                        (.dec bJ .one (cw 0)
                          (.seq (entryLoop bJ bN bCs bLp bE bC bHl 40 (nm "rlp_put_u256")
                              [ld4 bE 8])
                            (wrapS bHl2 bR bCs
                              (wrapS bHl3 bQ bR
                                (.assign .local bI (.op .add [lv bI, cw 1]))))))))))))))))

/-- The in-place filter loop of the storage reads. -/
def filterLoop : ProgHOL 64 :=
  .while (.cmp .less (lv bI) (.rfield 1 (lv bRk)))
    (.decCall bHasw .one (nm "htab_has")
      [lv bSc, .op .add [.rfield 0 (lv bRk), .panop .mul [lv bI, cw 32]]]
      (.seq (.ite (.cmp .equal (lv bHasw) (cw 0))
          (.seq (.store (.op .add [.rfield 0 (lv bRk), .panop .mul [lv bKept, cw 32]])
              (.load (.comb [.one, .one, .one, .one])
                (.op .add [.rfield 0 (lv bRk), .panop .mul [lv bI, cw 32]])))
            (.assign .local bKept (.op .add [lv bKept, cw 1])))
          .skip)
        (.assign .local bI (.op .add [lv bI, cw 1]))))

/-- The output loop of the storage reads. -/
def keysLoop : ProgHOL 64 :=
  .while (.cmp .less (lv bI) (lv bKept))
    (.decCall bSv2 (.comb [.one, .one, .one, .one]) (nm "u256_from_be")
      [.op .add [.rfield 0 (lv bRk), .panop .mul [lv bI, cw 32]], cw 32]
      (.seq (callW (nm "rlp_put_u256") [lv bQ, lv bSv2])
        (.seq (.assign .local bQ (.op .add [lv bQ, lv bW]))
          (.assign .local bI (.op .add [lv bI, cw 1])))))

/-- The tail: release, outer header. -/
def tailS : ProgHOL 64 :=
  .seq (callD (nm "heap_release") [lv bMark])
    (.dec bPayload .one (.op .sub [lv bP, .op .add [lv bDst, cw 9]])
      (.decCall bHl12 .one (nm "rlp_list_header_len") [lv bPayload]
        (.seq (callD (nm "memcpy") [.op .add [lv bDst, lv bHl12], .op .add [lv bDst, cw 9], lv bPayload])
          (.seq (callD (nm "rlp_encode_list_header") [lv bDst, lv bPayload])
            (.return (.op .add [lv bHl12, lv bPayload]))))))

def codeSec : ProgHOL 64 :=
  listSec 32 24 bL4 bN4 bLp4 bE4 bC4 bHl10 bHl11 (nm "rlp_encode_bytes")
    [ld1 bE4 8, ld1 bE4 16] tailS

def nonceSec : ProgHOL 64 :=
  listSec 24 16 bL3 bN3 bLp3 bE3 bC3 bHl8 bHl9 (nm "rlp_encode_word") [ld1 bE3 8] codeSec

def balSec : ProgHOL 64 :=
  listSec 16 40 bL2 bN2 bLp2 bE2 bC2 bHl6 bHl7 (nm "rlp_put_u256") [ld4 bE2 8] nonceSec

/-- The storage reads: keys, filter, sort, output. -/
def keysSec : ProgHOL 64 :=
  .dec bSr .one (ld1 bAd 8)
    (.decCall bRk (.comb [.one, .one]) (nm "htab_keys") [lv bSr]
      (.dec bKept .one (cw 0)
        (.seq (.assign .local bI (cw 0))
          (.seq filterLoop
            (.seq (callD (nm "sort_elems") [.rfield 0 (lv bRk), lv bKept, cw 32, cw 2, lv bTmp])
              (.seq (.assign .local bQ (.op .add [lv bP, cw 9]))
                (.seq (.assign .local bI (cw 0))
                  (.seq keysLoop (wrapS bHl5 bP bQ balSec)))))))))

def storSec : ProgHOL 64 :=
  .dec bQ .one (.op .add [lv bP, cw 9])
    (.dec bI .one (cw 0)
      (.seq (.while (.cmp .less (lv bI) (.rfield 1 (lv bSlots))) slotBody)
        (wrapS bHl4 bP bQ keysSec)))

def balBody : ProgHOL 64 :=
  .dec bP .one (.op .add [lv bDst, cw 9])
    (.decCall bW .one (nm "rlp_encode_bytes") [lv bP, lv bAddr, cw 20]
      (.seq (.assign .local bP (.op .add [lv bP, lv bW]))
        (.decCall bMark .one (nm "heap_mark") []
          (.dec bSc .one (ld1 bAd 0)
            (.decCall bSlots (.comb [.one, .one]) (nm "sorted_keys32") [lv bSc, lv bTmp]
              storSec)))))


/-- Accepted unconditional callee constants. -/
def cG : Nat := 92233720368547758087
def cS : Nat := 408011621919904469204126277371857156418936296100332308536864
def cU : Nat := 18446744073709551621
def cP : Nat := 147573952589676412953
def cW : Nat := 36893488147419103236
def cL : Nat := 18446744073709551619
def cM : Nat := 73786976294838206468
def cH : Nat := 36893488147419103237
def cB : Nat := 110680464442257309706
def cK : Nat := 408011621919904469205487406839540910272974261970796476898859
def cHK : Nat := 1361129467683753854037965870464168361993
def cHH : Nat := 92233720368547758087

def q : Nat := 2 ^ 64 + 1
def h : Nat := 2 ^ 63
def wrapCost : Nat := 3 + cL + cM + cH

def entryCost (F : Nat) : Nat := 5 + cW + F + cL + cM + cH

def outerB : Nat :=
  10 + cG + cS + cU + cP + q * (entryCost cP + 1) +
    2 * (cL + cM + cH)

def tailB : Nat :=
  6 * wrapCost + (1 + cHK) + 4 * (1 + cS) + 1 +
    q * ((2 + cHH) + (3 + cU + cP) + (entryCost cP + 1) +
      (entryCost cW + 1) + (entryCost cB + 1))

def tighterCost : Nat := 3 + cB + cK + h * (outerB + 1) + tailB

theorem tighterCost_eq : tighterCost =
    3763242984327809978942151810821444158126463191340574639948025469698174047262644 := by decide

theorem oldCost_eq : 3 + cB + cK + q * (outerB + 1) + tailB =
    7526485968655619956252257133963270439420087719581515607970743359905026266936907 := by decide

structure CalleeCosts (σ : Type) (X : Ctx 64) : Prop where
  htab_get : CalleeBound σ X (nm "htab_get") cG
  sort_elems : CalleeBound σ X (nm "sort_elems") cS
  u256_from_be : CalleeBound σ X (nm "u256_from_be") cU
  rlp_put_u256 : CalleeBound σ X (nm "rlp_put_u256") cP
  rlp_encode_word : CalleeBound σ X (nm "rlp_encode_word") cW
  rlp_list_header_len : CalleeBound σ X (nm "rlp_list_header_len") cL
  memcpy : CalleeBound σ X (nm "memcpy") cM
  rlp_encode_list_header : CalleeBound σ X (nm "rlp_encode_list_header") cH
  rlp_encode_bytes : CalleeBound σ X (nm "rlp_encode_bytes") cB
  sorted_keys32 : CalleeBound σ X (nm "sorted_keys32") cK
  htab_keys : CalleeBound σ X (nm "htab_keys") cHK
  htab_has : CalleeBound σ X (nm "htab_has") cHH
  heap_mark : CalleeBound σ X (nm "heap_mark") 0
  heap_release : CalleeBound σ X (nm "heap_release") 0

theorem callD_cost {f : MlS} {args : List (ExpHOL 64)} {B : Nat}
    (hf : CalleeBound σ X f B) : Cost σ X (callD f args) (1 + B) := by
  unfold callD
  exact cost_call (Bh := 0) hf (by intro r hid hv hp hh; cases hh)

theorem callW_cost {f : MlS} {args : List (ExpHOL 64)} {B : Nat}
    (hf : CalleeBound σ X f B) : Cost σ X (callW f args) (1 + B) := by
  unfold callW
  exact cost_call (Bh := 0) hf (by intro r hid hv hp hh; cases hh)

theorem wrapS_cost (hc : CalleeCosts σ X) {hl b c : MlS} {k : ProgHOL 64} {B : Nat}
    (hk : Cost σ X k B) : Cost σ X (wrapS hl b c k) (wrapCost + B) := by
  have hp : Cost σ X (wrapS hl b c k)
      (1 + cL + ((1 + cM) + ((1 + cH) + (0 + B)))) := by
    unfold wrapS
    exact cost_decCall hc.rlp_list_header_len
      (cost_seq (callD_cost hc.memcpy)
        (cost_seq (callD_cost hc.rlp_encode_list_header)
          (cost_seq (cost_assign _ _ _) hk)))
  have heq : 1 + cL + ((1 + cM) + ((1 + cH) + (0 + B))) = wrapCost + B := by
    unfold wrapCost
    omega
  rw [heq] at hp
  exact hp

theorem stepW_cost {f x : MlS} {args : List (ExpHOL 64)} {k : ProgHOL 64} {F B : Nat}
    (hf : CalleeBound σ X f F) (hk : Cost σ X k B) :
    Cost σ X (stepW f x args k) (1 + F + B) := by
  have hp : Cost σ X (stepW f x args k) ((1 + F) + (0 + B)) := by
    unfold stepW
    exact cost_seq (callW_cost hf) (cost_seq (cost_assign _ _ _) hk)
  have heq : (1 + F) + (0 + B) = 1 + F + B := by omega
  rw [heq] at hp
  exact hp

theorem entryBody_cost (hc : CalleeCosts σ X) {i b lp e c hl : MlS} {E F : Nat}
    {f2 : MlS} {args2 : List (ExpHOL 64)} (hf : CalleeBound σ X f2 F) :
    Cost σ X (entryBody i b lp e c hl E f2 args2) (entryCost F) := by
  have hp : Cost σ X (entryBody i b lp e c hl E f2 args2)
      (1 + cW + (1 + F + (wrapCost + 0))) := by
    unfold entryBody
    exact cost_dec (cost_dec (stepW_cost hc.rlp_encode_word
      (stepW_cost hf (wrapS_cost hc (cost_assign _ _ _)))))
  have heq : 1 + cW + (1 + F + (wrapCost + 0)) = entryCost F := by
    unfold entryCost wrapCost
    omega
  rw [heq] at hp
  exact hp

theorem entryLoop_cost (hc : CalleeCosts σ X) {i n b lp e c hl : MlS} {E F : Nat}
    {f2 : MlS} {args2 : List (ExpHOL 64)} (hf : CalleeBound σ X f2 F)
    (hs : stepsB i true (entryBody i b lp e c hl E f2 args2) = true) :
    Cost σ X (entryLoop i n b lp e c hl E f2 args2) (q * (entryCost F + 1)) := by
  unfold entryLoop q
  exact cost_while_inc_less (entryBody_cost hc hf)
    (stepsB_sound i true _ hs)

theorem listSec_cost (hc : CalleeCosts σ X) {off E : Nat} {l n lp e c hlE hlP f2 : MlS}
    {args2 : List (ExpHOL 64)} {k : ProgHOL 64} {F B : Nat}
    (hf : CalleeBound σ X f2 F) (hk : Cost σ X k B)
    (hs : stepsB bI true (entryBody bI bQ lp e c hlE E f2 args2) = true) :
    Cost σ X (listSec off E l n lp e c hlE hlP f2 args2 k)
      ((1 + cS) + q * (entryCost F + 1) + wrapCost + B) := by
  have hp : Cost σ X (listSec off E l n lp e c hlE hlP f2 args2 k)
      ((1 + cS) + (0 + (0 + (q * (entryCost F + 1) + (wrapCost + B))))) := by
    unfold listSec
    exact cost_dec (cost_dec (cost_dec
      (cost_seq (callD_cost hc.sort_elems)
        (cost_seq (cost_assign _ _ _) (cost_seq (cost_assign _ _ _)
          (cost_seq (entryLoop_cost hc hf hs) (wrapS_cost hc hk)))))))
  have heq : (1 + cS) + (0 + (0 + (q * (entryCost F + 1) + (wrapCost + B)))) =
      (1 + cS) + q * (entryCost F + 1) + wrapCost + B := by omega
  rw [heq] at hp
  exact hp

theorem slotBody_cost (hc : CalleeCosts σ X) : Cost σ X slotBody outerB := by
  have hi : Cost σ X
      (entryLoop bJ bN bCs bLp bE bC bHl 40 (nm "rlp_put_u256") [ld4 bE 8])
      (q * (entryCost cP + 1)) := entryLoop_cost hc hc.rlp_put_u256 (by rfl)
  have hp : Cost σ X slotBody
      (1 + cG + ((1 + cS) + (1 + cU + ((1 + cP) +
        (0 + (q * (entryCost cP + 1) + (wrapCost + (wrapCost + 0)))))))) := by
    unfold slotBody
    exact cost_dec (cost_decCall hc.htab_get (cost_dec (cost_dec (cost_dec
      (cost_seq (callD_cost hc.sort_elems)
        (cost_dec (cost_decCall hc.u256_from_be
          (cost_seq (callW_cost hc.rlp_put_u256)
            (cost_seq (cost_assign _ _ _)
              (cost_dec (cost_dec (cost_seq hi
                (wrapS_cost hc (wrapS_cost hc (cost_assign _ _ _)))))))))))))))
  have heq : 1 + cG + ((1 + cS) + (1 + cU + ((1 + cP) +
      (0 + (q * (entryCost cP + 1) + (wrapCost + (wrapCost + 0))))))) = outerB := by decide
  rw [heq] at hp
  exact hp

theorem slot_steps : stepsB bI true slotBody = true := by rfl

theorem filterLoop_cost (hc : CalleeCosts σ X) :
    Cost σ X filterLoop (q * (2 + cHH)) := by
  unfold filterLoop
  have hp : Cost σ X
      (.decCall bHasw .one (nm "htab_has")
        [lv bSc, .op .add [.rfield 0 (lv bRk), .panop .mul [lv bI, cw 32]]]
        (.seq (.ite (.cmp .equal (lv bHasw) (cw 0))
          (.seq (.store (.op .add [.rfield 0 (lv bRk), .panop .mul [lv bKept, cw 32]])
              (.load (.comb [.one, .one, .one, .one])
                (.op .add [.rfield 0 (lv bRk), .panop .mul [lv bI, cw 32]])))
            (.assign .local bKept (.op .add [lv bKept, cw 1]))) .skip)
          (.assign .local bI (.op .add [lv bI, cw 1])))) (1 + cHH) := by
    exact cost_decCall hc.htab_has
      (cost_seq (cost_ite (cost_seq (cost_store _ _) (cost_assign _ _ _)) cost_skip)
        (cost_assign _ _ _))
  have hl := cost_while_inc_less (i := bI) (E := .rfield 1 (lv bRk)) hp (stepsB_sound bI true _ (by rfl))
  have heq : (2 ^ 64 + 1) * (1 + cHH + 1) = q * (2 + cHH) := by decide
  rw [heq] at hl
  exact hl

theorem keysLoop_cost (hc : CalleeCosts σ X) :
    Cost σ X keysLoop (q * (3 + cU + cP)) := by
  unfold keysLoop
  have hp : Cost σ X
      (.decCall bSv2 (.comb [.one, .one, .one, .one]) (nm "u256_from_be")
        [.op .add [.rfield 0 (lv bRk), .panop .mul [lv bI, cw 32]], cw 32]
        (.seq (callW (nm "rlp_put_u256") [lv bQ, lv bSv2])
          (.seq (.assign .local bQ (.op .add [lv bQ, lv bW]))
            (.assign .local bI (.op .add [lv bI, cw 1])))))
      (1 + cU + ((1 + cP) + (0 + 0))) := by
    exact cost_decCall hc.u256_from_be
      (cost_seq (callW_cost hc.rlp_put_u256)
        (cost_seq (cost_assign _ _ _) (cost_assign _ _ _)))
  have hl := cost_while_inc_less (i := bI) (E := lv bKept) hp (stepsB_sound bI true _ (by rfl))
  have heq : (2 ^ 64 + 1) * (1 + cU + ((1 + cP) + (0 + 0)) + 1) =
      q * (3 + cU + cP) := by decide
  rw [heq] at hl
  exact hl

theorem tailS_cost (hc : CalleeCosts σ X) : Cost σ X tailS (1 + wrapCost) := by
  have hp : Cost σ X tailS
      ((1 + 0) + (1 + cL + ((1 + cM) + ((1 + cH) + 0)))) := by
    unfold tailS
    exact cost_seq (callD_cost hc.heap_release)
      (cost_dec (cost_decCall hc.rlp_list_header_len
        (cost_seq (callD_cost hc.memcpy)
          (cost_seq (callD_cost hc.rlp_encode_list_header) (cost_return _)))))
  have heq : (1 + 0) + (1 + cL + ((1 + cM) + ((1 + cH) + 0))) =
      1 + wrapCost := by decide
  rw [heq] at hp
  exact hp

theorem codeSec_cost (hc : CalleeCosts σ X) : Cost σ X codeSec
    ((1 + cS) + q * (entryCost cB + 1) + wrapCost + (1 + wrapCost)) := by
  unfold codeSec
  exact listSec_cost hc hc.rlp_encode_bytes (tailS_cost hc) (by rfl)

theorem nonceSec_cost (hc : CalleeCosts σ X) : Cost σ X nonceSec
    ((1 + cS) + q * (entryCost cW + 1) + wrapCost +
      ((1 + cS) + q * (entryCost cB + 1) + wrapCost + (1 + wrapCost))) := by
  unfold nonceSec
  exact listSec_cost hc hc.rlp_encode_word (codeSec_cost hc) (by rfl)

theorem balSec_cost (hc : CalleeCosts σ X) : Cost σ X balSec
    ((1 + cS) + q * (entryCost cP + 1) + wrapCost +
      ((1 + cS) + q * (entryCost cW + 1) + wrapCost +
        ((1 + cS) + q * (entryCost cB + 1) + wrapCost + (1 + wrapCost)))) := by
  unfold balSec
  exact listSec_cost hc hc.rlp_put_u256 (nonceSec_cost hc) (by rfl)

def keysCost : Nat :=
  (1 + cHK) + q * (2 + cHH) + (1 + cS) + q * (3 + cU + cP) + wrapCost +
    ((1 + cS) + q * (entryCost cP + 1) + wrapCost +
      ((1 + cS) + q * (entryCost cW + 1) + wrapCost +
        ((1 + cS) + q * (entryCost cB + 1) + wrapCost + (1 + wrapCost))))

theorem keysSec_cost (hc : CalleeCosts σ X) : Cost σ X keysSec keysCost := by
  have hp : Cost σ X keysSec
      (1 + cHK + (0 + (q * (2 + cHH) + ((1 + cS) + (0 +
        (0 + (q * (3 + cU + cP) + (wrapCost +
          ((1 + cS) + q * (entryCost cP + 1) + wrapCost +
            ((1 + cS) + q * (entryCost cW + 1) + wrapCost +
              ((1 + cS) + q * (entryCost cB + 1) + wrapCost + (1 + wrapCost)))))))))))) := by
    unfold keysSec
    exact cost_dec (cost_decCall hc.htab_keys (cost_dec
      (cost_seq (cost_assign _ _ _) (cost_seq (filterLoop_cost hc)
        (cost_seq (callD_cost hc.sort_elems)
          (cost_seq (cost_assign _ _ _) (cost_seq (cost_assign _ _ _)
            (cost_seq (keysLoop_cost hc) (wrapS_cost hc (balSec_cost hc))))))))))
  have heq : 1 + cHK + (0 + (q * (2 + cHH) + ((1 + cS) + (0 +
      (0 + (q * (3 + cU + cP) + (wrapCost +
        ((1 + cS) + q * (entryCost cP + 1) + wrapCost +
          ((1 + cS) + q * (entryCost cW + 1) + wrapCost +
            ((1 + cS) + q * (entryCost cB + 1) + wrapCost + (1 + wrapCost))))))))))) = keysCost := by decide
  rw [heq] at hp
  exact hp

theorem storSec_cost (hc : CalleeCosts σ X) : Cost σ X storSec
    (h * (outerB + 1) + (wrapCost + keysCost)) := by
  unfold storSec
  apply cost_dec
  exact AcceptedInitializedLoopCost.cost_initialized_seq (slotBody_cost hc)
    (stepsB_sound bI true _ slot_steps) (wrapS_cost hc (keysSec_cost hc))

theorem body_cost_from_callees (hc : CalleeCosts σ X) : Cost σ X balBody tighterCost := by
  have hp : Cost σ X balBody
      (1 + cB + (0 + (1 + 0 + (1 + cK +
        (h * (outerB + 1) + (wrapCost + keysCost)))))) := by
    unfold balBody
    exact cost_dec (cost_decCall hc.rlp_encode_bytes
      (cost_seq (cost_assign _ _ _) (cost_decCall hc.heap_mark
        (cost_dec (cost_decCall hc.sorted_keys32 (storSec_cost hc))))))
  have heq : 1 + cB + (0 + (1 + 0 + (1 + cK +
      (h * (outerB + 1) + (wrapCost + keysCost))))) = tighterCost := by
    decide
  rw [heq] at hp
  exact hp

def balParams : List (MlS × ShapeHOL) := [(bDst, .one), (bAddr, .one), (bAd, .one), (bTmp, .one)]

theorem callee_cost_from_callees (hc : CalleeCosts σ X)
    (installed : X.code.lookup (nm "bal_encode_account") = some (balParams, balBody, .one)) :
    CalleeBound σ X (nm "bal_encode_account") tighterCost := by
  intro vs body callee rs hl
  obtain ⟨ps, hcode⟩ := AcceptedIvvhCalleeCore.lookupCode_some hl
  rw [installed] at hcode
  have hbody : body = balBody := (congrArg (fun e => e.2.1) (Option.some.inj hcode)).symm
  rw [hbody]
  exact body_cost_from_callees hc

#print axioms oldCost_eq
#print axioms tighterCost_eq
#print axioms slot_steps
#print axioms body_cost_from_callees
#print axioms callee_cost_from_callees
end AcceptedBalEncodeCore
