import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source495
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact495
def oracle : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 1)))
        (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
          (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))))
def body2_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(13, 0), (17, 2)]

def body2_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 21 Flapjack.WordStore.heapLength

def body2_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25 21 (Flapjack.WordRegImm.imm 1#64)))

def body2_3 : WordLangProgHOL (BitVec 64) :=
.seq body2_1 body2_2

def body2_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29 25

def body2_5 : WordLangProgHOL (BitVec 64) :=
.seq body2_3 body2_4

def body2_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 33 (Flapjack.WordLangAddr.addr 29 18446744073709551360#64))

def body2_7 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_6

def body2_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 37 (Flapjack.WordLangAddr.addr 33 168#64))

def body2_9 : WordLangProgHOL (BitVec 64) :=
.seq body2_7 body2_8

def body2_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(41, 17)]

def body2_11 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_10

def body2_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(47, 13)]

def body2_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 37), (4, 41)]

def body2_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(53, 47)]

def body2_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(57, 2)]

def body2_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body2_17 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_16

def body2_18 : WordLangProgHOL (BitVec 64) :=
.seq body2_14 body2_17

def body2_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 []

def body2_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 57)]

def body2_21 : WordLangProgHOL (BitVec 64) :=
.seq body2_16 body2_20

def body2_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 69 0#64)

def body2_23 : WordLangProgHOL (BitVec 64) :=
.seq body2_21 body2_22

def body2_24 : WordLangProgHOL (BitVec 64) :=
.seq body2_19 body2_23

def body2_25 : WordLangProgHOL (BitVec 64) :=
.seq body2_18 body2_24

def body2_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 2)]

def body2_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 61)]

def body2_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body2_29 : WordLangProgHOL (BitVec 64) :=
.seq body2_27 body2_28

def body2_30 : WordLangProgHOL (BitVec 64) :=
.seq body2_26 body2_29

def body2_31 : WordLangProgHOL (BitVec 64) :=
.seq body2_14 body2_30

def body2_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body2_33 : WordLangProgHOL (BitVec 64) :=
.seq body2_16 body2_32

def body2_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(69, 61)]

def body2_35 : WordLangProgHOL (BitVec 64) :=
.seq body2_33 body2_34

def body2_36 : WordLangProgHOL (BitVec 64) :=
.seq body2_19 body2_35

def body2_37 : WordLangProgHOL (BitVec 64) :=
.seq body2_31 body2_36

def body2_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body2_25, 495, 2)) (some 187) ([2, 4]) (some (2, body2_37, 495, 3))

def body2_39 : WordLangProgHOL (BitVec 64) :=
.seq body2_13 body2_38

def body2_40 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_39

def body2_41 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_40

def body2_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body2_43 : WordLangProgHOL (BitVec 64) :=
.seq body2_41 body2_42

def body2_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(73, 65)]

def body2_45 : WordLangProgHOL (BitVec 64) :=
.seq body2_43 body2_44

def body2_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 73)]

def body2_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 53 [2]

def body2_48 : WordLangProgHOL (BitVec 64) :=
.seq body2_46 body2_47

def body2_49 : WordLangProgHOL (BitVec 64) :=
.seq body2_45 body2_48

def body2_50 : WordLangProgHOL (BitVec 64) :=
.seq body2_0 body2_49

def pass2 : WordLangProgHOL (BitVec 64) := body2_50
def body3_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(13, 0), (17, 2)]

def body3_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 21 Flapjack.WordStore.heapLength

def body3_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25 21 (Flapjack.WordRegImm.imm 1#64)))

def body3_3 : WordLangProgHOL (BitVec 64) :=
.seq body3_1 body3_2

def body3_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29 25

def body3_5 : WordLangProgHOL (BitVec 64) :=
.seq body3_3 body3_4

def body3_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 33 (Flapjack.WordLangAddr.addr 29 18446744073709551360#64))

def body3_7 : WordLangProgHOL (BitVec 64) :=
.seq body3_5 body3_6

def body3_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 37 (Flapjack.WordLangAddr.addr 33 168#64))

def body3_9 : WordLangProgHOL (BitVec 64) :=
.seq body3_7 body3_8

def body3_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(41, 17)]

def body3_11 : WordLangProgHOL (BitVec 64) :=
.seq body3_9 body3_10

def body3_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(47, 13)]

def body3_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 37), (4, 41)]

def body3_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(53, 47)]

def body3_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(57, 2)]

def body3_16 : WordLangProgHOL (BitVec 64) :=
.seq body3_14 body3_15

def body3_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 57)]

def body3_18 : WordLangProgHOL (BitVec 64) :=
.seq body3_16 body3_17

def body3_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 2)]

def body3_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 61)]

def body3_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body3_22 : WordLangProgHOL (BitVec 64) :=
.seq body3_20 body3_21

def body3_23 : WordLangProgHOL (BitVec 64) :=
.seq body3_19 body3_22

def body3_24 : WordLangProgHOL (BitVec 64) :=
.seq body3_14 body3_23

def body3_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body3_26 : WordLangProgHOL (BitVec 64) :=
.seq body3_24 body3_25

def body3_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body3_18, 495, 2)) (some 187) ([2, 4]) (some (2, body3_26, 495, 3))

def body3_28 : WordLangProgHOL (BitVec 64) :=
.seq body3_13 body3_27

def body3_29 : WordLangProgHOL (BitVec 64) :=
.seq body3_12 body3_28

def body3_30 : WordLangProgHOL (BitVec 64) :=
.seq body3_11 body3_29

def body3_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body3_32 : WordLangProgHOL (BitVec 64) :=
.seq body3_30 body3_31

def body3_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(73, 65)]

def body3_34 : WordLangProgHOL (BitVec 64) :=
.seq body3_32 body3_33

def body3_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 73)]

def body3_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 53 [2]

def body3_37 : WordLangProgHOL (BitVec 64) :=
.seq body3_35 body3_36

def body3_38 : WordLangProgHOL (BitVec 64) :=
.seq body3_34 body3_37

def body3_39 : WordLangProgHOL (BitVec 64) :=
.seq body3_0 body3_38

def pass3 : WordLangProgHOL (BitVec 64) := body3_39
def body4_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(13, 0), (17, 2)]

def body4_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 21 Flapjack.WordStore.heapLength

def body4_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25 21 (Flapjack.WordRegImm.imm 1#64)))

def body4_3 : WordLangProgHOL (BitVec 64) :=
.seq body4_1 body4_2

def body4_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29 25

def body4_5 : WordLangProgHOL (BitVec 64) :=
.seq body4_3 body4_4

def body4_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 33 (Flapjack.WordLangAddr.addr 29 18446744073709551360#64))

def body4_7 : WordLangProgHOL (BitVec 64) :=
.seq body4_5 body4_6

def body4_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 37 (Flapjack.WordLangAddr.addr 33 168#64))

def body4_9 : WordLangProgHOL (BitVec 64) :=
.seq body4_7 body4_8

def body4_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(41, 17)]

def body4_11 : WordLangProgHOL (BitVec 64) :=
.seq body4_9 body4_10

def body4_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(47, 13)]

def body4_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 37), (4, 41)]

def body4_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(53, 47)]

def body4_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(57, 2)]

def body4_16 : WordLangProgHOL (BitVec 64) :=
.seq body4_14 body4_15

def body4_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 57)]

def body4_18 : WordLangProgHOL (BitVec 64) :=
.seq body4_16 body4_17

def body4_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 2)]

def body4_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 61)]

def body4_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body4_22 : WordLangProgHOL (BitVec 64) :=
.seq body4_20 body4_21

def body4_23 : WordLangProgHOL (BitVec 64) :=
.seq body4_19 body4_22

def body4_24 : WordLangProgHOL (BitVec 64) :=
.seq body4_14 body4_23

def body4_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body4_26 : WordLangProgHOL (BitVec 64) :=
.seq body4_24 body4_25

def body4_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body4_18, 495, 2)) (some 187) ([2, 4]) (some (2, body4_26, 495, 3))

def body4_28 : WordLangProgHOL (BitVec 64) :=
.seq body4_13 body4_27

def body4_29 : WordLangProgHOL (BitVec 64) :=
.seq body4_12 body4_28

def body4_30 : WordLangProgHOL (BitVec 64) :=
.seq body4_11 body4_29

def body4_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body4_32 : WordLangProgHOL (BitVec 64) :=
.seq body4_30 body4_31

def body4_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(73, 65)]

def body4_34 : WordLangProgHOL (BitVec 64) :=
.seq body4_32 body4_33

def body4_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 73)]

def body4_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 53 [2]

def body4_37 : WordLangProgHOL (BitVec 64) :=
.seq body4_35 body4_36

def body4_38 : WordLangProgHOL (BitVec 64) :=
.seq body4_34 body4_37

def body4_39 : WordLangProgHOL (BitVec 64) :=
.seq body4_0 body4_38

def pass4 : WordLangProgHOL (BitVec 64) := body4_39
def body5_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(13, 0), (17, 2)]

def body5_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 21 Flapjack.WordStore.heapLength

def body5_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25 21 (Flapjack.WordRegImm.imm 1#64)))

def body5_3 : WordLangProgHOL (BitVec 64) :=
.seq body5_1 body5_2

def body5_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29 25

def body5_5 : WordLangProgHOL (BitVec 64) :=
.seq body5_3 body5_4

def body5_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 33 (Flapjack.WordLangAddr.addr 29 18446744073709551360#64))

def body5_7 : WordLangProgHOL (BitVec 64) :=
.seq body5_5 body5_6

def body5_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 37 (Flapjack.WordLangAddr.addr 33 168#64))

def body5_9 : WordLangProgHOL (BitVec 64) :=
.seq body5_7 body5_8

def body5_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(41, 17)]

def body5_11 : WordLangProgHOL (BitVec 64) :=
.seq body5_9 body5_10

def body5_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(47, 13)]

def body5_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 37), (4, 41)]

def body5_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(53, 47)]

def body5_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(57, 2)]

def body5_16 : WordLangProgHOL (BitVec 64) :=
.seq body5_14 body5_15

def body5_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 57)]

def body5_18 : WordLangProgHOL (BitVec 64) :=
.seq body5_16 body5_17

def body5_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 2)]

def body5_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 61)]

def body5_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body5_22 : WordLangProgHOL (BitVec 64) :=
.seq body5_20 body5_21

def body5_23 : WordLangProgHOL (BitVec 64) :=
.seq body5_19 body5_22

def body5_24 : WordLangProgHOL (BitVec 64) :=
.seq body5_14 body5_23

def body5_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body5_26 : WordLangProgHOL (BitVec 64) :=
.seq body5_24 body5_25

def body5_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body5_18, 495, 2)) (some 187) ([2, 4]) (some (2, body5_26, 495, 3))

def body5_28 : WordLangProgHOL (BitVec 64) :=
.seq body5_13 body5_27

def body5_29 : WordLangProgHOL (BitVec 64) :=
.seq body5_12 body5_28

def body5_30 : WordLangProgHOL (BitVec 64) :=
.seq body5_11 body5_29

def body5_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body5_32 : WordLangProgHOL (BitVec 64) :=
.seq body5_30 body5_31

def body5_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(73, 65)]

def body5_34 : WordLangProgHOL (BitVec 64) :=
.seq body5_32 body5_33

def body5_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 73)]

def body5_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 53 [2]

def body5_37 : WordLangProgHOL (BitVec 64) :=
.seq body5_35 body5_36

def body5_38 : WordLangProgHOL (BitVec 64) :=
.seq body5_34 body5_37

def body5_39 : WordLangProgHOL (BitVec 64) :=
.seq body5_0 body5_38

def pass5 : WordLangProgHOL (BitVec 64) := body5_39
def body6_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(13, 0), (17, 2)]

def body6_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 21 Flapjack.WordStore.heapLength

def body6_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25 21 (Flapjack.WordRegImm.imm 1#64)))

def body6_3 : WordLangProgHOL (BitVec 64) :=
.seq body6_1 body6_2

def body6_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29 25

def body6_5 : WordLangProgHOL (BitVec 64) :=
.seq body6_3 body6_4

def body6_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 33 (Flapjack.WordLangAddr.addr 29 18446744073709551360#64))

def body6_7 : WordLangProgHOL (BitVec 64) :=
.seq body6_5 body6_6

def body6_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 37 (Flapjack.WordLangAddr.addr 33 168#64))

def body6_9 : WordLangProgHOL (BitVec 64) :=
.seq body6_7 body6_8

def body6_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(41, 17)]

def body6_11 : WordLangProgHOL (BitVec 64) :=
.seq body6_9 body6_10

def body6_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(47, 13)]

def body6_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 37), (4, 41)]

def body6_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(53, 47)]

def body6_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(57, 2)]

def body6_16 : WordLangProgHOL (BitVec 64) :=
.seq body6_14 body6_15

def body6_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 57)]

def body6_18 : WordLangProgHOL (BitVec 64) :=
.seq body6_16 body6_17

def body6_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 2)]

def body6_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 61)]

def body6_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body6_22 : WordLangProgHOL (BitVec 64) :=
.seq body6_20 body6_21

def body6_23 : WordLangProgHOL (BitVec 64) :=
.seq body6_19 body6_22

def body6_24 : WordLangProgHOL (BitVec 64) :=
.seq body6_14 body6_23

def body6_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 0#64)

def body6_26 : WordLangProgHOL (BitVec 64) :=
.seq body6_24 body6_25

def body6_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body6_18, 495, 2)) (some 187) ([2, 4]) (some (2, body6_26, 495, 3))

def body6_28 : WordLangProgHOL (BitVec 64) :=
.seq body6_13 body6_27

def body6_29 : WordLangProgHOL (BitVec 64) :=
.seq body6_12 body6_28

def body6_30 : WordLangProgHOL (BitVec 64) :=
.seq body6_11 body6_29

def body6_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body6_32 : WordLangProgHOL (BitVec 64) :=
.seq body6_30 body6_31

def body6_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(73, 65)]

def body6_34 : WordLangProgHOL (BitVec 64) :=
.seq body6_32 body6_33

def body6_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 73)]

def body6_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 53 [2]

def body6_37 : WordLangProgHOL (BitVec 64) :=
.seq body6_35 body6_36

def body6_38 : WordLangProgHOL (BitVec 64) :=
.seq body6_34 body6_37

def body6_39 : WordLangProgHOL (BitVec 64) :=
.seq body6_0 body6_38

def pass6 : WordLangProgHOL (BitVec 64) := body6_39
def body7_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(13, 0), (17, 2)]

def body7_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 21 Flapjack.WordStore.heapLength

def body7_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25 21 (Flapjack.WordRegImm.imm 1#64)))

def body7_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29 25

def body7_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 33 (Flapjack.WordLangAddr.addr 29 18446744073709551360#64))

def body7_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 37 (Flapjack.WordLangAddr.addr 33 168#64))

def body7_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 37), (4, 17), (47, 13), (41, 17)]

def body7_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 2), (57, 2), (53, 47)]

def body7_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (61, 2), (53, 47)]

def body7_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body7_10 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_9

def body7_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body7_7, 495, 2)) (some 187) ([2, 4]) (some (2, body7_10, 495, 3))

def body7_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body7_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 65), (73, 65)]

def body7_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 53 [2]

def body7_15 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_14

def body7_16 : WordLangProgHOL (BitVec 64) :=
.seq body7_12 body7_15

def body7_17 : WordLangProgHOL (BitVec 64) :=
.seq body7_11 body7_16

def body7_18 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_17

def body7_19 : WordLangProgHOL (BitVec 64) :=
.seq body7_5 body7_18

def body7_20 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_19

def body7_21 : WordLangProgHOL (BitVec 64) :=
.seq body7_3 body7_20

def body7_22 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_21

def body7_23 : WordLangProgHOL (BitVec 64) :=
.seq body7_1 body7_22

def body7_24 : WordLangProgHOL (BitVec 64) :=
.seq body7_0 body7_23

def pass7 : WordLangProgHOL (BitVec 64) := body7_24
def body8_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(13, 0), (17, 2)]

def body8_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 21 Flapjack.WordStore.heapLength

def body8_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25 21 (Flapjack.WordRegImm.imm 1#64)))

def body8_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 29 25

def body8_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 33 (Flapjack.WordLangAddr.addr 29 18446744073709551360#64))

def body8_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 37 (Flapjack.WordLangAddr.addr 33 168#64))

def body8_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 37), (4, 17), (47, 13)]

def body8_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(65, 2), (53, 47)]

def body8_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (53, 47)]

def body8_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body8_10 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_9

def body8_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body8_7, 495, 2)) (some 187) ([2, 4]) (some (2, body8_10, 495, 3))

def body8_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body8_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 65)]

def body8_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 53 [2]

def body8_15 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_14

def body8_16 : WordLangProgHOL (BitVec 64) :=
.seq body8_12 body8_15

def body8_17 : WordLangProgHOL (BitVec 64) :=
.seq body8_11 body8_16

def body8_18 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_17

def body8_19 : WordLangProgHOL (BitVec 64) :=
.seq body8_5 body8_18

def body8_20 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_19

def body8_21 : WordLangProgHOL (BitVec 64) :=
.seq body8_3 body8_20

def body8_22 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_21

def body8_23 : WordLangProgHOL (BitVec 64) :=
.seq body8_1 body8_22

def body8_24 : WordLangProgHOL (BitVec 64) :=
.seq body8_0 body8_23

def pass8 : WordLangProgHOL (BitVec 64) := body8_24
def body10_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 2)]

def body10_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def body10_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def body10_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def body10_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def body10_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 168#64))

def body10_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0)]

def body10_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44)]

def body10_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def body10_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body10_10 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_9

def body10_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_7, 495, 2)) (some 187) ([2, 4]) (some (2, body10_10, 495, 3))

def body10_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body10_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def body10_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def body10_15 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_14

def body10_16 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_15

def body10_17 : WordLangProgHOL (BitVec 64) :=
.seq body10_11 body10_16

def body10_18 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_17

def body10_19 : WordLangProgHOL (BitVec 64) :=
.seq body10_5 body10_18

def body10_20 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_19

def body10_21 : WordLangProgHOL (BitVec 64) :=
.seq body10_3 body10_20

def body10_22 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_21

def body10_23 : WordLangProgHOL (BitVec 64) :=
.seq body10_1 body10_22

def body10_24 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_23

def pass10 : WordLangProgHOL (BitVec 64) := body10_24
end InitECandidate.Proofs.SmallStages.Compact495
