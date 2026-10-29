import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source635
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact635
def oracle : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.ls 4)))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 Flapjack.Spt.ln) 5
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2))))
                23
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 6)))))
              1
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 4))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 6))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 13))))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 6 (Flapjack.Spt.ls 23))))
              8
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 3 (Flapjack.Spt.ls 3)) 3
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                2
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 5 Flapjack.Spt.ln) 27
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 Flapjack.Spt.ln) 7
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 2)) 1
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 6)))))
              5
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 11) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 7))))
                3
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 6 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.ls 0)) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))))
              7
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 1 Flapjack.Spt.ln) 2
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                1
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 25
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 13))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1 Flapjack.Spt.ln) 24
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 (Flapjack.Spt.ls 27)))
                22
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 6)))))
              6
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 6))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 13))))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 3 (Flapjack.Spt.ls 22))))
              2
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 1 Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 Flapjack.Spt.ln))
                1
                (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 26
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln) 22
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 7 (Flapjack.Spt.ls 24))))
              4
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 3 (Flapjack.Spt.ls 2)) 28
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 4))))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
              0
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 Flapjack.Spt.ln) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 6))))
                1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))) 24
                  (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 22
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 28 Flapjack.Spt.ln) 26
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)
                28 Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 24
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 27 Flapjack.Spt.ln) 25
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
                27 Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 23
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))))))))
def body2_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(33, 0), (37, 2), (41, 4), (45, 6), (49, 8), (53, 10), (57, 12)]

def body2_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 61 Flapjack.WordStore.heapLength

def body2_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 65 61 (Flapjack.WordRegImm.imm 1#64)))

def body2_3 : WordLangProgHOL (BitVec 64) :=
.seq body2_1 body2_2

def body2_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 69 65

def body2_5 : WordLangProgHOL (BitVec 64) :=
.seq body2_3 body2_4

def body2_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 73 (Flapjack.WordLangAddr.addr 69 18446744073709551248#64))

def body2_7 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_6

def body2_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 41)]

def body2_9 : WordLangProgHOL (BitVec 64) :=
.seq body2_7 body2_8

def body2_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 64#64)

def body2_11 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_10

def body2_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 64#64)

def body2_13 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_12

def body2_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(91, 33), (95, 49), (99, 77), (103, 57), (107, 37), (111, 53), (115, 45)]

def body2_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 73), (4, 77), (6, 85)]

def body2_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(121, 91), (125, 95), (129, 99), (133, 103), (137, 107), (141, 111), (145, 115)]

def body2_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(149, 2)]

def body2_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body2_19 : WordLangProgHOL (BitVec 64) :=
.seq body2_17 body2_18

def body2_20 : WordLangProgHOL (BitVec 64) :=
.seq body2_16 body2_19

def body2_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 []

def body2_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 157 0#64)

def body2_23 : WordLangProgHOL (BitVec 64) :=
.seq body2_18 body2_22

def body2_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(161, 149)]

def body2_25 : WordLangProgHOL (BitVec 64) :=
.seq body2_23 body2_24

def body2_26 : WordLangProgHOL (BitVec 64) :=
.seq body2_21 body2_25

def body2_27 : WordLangProgHOL (BitVec 64) :=
.seq body2_20 body2_26

def body2_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 2)]

def body2_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 153)]

def body2_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body2_31 : WordLangProgHOL (BitVec 64) :=
.seq body2_29 body2_30

def body2_32 : WordLangProgHOL (BitVec 64) :=
.seq body2_28 body2_31

def body2_33 : WordLangProgHOL (BitVec 64) :=
.seq body2_16 body2_32

def body2_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(157, 153)]

def body2_35 : WordLangProgHOL (BitVec 64) :=
.seq body2_18 body2_34

def body2_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 161 0#64)

def body2_37 : WordLangProgHOL (BitVec 64) :=
.seq body2_35 body2_36

def body2_38 : WordLangProgHOL (BitVec 64) :=
.seq body2_21 body2_37

def body2_39 : WordLangProgHOL (BitVec 64) :=
.seq body2_33 body2_38

def body2_40 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body2_27, 635, 2)) (some 77) ([2, 4, 6]) (some (2, body2_39, 635, 3))

def body2_41 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_40

def body2_42 : WordLangProgHOL (BitVec 64) :=
.seq body2_14 body2_41

def body2_43 : WordLangProgHOL (BitVec 64) :=
.seq body2_13 body2_42

def body2_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body2_45 : WordLangProgHOL (BitVec 64) :=
.seq body2_43 body2_44

def body2_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 165 Flapjack.WordStore.heapLength

def body2_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 169 165 (Flapjack.WordRegImm.imm 1#64)))

def body2_48 : WordLangProgHOL (BitVec 64) :=
.seq body2_46 body2_47

def body2_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 173 169

def body2_50 : WordLangProgHOL (BitVec 64) :=
.seq body2_48 body2_49

def body2_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 177 (Flapjack.WordLangAddr.addr 173 18446744073709551248#64))

def body2_52 : WordLangProgHOL (BitVec 64) :=
.seq body2_50 body2_51

def body2_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 181 177 (Flapjack.WordRegImm.imm 64#64)))

def body2_54 : WordLangProgHOL (BitVec 64) :=
.seq body2_52 body2_53

def body2_55 : WordLangProgHOL (BitVec 64) :=
.seq body2_45 body2_54

def body2_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 185 Flapjack.WordStore.heapLength

def body2_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 189 185 (Flapjack.WordRegImm.imm 1#64)))

def body2_58 : WordLangProgHOL (BitVec 64) :=
.seq body2_56 body2_57

def body2_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 193 189

def body2_60 : WordLangProgHOL (BitVec 64) :=
.seq body2_58 body2_59

def body2_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 197 (Flapjack.WordLangAddr.addr 193 18446744073709551256#64))

def body2_62 : WordLangProgHOL (BitVec 64) :=
.seq body2_60 body2_61

def body2_63 : WordLangProgHOL (BitVec 64) :=
.seq body2_55 body2_62

def body2_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 201 64#64)

def body2_65 : WordLangProgHOL (BitVec 64) :=
.seq body2_63 body2_64

def body2_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 205 64#64)

def body2_67 : WordLangProgHOL (BitVec 64) :=
.seq body2_65 body2_66

def body2_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(211, 121), (215, 125), (219, 129), (223, 133), (227, 137), (231, 141), (235, 145)]

def body2_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 181), (4, 197), (6, 205)]

def body2_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(241, 211), (245, 215), (249, 219), (253, 223), (257, 227), (261, 231), (265, 235)]

def body2_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(269, 2)]

def body2_72 : WordLangProgHOL (BitVec 64) :=
.seq body2_71 body2_18

def body2_73 : WordLangProgHOL (BitVec 64) :=
.seq body2_70 body2_72

def body2_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 277 0#64)

def body2_75 : WordLangProgHOL (BitVec 64) :=
.seq body2_18 body2_74

def body2_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(281, 269)]

def body2_77 : WordLangProgHOL (BitVec 64) :=
.seq body2_75 body2_76

def body2_78 : WordLangProgHOL (BitVec 64) :=
.seq body2_21 body2_77

def body2_79 : WordLangProgHOL (BitVec 64) :=
.seq body2_73 body2_78

def body2_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 2)]

def body2_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 273)]

def body2_82 : WordLangProgHOL (BitVec 64) :=
.seq body2_81 body2_30

def body2_83 : WordLangProgHOL (BitVec 64) :=
.seq body2_80 body2_82

def body2_84 : WordLangProgHOL (BitVec 64) :=
.seq body2_70 body2_83

def body2_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(277, 273)]

def body2_86 : WordLangProgHOL (BitVec 64) :=
.seq body2_18 body2_85

def body2_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 281 0#64)

def body2_88 : WordLangProgHOL (BitVec 64) :=
.seq body2_86 body2_87

def body2_89 : WordLangProgHOL (BitVec 64) :=
.seq body2_21 body2_88

def body2_90 : WordLangProgHOL (BitVec 64) :=
.seq body2_84 body2_89

def body2_91 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body2_79, 635, 4)) (some 77) ([2, 4, 6]) (some (2, body2_90, 635, 5))

def body2_92 : WordLangProgHOL (BitVec 64) :=
.seq body2_69 body2_91

def body2_93 : WordLangProgHOL (BitVec 64) :=
.seq body2_68 body2_92

def body2_94 : WordLangProgHOL (BitVec 64) :=
.seq body2_67 body2_93

def body2_95 : WordLangProgHOL (BitVec 64) :=
.seq body2_94 body2_44

def body2_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 285 Flapjack.WordStore.heapLength

def body2_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 289 285 (Flapjack.WordRegImm.imm 1#64)))

def body2_98 : WordLangProgHOL (BitVec 64) :=
.seq body2_96 body2_97

def body2_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 293 289

def body2_100 : WordLangProgHOL (BitVec 64) :=
.seq body2_98 body2_99

def body2_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 297 (Flapjack.WordLangAddr.addr 293 18446744073709551248#64))

def body2_102 : WordLangProgHOL (BitVec 64) :=
.seq body2_100 body2_101

def body2_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 301 297 (Flapjack.WordRegImm.imm 96#64)))

def body2_104 : WordLangProgHOL (BitVec 64) :=
.seq body2_102 body2_103

def body2_105 : WordLangProgHOL (BitVec 64) :=
.seq body2_95 body2_104

def body2_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(305, 245)]

def body2_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 309 Flapjack.WordStore.heapLength

def body2_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 313 309 (Flapjack.WordRegImm.imm 1#64)))

def body2_109 : WordLangProgHOL (BitVec 64) :=
.seq body2_107 body2_108

def body2_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 317 313

def body2_111 : WordLangProgHOL (BitVec 64) :=
.seq body2_109 body2_110

def body2_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 321 (Flapjack.WordLangAddr.addr 317 18446744073709551248#64))

def body2_113 : WordLangProgHOL (BitVec 64) :=
.seq body2_111 body2_112

def body2_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 325 (Flapjack.WordLangAddr.addr 321 96#64))

def body2_115 : WordLangProgHOL (BitVec 64) :=
.seq body2_113 body2_114

def body2_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 329 305 (Flapjack.WordRegImm.reg 325)))

def body2_117 : WordLangProgHOL (BitVec 64) :=
.seq body2_115 body2_116

def body2_118 : WordLangProgHOL (BitVec 64) :=
.seq body2_106 body2_117

def body2_119 : WordLangProgHOL (BitVec 64) :=
.seq body2_105 body2_118

def body2_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(333, 329)]

def body2_121 : WordLangProgHOL (BitVec 64) :=
.seq body2_119 body2_120

def body2_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(337, 301)]

def body2_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 333 (Flapjack.WordLangAddr.addr 337 0#64))

def body2_124 : WordLangProgHOL (BitVec 64) :=
.seq body2_122 body2_123

def body2_125 : WordLangProgHOL (BitVec 64) :=
.seq body2_121 body2_124

def body2_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 341 Flapjack.WordStore.heapLength

def body2_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 345 341 (Flapjack.WordRegImm.imm 1#64)))

def body2_128 : WordLangProgHOL (BitVec 64) :=
.seq body2_126 body2_127

def body2_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 349 345

def body2_130 : WordLangProgHOL (BitVec 64) :=
.seq body2_128 body2_129

def body2_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 353 (Flapjack.WordLangAddr.addr 349 18446744073709551248#64))

def body2_132 : WordLangProgHOL (BitVec 64) :=
.seq body2_130 body2_131

def body2_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 357 353 (Flapjack.WordRegImm.imm 104#64)))

def body2_134 : WordLangProgHOL (BitVec 64) :=
.seq body2_132 body2_133

def body2_135 : WordLangProgHOL (BitVec 64) :=
.seq body2_125 body2_134

def body2_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(361, 261)]

def body2_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 365 Flapjack.WordStore.heapLength

def body2_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 369 365 (Flapjack.WordRegImm.imm 1#64)))

def body2_139 : WordLangProgHOL (BitVec 64) :=
.seq body2_137 body2_138

def body2_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 373 369

def body2_141 : WordLangProgHOL (BitVec 64) :=
.seq body2_139 body2_140

def body2_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 377 (Flapjack.WordLangAddr.addr 373 18446744073709551248#64))

def body2_143 : WordLangProgHOL (BitVec 64) :=
.seq body2_141 body2_142

def body2_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 381 (Flapjack.WordLangAddr.addr 377 104#64))

def body2_145 : WordLangProgHOL (BitVec 64) :=
.seq body2_143 body2_144

def body2_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 385 361 (Flapjack.WordRegImm.reg 381)))

def body2_147 : WordLangProgHOL (BitVec 64) :=
.seq body2_145 body2_146

def body2_148 : WordLangProgHOL (BitVec 64) :=
.seq body2_136 body2_147

def body2_149 : WordLangProgHOL (BitVec 64) :=
.seq body2_135 body2_148

def body2_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(389, 385)]

def body2_151 : WordLangProgHOL (BitVec 64) :=
.seq body2_149 body2_150

def body2_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(393, 357)]

def body2_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 389 (Flapjack.WordLangAddr.addr 393 0#64))

def body2_154 : WordLangProgHOL (BitVec 64) :=
.seq body2_152 body2_153

def body2_155 : WordLangProgHOL (BitVec 64) :=
.seq body2_151 body2_154

def body2_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(397, 253)]

def body2_157 : WordLangProgHOL (BitVec 64) :=
.seq body2_155 body2_156

def body2_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 401 0#64)

def body2_159 : WordLangProgHOL (BitVec 64) :=
.seq body2_157 body2_158

def body2_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 405 1#64)

def body2_161 : WordLangProgHOL (BitVec 64) :=
.seq body2_160 body2_44

def body2_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 409 1#64)

def body2_163 : WordLangProgHOL (BitVec 64) :=
.seq body2_161 body2_162

def body2_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 413 Flapjack.WordStore.heapLength

def body2_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 417 413 (Flapjack.WordRegImm.imm 1#64)))

def body2_166 : WordLangProgHOL (BitVec 64) :=
.seq body2_164 body2_165

def body2_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 421 417

def body2_168 : WordLangProgHOL (BitVec 64) :=
.seq body2_166 body2_167

def body2_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 425 (Flapjack.WordLangAddr.addr 421 18446744073709551248#64))

def body2_170 : WordLangProgHOL (BitVec 64) :=
.seq body2_168 body2_169

def body2_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 429 425 (Flapjack.WordRegImm.imm 112#64)))

def body2_172 : WordLangProgHOL (BitVec 64) :=
.seq body2_170 body2_171

def body2_173 : WordLangProgHOL (BitVec 64) :=
.seq body2_163 body2_172

def body2_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 433 Flapjack.WordStore.heapLength

def body2_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 437 433 (Flapjack.WordRegImm.imm 1#64)))

def body2_176 : WordLangProgHOL (BitVec 64) :=
.seq body2_174 body2_175

def body2_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 441 437

def body2_178 : WordLangProgHOL (BitVec 64) :=
.seq body2_176 body2_177

def body2_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 445 (Flapjack.WordLangAddr.addr 441 18446744073709551248#64))

def body2_180 : WordLangProgHOL (BitVec 64) :=
.seq body2_178 body2_179

def body2_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 449 (Flapjack.WordLangAddr.addr 445 112#64))

def body2_182 : WordLangProgHOL (BitVec 64) :=
.seq body2_180 body2_181

def body2_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 453 449 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def body2_184 : WordLangProgHOL (BitVec 64) :=
.seq body2_182 body2_183

def body2_185 : WordLangProgHOL (BitVec 64) :=
.seq body2_173 body2_184

def body2_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(457, 453)]

def body2_187 : WordLangProgHOL (BitVec 64) :=
.seq body2_185 body2_186

def body2_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(461, 429)]

def body2_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 457 (Flapjack.WordLangAddr.addr 461 0#64))

def body2_190 : WordLangProgHOL (BitVec 64) :=
.seq body2_188 body2_189

def body2_191 : WordLangProgHOL (BitVec 64) :=
.seq body2_187 body2_190

def body2_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(489, 461), (485, 457), (481, 409), (477, 461), (473, 457)]

def body2_193 : WordLangProgHOL (BitVec 64) :=
.seq body2_192 body2_18

def body2_194 : WordLangProgHOL (BitVec 64) :=
.seq body2_191 body2_193

def body2_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 465 0#64)

def body2_196 : WordLangProgHOL (BitVec 64) :=
.seq body2_195 body2_44

def body2_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 469 0#64)

def body2_198 : WordLangProgHOL (BitVec 64) :=
.seq body2_196 body2_197

def body2_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(489, 393), (485, 401), (481, 469), (477, 393), (473, 465)]

def body2_200 : WordLangProgHOL (BitVec 64) :=
.seq body2_199 body2_18

def body2_201 : WordLangProgHOL (BitVec 64) :=
.seq body2_198 body2_200

def body2_202 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 397 (Flapjack.WordRegImm.reg 401) body2_194 body2_201

def body2_203 : WordLangProgHOL (BitVec 64) :=
.seq body2_159 body2_202

def body2_204 : WordLangProgHOL (BitVec 64) :=
.seq body2_203 body2_44

def body2_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 493 Flapjack.WordStore.heapLength

def body2_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 497 493 (Flapjack.WordRegImm.imm 1#64)))

def body2_207 : WordLangProgHOL (BitVec 64) :=
.seq body2_205 body2_206

def body2_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 501 497

def body2_209 : WordLangProgHOL (BitVec 64) :=
.seq body2_207 body2_208

def body2_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 505 (Flapjack.WordLangAddr.addr 501 18446744073709551240#64))

def body2_211 : WordLangProgHOL (BitVec 64) :=
.seq body2_209 body2_210

def body2_212 : WordLangProgHOL (BitVec 64) :=
.seq body2_204 body2_211

def body2_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(509, 265)]

def body2_214 : WordLangProgHOL (BitVec 64) :=
.seq body2_212 body2_213

def body2_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 513 128#64)

def body2_216 : WordLangProgHOL (BitVec 64) :=
.seq body2_214 body2_215

def body2_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 517 128#64)

def body2_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(523, 241), (527, 305), (531, 249), (535, 397), (539, 257), (543, 361), (547, 509)]

def body2_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 505), (4, 509), (6, 517)]

def body2_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(553, 523), (557, 527), (561, 531), (565, 535), (569, 539), (573, 543), (577, 547)]

def body2_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(581, 2)]

def body2_222 : WordLangProgHOL (BitVec 64) :=
.seq body2_221 body2_18

def body2_223 : WordLangProgHOL (BitVec 64) :=
.seq body2_220 body2_222

def body2_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 589 0#64)

def body2_225 : WordLangProgHOL (BitVec 64) :=
.seq body2_18 body2_224

def body2_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(593, 581)]

def body2_227 : WordLangProgHOL (BitVec 64) :=
.seq body2_225 body2_226

def body2_228 : WordLangProgHOL (BitVec 64) :=
.seq body2_21 body2_227

def body2_229 : WordLangProgHOL (BitVec 64) :=
.seq body2_223 body2_228

def body2_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(585, 2)]

def body2_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 585)]

def body2_232 : WordLangProgHOL (BitVec 64) :=
.seq body2_231 body2_30

def body2_233 : WordLangProgHOL (BitVec 64) :=
.seq body2_230 body2_232

def body2_234 : WordLangProgHOL (BitVec 64) :=
.seq body2_220 body2_233

def body2_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(589, 585)]

def body2_236 : WordLangProgHOL (BitVec 64) :=
.seq body2_18 body2_235

def body2_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 593 0#64)

def body2_238 : WordLangProgHOL (BitVec 64) :=
.seq body2_236 body2_237

def body2_239 : WordLangProgHOL (BitVec 64) :=
.seq body2_21 body2_238

def body2_240 : WordLangProgHOL (BitVec 64) :=
.seq body2_234 body2_239

def body2_241 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body2_229, 635, 6)) (some 77) ([2, 4, 6]) (some (2, body2_240, 635, 7))

def body2_242 : WordLangProgHOL (BitVec 64) :=
.seq body2_219 body2_241

def body2_243 : WordLangProgHOL (BitVec 64) :=
.seq body2_218 body2_242

def body2_244 : WordLangProgHOL (BitVec 64) :=
.seq body2_217 body2_243

def body2_245 : WordLangProgHOL (BitVec 64) :=
.seq body2_216 body2_244

def body2_246 : WordLangProgHOL (BitVec 64) :=
.seq body2_245 body2_44

def body2_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 597 0#64)

def body2_248 : WordLangProgHOL (BitVec 64) :=
.seq body2_246 body2_247

def body2_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 601 0#64)

def body2_250 : WordLangProgHOL (BitVec 64) :=
.seq body2_248 body2_249

def body2_251 : WordLangProgHOL (BitVec 64) :=
.seq body2_250 body2_44

def body2_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(605, 553), (609, 557), (613, 561), (617, 565), (621, 569), (625, 573), (629, 597), (633, 577), (637, 601)]

def body2_253 : WordLangProgHOL (BitVec 64) :=
.seq body2_18 body2_252

def body2_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(641, 629)]

def body2_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(645, 621)]

def body2_256 : WordLangProgHOL (BitVec 64) :=
.seq body2_254 body2_255

def body2_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 649 1#64)

def body2_258 : WordLangProgHOL (BitVec 64) :=
.seq body2_257 body2_44

def body2_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 653 1#64)

def body2_260 : WordLangProgHOL (BitVec 64) :=
.seq body2_258 body2_259

def body2_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 657 Flapjack.WordStore.heapLength

def body2_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 661 657 (Flapjack.WordRegImm.imm 1#64)))

def body2_263 : WordLangProgHOL (BitVec 64) :=
.seq body2_261 body2_262

def body2_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 665 661

def body2_265 : WordLangProgHOL (BitVec 64) :=
.seq body2_263 body2_264

def body2_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 669 (Flapjack.WordLangAddr.addr 665 18446744073709551232#64))

def body2_267 : WordLangProgHOL (BitVec 64) :=
.seq body2_265 body2_266

def body2_268 : WordLangProgHOL (BitVec 64) :=
.seq body2_260 body2_267

def body2_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(673, 637)]

def body2_270 : WordLangProgHOL (BitVec 64) :=
.seq body2_268 body2_269

def body2_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(677, 673)]

def body2_272 : WordLangProgHOL (BitVec 64) :=
.seq body2_270 body2_271

def body2_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(681, 669)]

def body2_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 677 (Flapjack.WordLangAddr.addr 681 0#64))

def body2_275 : WordLangProgHOL (BitVec 64) :=
.seq body2_273 body2_274

def body2_276 : WordLangProgHOL (BitVec 64) :=
.seq body2_272 body2_275

def body2_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 685 Flapjack.WordStore.heapLength

def body2_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 689 685 (Flapjack.WordRegImm.imm 1#64)))

def body2_279 : WordLangProgHOL (BitVec 64) :=
.seq body2_277 body2_278

def body2_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 693 689

def body2_281 : WordLangProgHOL (BitVec 64) :=
.seq body2_279 body2_280

def body2_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 697 (Flapjack.WordLangAddr.addr 693 18446744073709551232#64))

def body2_283 : WordLangProgHOL (BitVec 64) :=
.seq body2_281 body2_282

def body2_284 : WordLangProgHOL (BitVec 64) :=
.seq body2_276 body2_283

def body2_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 701 0#64)

def body2_286 : WordLangProgHOL (BitVec 64) :=
.seq body2_284 body2_285

def body2_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 705 Flapjack.WordStore.heapLength

def body2_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 709 705 (Flapjack.WordRegImm.imm 1#64)))

def body2_289 : WordLangProgHOL (BitVec 64) :=
.seq body2_287 body2_288

def body2_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 713 709

def body2_291 : WordLangProgHOL (BitVec 64) :=
.seq body2_289 body2_290

def body2_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 717 (Flapjack.WordLangAddr.addr 713 18446744073709551232#64))

def body2_293 : WordLangProgHOL (BitVec 64) :=
.seq body2_291 body2_292

def body2_294 : WordLangProgHOL (BitVec 64) :=
.seq body2_286 body2_293

def body2_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 721 264#64)

def body2_296 : WordLangProgHOL (BitVec 64) :=
.seq body2_294 body2_295

def body2_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 725 264#64)

def body2_298 : WordLangProgHOL (BitVec 64) :=
.seq body2_296 body2_297

def body2_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 729 0#64)

def body2_300 : WordLangProgHOL (BitVec 64) :=
.seq body2_298 body2_299

def body2_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 733 264#64)

def body2_302 : WordLangProgHOL (BitVec 64) :=
.seq body2_300 body2_301

def body2_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 737 0#64)

def body2_304 : WordLangProgHOL (BitVec 64) :=
.seq body2_302 body2_303

def body2_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(743, 605), (747, 609), (751, 613), (755, 617), (759, 645), (763, 625), (767, 641), (771, 633), (775, 673)]

def body2_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 697), (4, 737), (6, 717), (8, 733)]

def body2_307 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.ffi
  (Flapjack.Basis.Pure.MlString.MlString.implode
    [98#8, 108#8, 97#8, 107#8, 101#8, 50#8, 98#8, 114#8, 111#8, 117#8, 110#8, 100#8])
  2 4 6 8
  (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))))),
    Flapjack.Spt.ln)

def body2_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(781, 743), (785, 747), (789, 751), (793, 755), (797, 759), (801, 763), (805, 767), (809, 771), (813, 775)]

def body2_309 : WordLangProgHOL (BitVec 64) :=
.seq body2_307 body2_308

def body2_310 : WordLangProgHOL (BitVec 64) :=
.seq body2_306 body2_309

def body2_311 : WordLangProgHOL (BitVec 64) :=
.seq body2_305 body2_310

def body2_312 : WordLangProgHOL (BitVec 64) :=
.seq body2_304 body2_311

def body2_313 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(817, 805)]

def body2_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 821 817 (Flapjack.WordRegImm.imm 1#64)))

def body2_315 : WordLangProgHOL (BitVec 64) :=
.seq body2_313 body2_314

def body2_316 : WordLangProgHOL (BitVec 64) :=
.seq body2_312 body2_315

def body2_317 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(825, 821)]

def body2_318 : WordLangProgHOL (BitVec 64) :=
.seq body2_316 body2_317

def body2_319 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(829, 813)]

def body2_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 833 829 (Flapjack.WordRegImm.imm 1#64)))

def body2_321 : WordLangProgHOL (BitVec 64) :=
.seq body2_319 body2_320

def body2_322 : WordLangProgHOL (BitVec 64) :=
.seq body2_318 body2_321

def body2_323 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(837, 833)]

def body2_324 : WordLangProgHOL (BitVec 64) :=
.seq body2_322 body2_323

def body2_325 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(841, 837)]

def body2_326 : WordLangProgHOL (BitVec 64) :=
.seq body2_324 body2_325

def body2_327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 845 10#64)

def body2_328 : WordLangProgHOL (BitVec 64) :=
.seq body2_326 body2_327

def body2_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 849 1#64)

def body2_330 : WordLangProgHOL (BitVec 64) :=
.seq body2_329 body2_44

def body2_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 853 1#64)

def body2_332 : WordLangProgHOL (BitVec 64) :=
.seq body2_330 body2_331

def body2_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 857 0#64)

def body2_334 : WordLangProgHOL (BitVec 64) :=
.seq body2_332 body2_333

def body2_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(877, 853), (873, 849), (869, 857)]

def body2_336 : WordLangProgHOL (BitVec 64) :=
.seq body2_335 body2_18

def body2_337 : WordLangProgHOL (BitVec 64) :=
.seq body2_334 body2_336

def body2_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 861 0#64)

def body2_339 : WordLangProgHOL (BitVec 64) :=
.seq body2_338 body2_44

def body2_340 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 865 0#64)

def body2_341 : WordLangProgHOL (BitVec 64) :=
.seq body2_339 body2_340

def body2_342 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(877, 865), (873, 861), (869, 841)]

def body2_343 : WordLangProgHOL (BitVec 64) :=
.seq body2_342 body2_18

def body2_344 : WordLangProgHOL (BitVec 64) :=
.seq body2_341 body2_343

def body2_345 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 841 (Flapjack.WordRegImm.reg 845) body2_337 body2_344

def body2_346 : WordLangProgHOL (BitVec 64) :=
.seq body2_328 body2_345

def body2_347 : WordLangProgHOL (BitVec 64) :=
.seq body2_346 body2_44

def body2_348 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(605, 781), (609, 785), (613, 789), (617, 793), (621, 797), (625, 801), (629, 825), (633, 809), (637, 869)]

def body2_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body2_350 : WordLangProgHOL (BitVec 64) :=
.seq body2_348 body2_349

def body2_351 : WordLangProgHOL (BitVec 64) :=
.seq body2_347 body2_350

def body2_352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(933, 781), (929, 877), (925, 785), (921, 845), (917, 789), (913, 793), (909, 797), (905, 873), (901, 801),
    (897, 825), (893, 809), (889, 869)]

def body2_353 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(937, 837)]

def body2_354 : WordLangProgHOL (BitVec 64) :=
.seq body2_18 body2_353

def body2_355 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(941, 829)]

def body2_356 : WordLangProgHOL (BitVec 64) :=
.seq body2_354 body2_355

def body2_357 : WordLangProgHOL (BitVec 64) :=
.seq body2_352 body2_356

def body2_358 : WordLangProgHOL (BitVec 64) :=
.seq body2_351 body2_357

def body2_359 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 881 0#64)

def body2_360 : WordLangProgHOL (BitVec 64) :=
.seq body2_359 body2_44

def body2_361 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 885 0#64)

def body2_362 : WordLangProgHOL (BitVec 64) :=
.seq body2_360 body2_361

def body2_363 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(621, 645), (629, 641)]

def body2_364 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body2_365 : WordLangProgHOL (BitVec 64) :=
.seq body2_363 body2_364

def body2_366 : WordLangProgHOL (BitVec 64) :=
.seq body2_362 body2_365

def body2_367 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(933, 605), (929, 885), (925, 609), (921, 645), (917, 613), (913, 617), (909, 645), (905, 881), (901, 625),
    (897, 641), (893, 633), (889, 637)]

def body2_368 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 937 0#64)

def body2_369 : WordLangProgHOL (BitVec 64) :=
.seq body2_18 body2_368

def body2_370 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 941 0#64)

def body2_371 : WordLangProgHOL (BitVec 64) :=
.seq body2_369 body2_370

def body2_372 : WordLangProgHOL (BitVec 64) :=
.seq body2_367 body2_371

def body2_373 : WordLangProgHOL (BitVec 64) :=
.seq body2_366 body2_372

def body2_374 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 641 (Flapjack.WordRegImm.reg 645) body2_358 body2_373

def body2_375 : WordLangProgHOL (BitVec 64) :=
.seq body2_256 body2_374

def body2_376 : WordLangProgHOL (BitVec 64) :=
.seq body2_375 body2_44

def body2_377 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(605, 933), (609, 925), (613, 917), (617, 913), (621, 909), (625, 901), (629, 897), (633, 893), (637, 889)]

def body2_378 : WordLangProgHOL (BitVec 64) :=
.seq body2_376 body2_377

def body2_379 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)) body2_378 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln))

def body2_380 : WordLangProgHOL (BitVec 64) :=
.seq body2_253 body2_379

def body2_381 : WordLangProgHOL (BitVec 64) :=
.seq body2_251 body2_380

def body2_382 : WordLangProgHOL (BitVec 64) :=
.seq body2_381 body2_44

def body2_383 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 945 0#64)

def body2_384 : WordLangProgHOL (BitVec 64) :=
.seq body2_382 body2_383

def body2_385 : WordLangProgHOL (BitVec 64) :=
.seq body2_384 body2_44

def body2_386 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(949, 605), (953, 609), (957, 613), (961, 945), (965, 617), (969, 621), (973, 625), (977, 629), (981, 633),
    (985, 637)]

def body2_387 : WordLangProgHOL (BitVec 64) :=
.seq body2_18 body2_386

def body2_388 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(989, 961)]

def body2_389 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 993 8#64)

def body2_390 : WordLangProgHOL (BitVec 64) :=
.seq body2_388 body2_389

def body2_391 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 997 1#64)

def body2_392 : WordLangProgHOL (BitVec 64) :=
.seq body2_391 body2_44

def body2_393 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1001 1#64)

def body2_394 : WordLangProgHOL (BitVec 64) :=
.seq body2_392 body2_393

def body2_395 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1005, 989)]

def body2_396 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1009 1005 (Flapjack.WordRegImm.imm 3#64)))

def body2_397 : WordLangProgHOL (BitVec 64) :=
.seq body2_395 body2_396

def body2_398 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1013, 957)]

def body2_399 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1017 1009 (Flapjack.WordRegImm.reg 1013)))

def body2_400 : WordLangProgHOL (BitVec 64) :=
.seq body2_398 body2_399

def body2_401 : WordLangProgHOL (BitVec 64) :=
.seq body2_397 body2_400

def body2_402 : WordLangProgHOL (BitVec 64) :=
.seq body2_394 body2_401

def body2_403 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1021, 1005)]

def body2_404 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1025 1021 (Flapjack.WordRegImm.imm 8#64)))

def body2_405 : WordLangProgHOL (BitVec 64) :=
.seq body2_403 body2_404

def body2_406 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1029 1025 (Flapjack.WordRegImm.imm 3#64)))

def body2_407 : WordLangProgHOL (BitVec 64) :=
.seq body2_405 body2_406

def body2_408 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 1033 Flapjack.WordStore.heapLength

def body2_409 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1037 1033 (Flapjack.WordRegImm.imm 1#64)))

def body2_410 : WordLangProgHOL (BitVec 64) :=
.seq body2_408 body2_409

def body2_411 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1041 1037

def body2_412 : WordLangProgHOL (BitVec 64) :=
.seq body2_410 body2_411

def body2_413 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1045 (Flapjack.WordLangAddr.addr 1041 18446744073709551248#64))

def body2_414 : WordLangProgHOL (BitVec 64) :=
.seq body2_412 body2_413

def body2_415 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1049 1029 (Flapjack.WordRegImm.reg 1045)))

def body2_416 : WordLangProgHOL (BitVec 64) :=
.seq body2_414 body2_415

def body2_417 : WordLangProgHOL (BitVec 64) :=
.seq body2_407 body2_416

def body2_418 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1053 (Flapjack.WordLangAddr.addr 1049 0#64))

def body2_419 : WordLangProgHOL (BitVec 64) :=
.seq body2_417 body2_418

def body2_420 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1057, 1021)]

def body2_421 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1061 1057 (Flapjack.WordRegImm.imm 3#64)))

def body2_422 : WordLangProgHOL (BitVec 64) :=
.seq body2_420 body2_421

def body2_423 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 1065 Flapjack.WordStore.heapLength

def body2_424 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1069 1065 (Flapjack.WordRegImm.imm 1#64)))

def body2_425 : WordLangProgHOL (BitVec 64) :=
.seq body2_423 body2_424

def body2_426 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1073 1069

def body2_427 : WordLangProgHOL (BitVec 64) :=
.seq body2_425 body2_426

def body2_428 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1077 (Flapjack.WordLangAddr.addr 1073 18446744073709551248#64))

def body2_429 : WordLangProgHOL (BitVec 64) :=
.seq body2_427 body2_428

def body2_430 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1081 1061 (Flapjack.WordRegImm.reg 1077)))

def body2_431 : WordLangProgHOL (BitVec 64) :=
.seq body2_429 body2_430

def body2_432 : WordLangProgHOL (BitVec 64) :=
.seq body2_422 body2_431

def body2_433 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1085 (Flapjack.WordLangAddr.addr 1081 0#64))

def body2_434 : WordLangProgHOL (BitVec 64) :=
.seq body2_432 body2_433

def body2_435 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 1089 1053 (Flapjack.WordRegImm.reg 1085)))

def body2_436 : WordLangProgHOL (BitVec 64) :=
.seq body2_434 body2_435

def body2_437 : WordLangProgHOL (BitVec 64) :=
.seq body2_419 body2_436

def body2_438 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1093, 1057)]

def body2_439 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1097 1093 (Flapjack.WordRegImm.imm 3#64)))

def body2_440 : WordLangProgHOL (BitVec 64) :=
.seq body2_438 body2_439

def body2_441 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1101, 1013)]

def body2_442 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1105 1097 (Flapjack.WordRegImm.reg 1101)))

def body2_443 : WordLangProgHOL (BitVec 64) :=
.seq body2_441 body2_442

def body2_444 : WordLangProgHOL (BitVec 64) :=
.seq body2_440 body2_443

def body2_445 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1109 (Flapjack.WordLangAddr.addr 1105 0#64))

def body2_446 : WordLangProgHOL (BitVec 64) :=
.seq body2_444 body2_445

def body2_447 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 1113 1089 (Flapjack.WordRegImm.reg 1109)))

def body2_448 : WordLangProgHOL (BitVec 64) :=
.seq body2_446 body2_447

def body2_449 : WordLangProgHOL (BitVec 64) :=
.seq body2_437 body2_448

def body2_450 : WordLangProgHOL (BitVec 64) :=
.seq body2_402 body2_449

def body2_451 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1117, 1113)]

def body2_452 : WordLangProgHOL (BitVec 64) :=
.seq body2_450 body2_451

def body2_453 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1121, 1017)]

def body2_454 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1117 (Flapjack.WordLangAddr.addr 1121 0#64))

def body2_455 : WordLangProgHOL (BitVec 64) :=
.seq body2_453 body2_454

def body2_456 : WordLangProgHOL (BitVec 64) :=
.seq body2_452 body2_455

def body2_457 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1125, 1093)]

def body2_458 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1129 1125 (Flapjack.WordRegImm.imm 1#64)))

def body2_459 : WordLangProgHOL (BitVec 64) :=
.seq body2_457 body2_458

def body2_460 : WordLangProgHOL (BitVec 64) :=
.seq body2_456 body2_459

def body2_461 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1133, 1129)]

def body2_462 : WordLangProgHOL (BitVec 64) :=
.seq body2_460 body2_461

def body2_463 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(957, 1101), (961, 1133)]

def body2_464 : WordLangProgHOL (BitVec 64) :=
.seq body2_463 body2_349

def body2_465 : WordLangProgHOL (BitVec 64) :=
.seq body2_462 body2_464

def body2_466 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1161, 1117), (1157, 1117), (1153, 1101), (1149, 1133), (1145, 1001)]

def body2_467 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1165, 1133)]

def body2_468 : WordLangProgHOL (BitVec 64) :=
.seq body2_18 body2_467

def body2_469 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1169, 1109)]

def body2_470 : WordLangProgHOL (BitVec 64) :=
.seq body2_468 body2_469

def body2_471 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1173, 1101)]

def body2_472 : WordLangProgHOL (BitVec 64) :=
.seq body2_470 body2_471

def body2_473 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1177, 1125)]

def body2_474 : WordLangProgHOL (BitVec 64) :=
.seq body2_472 body2_473

def body2_475 : WordLangProgHOL (BitVec 64) :=
.seq body2_466 body2_474

def body2_476 : WordLangProgHOL (BitVec 64) :=
.seq body2_465 body2_475

def body2_477 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1137 0#64)

def body2_478 : WordLangProgHOL (BitVec 64) :=
.seq body2_477 body2_44

def body2_479 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1141 0#64)

def body2_480 : WordLangProgHOL (BitVec 64) :=
.seq body2_478 body2_479

def body2_481 : WordLangProgHOL (BitVec 64) :=
.seq body2_480 body2_364

def body2_482 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1161, 993), (1157, 1137), (1153, 957), (1149, 989), (1145, 1141)]

def body2_483 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1165 0#64)

def body2_484 : WordLangProgHOL (BitVec 64) :=
.seq body2_18 body2_483

def body2_485 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1169 0#64)

def body2_486 : WordLangProgHOL (BitVec 64) :=
.seq body2_484 body2_485

def body2_487 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1173 0#64)

def body2_488 : WordLangProgHOL (BitVec 64) :=
.seq body2_486 body2_487

def body2_489 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1177 0#64)

def body2_490 : WordLangProgHOL (BitVec 64) :=
.seq body2_488 body2_489

def body2_491 : WordLangProgHOL (BitVec 64) :=
.seq body2_482 body2_490

def body2_492 : WordLangProgHOL (BitVec 64) :=
.seq body2_481 body2_491

def body2_493 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 989 (Flapjack.WordRegImm.reg 993) body2_476 body2_492

def body2_494 : WordLangProgHOL (BitVec 64) :=
.seq body2_390 body2_493

def body2_495 : WordLangProgHOL (BitVec 64) :=
.seq body2_494 body2_44

def body2_496 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(957, 1153), (961, 1149)]

def body2_497 : WordLangProgHOL (BitVec 64) :=
.seq body2_495 body2_496

def body2_498 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)) body2_497 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln))

def body2_499 : WordLangProgHOL (BitVec 64) :=
.seq body2_387 body2_498

def body2_500 : WordLangProgHOL (BitVec 64) :=
.seq body2_385 body2_499

def body2_501 : WordLangProgHOL (BitVec 64) :=
.seq body2_500 body2_44

def body2_502 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1181 0#64)

def body2_503 : WordLangProgHOL (BitVec 64) :=
.seq body2_501 body2_502

def body2_504 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 1181)]

def body2_505 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 949 [2]

def body2_506 : WordLangProgHOL (BitVec 64) :=
.seq body2_504 body2_505

def body2_507 : WordLangProgHOL (BitVec 64) :=
.seq body2_503 body2_506

def body2_508 : WordLangProgHOL (BitVec 64) :=
.seq body2_0 body2_507

def pass2 : WordLangProgHOL (BitVec 64) := body2_508
def body3_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(33, 0), (37, 2), (41, 4), (45, 6), (49, 8), (53, 10), (57, 12)]

def body3_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 61 Flapjack.WordStore.heapLength

def body3_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 65 61 (Flapjack.WordRegImm.imm 1#64)))

def body3_3 : WordLangProgHOL (BitVec 64) :=
.seq body3_1 body3_2

def body3_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 69 65

def body3_5 : WordLangProgHOL (BitVec 64) :=
.seq body3_3 body3_4

def body3_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 73 (Flapjack.WordLangAddr.addr 69 18446744073709551248#64))

def body3_7 : WordLangProgHOL (BitVec 64) :=
.seq body3_5 body3_6

def body3_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 41)]

def body3_9 : WordLangProgHOL (BitVec 64) :=
.seq body3_7 body3_8

def body3_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 64#64)

def body3_11 : WordLangProgHOL (BitVec 64) :=
.seq body3_9 body3_10

def body3_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(91, 33), (95, 49), (99, 77), (103, 57), (107, 37), (111, 53), (115, 45)]

def body3_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 73), (4, 77), (6, 85)]

def body3_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(121, 91), (125, 95), (129, 99), (133, 103), (137, 107), (141, 111), (145, 115)]

def body3_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 2)]

def body3_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 153)]

def body3_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body3_18 : WordLangProgHOL (BitVec 64) :=
.seq body3_16 body3_17

def body3_19 : WordLangProgHOL (BitVec 64) :=
.seq body3_15 body3_18

def body3_20 : WordLangProgHOL (BitVec 64) :=
.seq body3_14 body3_19

def body3_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body3_14, 635, 2)) (some 77) ([2, 4, 6]) (some (2, body3_20, 635, 3))

def body3_22 : WordLangProgHOL (BitVec 64) :=
.seq body3_13 body3_21

def body3_23 : WordLangProgHOL (BitVec 64) :=
.seq body3_12 body3_22

def body3_24 : WordLangProgHOL (BitVec 64) :=
.seq body3_11 body3_23

def body3_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body3_26 : WordLangProgHOL (BitVec 64) :=
.seq body3_24 body3_25

def body3_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 165 Flapjack.WordStore.heapLength

def body3_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 169 165 (Flapjack.WordRegImm.imm 1#64)))

def body3_29 : WordLangProgHOL (BitVec 64) :=
.seq body3_27 body3_28

def body3_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 173 169

def body3_31 : WordLangProgHOL (BitVec 64) :=
.seq body3_29 body3_30

def body3_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 177 (Flapjack.WordLangAddr.addr 173 18446744073709551248#64))

def body3_33 : WordLangProgHOL (BitVec 64) :=
.seq body3_31 body3_32

def body3_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 181 177 (Flapjack.WordRegImm.imm 64#64)))

def body3_35 : WordLangProgHOL (BitVec 64) :=
.seq body3_33 body3_34

def body3_36 : WordLangProgHOL (BitVec 64) :=
.seq body3_26 body3_35

def body3_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 185 Flapjack.WordStore.heapLength

def body3_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 189 185 (Flapjack.WordRegImm.imm 1#64)))

def body3_39 : WordLangProgHOL (BitVec 64) :=
.seq body3_37 body3_38

def body3_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 193 189

def body3_41 : WordLangProgHOL (BitVec 64) :=
.seq body3_39 body3_40

def body3_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 197 (Flapjack.WordLangAddr.addr 193 18446744073709551256#64))

def body3_43 : WordLangProgHOL (BitVec 64) :=
.seq body3_41 body3_42

def body3_44 : WordLangProgHOL (BitVec 64) :=
.seq body3_36 body3_43

def body3_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 205 64#64)

def body3_46 : WordLangProgHOL (BitVec 64) :=
.seq body3_44 body3_45

def body3_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(211, 121), (215, 125), (219, 129), (223, 133), (227, 137), (231, 141), (235, 145)]

def body3_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 181), (4, 197), (6, 205)]

def body3_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(241, 211), (245, 215), (249, 219), (253, 223), (257, 227), (261, 231), (265, 235)]

def body3_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 2)]

def body3_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 273)]

def body3_52 : WordLangProgHOL (BitVec 64) :=
.seq body3_51 body3_17

def body3_53 : WordLangProgHOL (BitVec 64) :=
.seq body3_50 body3_52

def body3_54 : WordLangProgHOL (BitVec 64) :=
.seq body3_49 body3_53

def body3_55 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body3_49, 635, 4)) (some 77) ([2, 4, 6]) (some (2, body3_54, 635, 5))

def body3_56 : WordLangProgHOL (BitVec 64) :=
.seq body3_48 body3_55

def body3_57 : WordLangProgHOL (BitVec 64) :=
.seq body3_47 body3_56

def body3_58 : WordLangProgHOL (BitVec 64) :=
.seq body3_46 body3_57

def body3_59 : WordLangProgHOL (BitVec 64) :=
.seq body3_58 body3_25

def body3_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 285 Flapjack.WordStore.heapLength

def body3_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 289 285 (Flapjack.WordRegImm.imm 1#64)))

def body3_62 : WordLangProgHOL (BitVec 64) :=
.seq body3_60 body3_61

def body3_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 293 289

def body3_64 : WordLangProgHOL (BitVec 64) :=
.seq body3_62 body3_63

def body3_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 297 (Flapjack.WordLangAddr.addr 293 18446744073709551248#64))

def body3_66 : WordLangProgHOL (BitVec 64) :=
.seq body3_64 body3_65

def body3_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 301 297 (Flapjack.WordRegImm.imm 96#64)))

def body3_68 : WordLangProgHOL (BitVec 64) :=
.seq body3_66 body3_67

def body3_69 : WordLangProgHOL (BitVec 64) :=
.seq body3_59 body3_68

def body3_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(305, 245)]

def body3_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 309 Flapjack.WordStore.heapLength

def body3_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 313 309 (Flapjack.WordRegImm.imm 1#64)))

def body3_73 : WordLangProgHOL (BitVec 64) :=
.seq body3_71 body3_72

def body3_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 317 313

def body3_75 : WordLangProgHOL (BitVec 64) :=
.seq body3_73 body3_74

def body3_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 321 (Flapjack.WordLangAddr.addr 317 18446744073709551248#64))

def body3_77 : WordLangProgHOL (BitVec 64) :=
.seq body3_75 body3_76

def body3_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 325 (Flapjack.WordLangAddr.addr 321 96#64))

def body3_79 : WordLangProgHOL (BitVec 64) :=
.seq body3_77 body3_78

def body3_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 329 305 (Flapjack.WordRegImm.reg 325)))

def body3_81 : WordLangProgHOL (BitVec 64) :=
.seq body3_79 body3_80

def body3_82 : WordLangProgHOL (BitVec 64) :=
.seq body3_70 body3_81

def body3_83 : WordLangProgHOL (BitVec 64) :=
.seq body3_69 body3_82

def body3_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(333, 329)]

def body3_85 : WordLangProgHOL (BitVec 64) :=
.seq body3_83 body3_84

def body3_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(337, 301)]

def body3_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 333 (Flapjack.WordLangAddr.addr 337 0#64))

def body3_88 : WordLangProgHOL (BitVec 64) :=
.seq body3_86 body3_87

def body3_89 : WordLangProgHOL (BitVec 64) :=
.seq body3_85 body3_88

def body3_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 341 Flapjack.WordStore.heapLength

def body3_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 345 341 (Flapjack.WordRegImm.imm 1#64)))

def body3_92 : WordLangProgHOL (BitVec 64) :=
.seq body3_90 body3_91

def body3_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 349 345

def body3_94 : WordLangProgHOL (BitVec 64) :=
.seq body3_92 body3_93

def body3_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 353 (Flapjack.WordLangAddr.addr 349 18446744073709551248#64))

def body3_96 : WordLangProgHOL (BitVec 64) :=
.seq body3_94 body3_95

def body3_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 357 353 (Flapjack.WordRegImm.imm 104#64)))

def body3_98 : WordLangProgHOL (BitVec 64) :=
.seq body3_96 body3_97

def body3_99 : WordLangProgHOL (BitVec 64) :=
.seq body3_89 body3_98

def body3_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(361, 261)]

def body3_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 365 Flapjack.WordStore.heapLength

def body3_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 369 365 (Flapjack.WordRegImm.imm 1#64)))

def body3_103 : WordLangProgHOL (BitVec 64) :=
.seq body3_101 body3_102

def body3_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 373 369

def body3_105 : WordLangProgHOL (BitVec 64) :=
.seq body3_103 body3_104

def body3_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 377 (Flapjack.WordLangAddr.addr 373 18446744073709551248#64))

def body3_107 : WordLangProgHOL (BitVec 64) :=
.seq body3_105 body3_106

def body3_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 381 (Flapjack.WordLangAddr.addr 377 104#64))

def body3_109 : WordLangProgHOL (BitVec 64) :=
.seq body3_107 body3_108

def body3_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 385 361 (Flapjack.WordRegImm.reg 381)))

def body3_111 : WordLangProgHOL (BitVec 64) :=
.seq body3_109 body3_110

def body3_112 : WordLangProgHOL (BitVec 64) :=
.seq body3_100 body3_111

def body3_113 : WordLangProgHOL (BitVec 64) :=
.seq body3_99 body3_112

def body3_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(389, 385)]

def body3_115 : WordLangProgHOL (BitVec 64) :=
.seq body3_113 body3_114

def body3_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(393, 357)]

def body3_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 389 (Flapjack.WordLangAddr.addr 393 0#64))

def body3_118 : WordLangProgHOL (BitVec 64) :=
.seq body3_116 body3_117

def body3_119 : WordLangProgHOL (BitVec 64) :=
.seq body3_115 body3_118

def body3_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(397, 253)]

def body3_121 : WordLangProgHOL (BitVec 64) :=
.seq body3_119 body3_120

def body3_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 401 0#64)

def body3_123 : WordLangProgHOL (BitVec 64) :=
.seq body3_121 body3_122

def body3_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 413 Flapjack.WordStore.heapLength

def body3_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 417 413 (Flapjack.WordRegImm.imm 1#64)))

def body3_126 : WordLangProgHOL (BitVec 64) :=
.seq body3_124 body3_125

def body3_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 421 417

def body3_128 : WordLangProgHOL (BitVec 64) :=
.seq body3_126 body3_127

def body3_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 425 (Flapjack.WordLangAddr.addr 421 18446744073709551248#64))

def body3_130 : WordLangProgHOL (BitVec 64) :=
.seq body3_128 body3_129

def body3_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 429 425 (Flapjack.WordRegImm.imm 112#64)))

def body3_132 : WordLangProgHOL (BitVec 64) :=
.seq body3_130 body3_131

def body3_133 : WordLangProgHOL (BitVec 64) :=
.seq body3_25 body3_132

def body3_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 433 Flapjack.WordStore.heapLength

def body3_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 437 433 (Flapjack.WordRegImm.imm 1#64)))

def body3_136 : WordLangProgHOL (BitVec 64) :=
.seq body3_134 body3_135

def body3_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 441 437

def body3_138 : WordLangProgHOL (BitVec 64) :=
.seq body3_136 body3_137

def body3_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 445 (Flapjack.WordLangAddr.addr 441 18446744073709551248#64))

def body3_140 : WordLangProgHOL (BitVec 64) :=
.seq body3_138 body3_139

def body3_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 449 (Flapjack.WordLangAddr.addr 445 112#64))

def body3_142 : WordLangProgHOL (BitVec 64) :=
.seq body3_140 body3_141

def body3_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 453 449 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def body3_144 : WordLangProgHOL (BitVec 64) :=
.seq body3_142 body3_143

def body3_145 : WordLangProgHOL (BitVec 64) :=
.seq body3_133 body3_144

def body3_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(457, 453)]

def body3_147 : WordLangProgHOL (BitVec 64) :=
.seq body3_145 body3_146

def body3_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(461, 429)]

def body3_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 457 (Flapjack.WordLangAddr.addr 461 0#64))

def body3_150 : WordLangProgHOL (BitVec 64) :=
.seq body3_148 body3_149

def body3_151 : WordLangProgHOL (BitVec 64) :=
.seq body3_147 body3_150

def body3_152 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 397 (Flapjack.WordRegImm.reg 401) body3_151 body3_25

def body3_153 : WordLangProgHOL (BitVec 64) :=
.seq body3_123 body3_152

def body3_154 : WordLangProgHOL (BitVec 64) :=
.seq body3_153 body3_25

def body3_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 493 Flapjack.WordStore.heapLength

def body3_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 497 493 (Flapjack.WordRegImm.imm 1#64)))

def body3_157 : WordLangProgHOL (BitVec 64) :=
.seq body3_155 body3_156

def body3_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 501 497

def body3_159 : WordLangProgHOL (BitVec 64) :=
.seq body3_157 body3_158

def body3_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 505 (Flapjack.WordLangAddr.addr 501 18446744073709551240#64))

def body3_161 : WordLangProgHOL (BitVec 64) :=
.seq body3_159 body3_160

def body3_162 : WordLangProgHOL (BitVec 64) :=
.seq body3_154 body3_161

def body3_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(509, 265)]

def body3_164 : WordLangProgHOL (BitVec 64) :=
.seq body3_162 body3_163

def body3_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 517 128#64)

def body3_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(523, 241), (527, 305), (531, 249), (535, 397), (539, 257), (543, 361), (547, 509)]

def body3_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 505), (4, 509), (6, 517)]

def body3_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(553, 523), (557, 527), (561, 531), (565, 535), (569, 539), (573, 543), (577, 547)]

def body3_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(585, 2)]

def body3_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 585)]

def body3_171 : WordLangProgHOL (BitVec 64) :=
.seq body3_170 body3_17

def body3_172 : WordLangProgHOL (BitVec 64) :=
.seq body3_169 body3_171

def body3_173 : WordLangProgHOL (BitVec 64) :=
.seq body3_168 body3_172

def body3_174 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body3_168, 635, 6)) (some 77) ([2, 4, 6]) (some (2, body3_173, 635, 7))

def body3_175 : WordLangProgHOL (BitVec 64) :=
.seq body3_167 body3_174

def body3_176 : WordLangProgHOL (BitVec 64) :=
.seq body3_166 body3_175

def body3_177 : WordLangProgHOL (BitVec 64) :=
.seq body3_165 body3_176

def body3_178 : WordLangProgHOL (BitVec 64) :=
.seq body3_164 body3_177

def body3_179 : WordLangProgHOL (BitVec 64) :=
.seq body3_178 body3_25

def body3_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 597 0#64)

def body3_181 : WordLangProgHOL (BitVec 64) :=
.seq body3_179 body3_180

def body3_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 601 0#64)

def body3_183 : WordLangProgHOL (BitVec 64) :=
.seq body3_181 body3_182

def body3_184 : WordLangProgHOL (BitVec 64) :=
.seq body3_183 body3_25

def body3_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(605, 553), (609, 557), (613, 561), (617, 565), (621, 569), (625, 573), (629, 597), (633, 577), (637, 601)]

def body3_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(641, 629)]

def body3_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(645, 621)]

def body3_188 : WordLangProgHOL (BitVec 64) :=
.seq body3_186 body3_187

def body3_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 657 Flapjack.WordStore.heapLength

def body3_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 661 657 (Flapjack.WordRegImm.imm 1#64)))

def body3_191 : WordLangProgHOL (BitVec 64) :=
.seq body3_189 body3_190

def body3_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 665 661

def body3_193 : WordLangProgHOL (BitVec 64) :=
.seq body3_191 body3_192

def body3_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 669 (Flapjack.WordLangAddr.addr 665 18446744073709551232#64))

def body3_195 : WordLangProgHOL (BitVec 64) :=
.seq body3_193 body3_194

def body3_196 : WordLangProgHOL (BitVec 64) :=
.seq body3_25 body3_195

def body3_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(673, 637)]

def body3_198 : WordLangProgHOL (BitVec 64) :=
.seq body3_196 body3_197

def body3_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(677, 673)]

def body3_200 : WordLangProgHOL (BitVec 64) :=
.seq body3_198 body3_199

def body3_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(681, 669)]

def body3_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 677 (Flapjack.WordLangAddr.addr 681 0#64))

def body3_203 : WordLangProgHOL (BitVec 64) :=
.seq body3_201 body3_202

def body3_204 : WordLangProgHOL (BitVec 64) :=
.seq body3_200 body3_203

def body3_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 685 Flapjack.WordStore.heapLength

def body3_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 689 685 (Flapjack.WordRegImm.imm 1#64)))

def body3_207 : WordLangProgHOL (BitVec 64) :=
.seq body3_205 body3_206

def body3_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 693 689

def body3_209 : WordLangProgHOL (BitVec 64) :=
.seq body3_207 body3_208

def body3_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 697 (Flapjack.WordLangAddr.addr 693 18446744073709551232#64))

def body3_211 : WordLangProgHOL (BitVec 64) :=
.seq body3_209 body3_210

def body3_212 : WordLangProgHOL (BitVec 64) :=
.seq body3_204 body3_211

def body3_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 705 Flapjack.WordStore.heapLength

def body3_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 709 705 (Flapjack.WordRegImm.imm 1#64)))

def body3_215 : WordLangProgHOL (BitVec 64) :=
.seq body3_213 body3_214

def body3_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 713 709

def body3_217 : WordLangProgHOL (BitVec 64) :=
.seq body3_215 body3_216

def body3_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 717 (Flapjack.WordLangAddr.addr 713 18446744073709551232#64))

def body3_219 : WordLangProgHOL (BitVec 64) :=
.seq body3_217 body3_218

def body3_220 : WordLangProgHOL (BitVec 64) :=
.seq body3_212 body3_219

def body3_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 733 264#64)

def body3_222 : WordLangProgHOL (BitVec 64) :=
.seq body3_220 body3_221

def body3_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 737 0#64)

def body3_224 : WordLangProgHOL (BitVec 64) :=
.seq body3_222 body3_223

def body3_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(743, 605), (747, 609), (751, 613), (755, 617), (759, 645), (763, 625), (767, 641), (771, 633), (775, 673)]

def body3_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 697), (4, 737), (6, 717), (8, 733)]

def body3_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.ffi
  (Flapjack.Basis.Pure.MlString.MlString.implode
    [98#8, 108#8, 97#8, 107#8, 101#8, 50#8, 98#8, 114#8, 111#8, 117#8, 110#8, 100#8])
  2 4 6 8
  (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))))),
    Flapjack.Spt.ln)

def body3_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(781, 743), (785, 747), (789, 751), (793, 755), (797, 759), (801, 763), (805, 767), (809, 771), (813, 775)]

def body3_229 : WordLangProgHOL (BitVec 64) :=
.seq body3_227 body3_228

def body3_230 : WordLangProgHOL (BitVec 64) :=
.seq body3_226 body3_229

def body3_231 : WordLangProgHOL (BitVec 64) :=
.seq body3_225 body3_230

def body3_232 : WordLangProgHOL (BitVec 64) :=
.seq body3_224 body3_231

def body3_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(817, 805)]

def body3_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 821 817 (Flapjack.WordRegImm.imm 1#64)))

def body3_235 : WordLangProgHOL (BitVec 64) :=
.seq body3_233 body3_234

def body3_236 : WordLangProgHOL (BitVec 64) :=
.seq body3_232 body3_235

def body3_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(825, 821)]

def body3_238 : WordLangProgHOL (BitVec 64) :=
.seq body3_236 body3_237

def body3_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(829, 813)]

def body3_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 833 829 (Flapjack.WordRegImm.imm 1#64)))

def body3_241 : WordLangProgHOL (BitVec 64) :=
.seq body3_239 body3_240

def body3_242 : WordLangProgHOL (BitVec 64) :=
.seq body3_238 body3_241

def body3_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(837, 833)]

def body3_244 : WordLangProgHOL (BitVec 64) :=
.seq body3_242 body3_243

def body3_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(841, 837)]

def body3_246 : WordLangProgHOL (BitVec 64) :=
.seq body3_244 body3_245

def body3_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 845 10#64)

def body3_248 : WordLangProgHOL (BitVec 64) :=
.seq body3_246 body3_247

def body3_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 857 0#64)

def body3_250 : WordLangProgHOL (BitVec 64) :=
.seq body3_25 body3_249

def body3_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(869, 857)]

def body3_252 : WordLangProgHOL (BitVec 64) :=
.seq body3_250 body3_251

def body3_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(869, 841)]

def body3_254 : WordLangProgHOL (BitVec 64) :=
.seq body3_25 body3_253

def body3_255 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 841 (Flapjack.WordRegImm.reg 845) body3_252 body3_254

def body3_256 : WordLangProgHOL (BitVec 64) :=
.seq body3_248 body3_255

def body3_257 : WordLangProgHOL (BitVec 64) :=
.seq body3_256 body3_25

def body3_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(605, 781), (609, 785), (613, 789), (617, 793), (621, 797), (625, 801), (629, 825), (633, 809), (637, 869)]

def body3_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body3_260 : WordLangProgHOL (BitVec 64) :=
.seq body3_258 body3_259

def body3_261 : WordLangProgHOL (BitVec 64) :=
.seq body3_257 body3_260

def body3_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(933, 781), (925, 785), (917, 789), (913, 793), (909, 797), (901, 801), (897, 825), (893, 809), (889, 869)]

def body3_263 : WordLangProgHOL (BitVec 64) :=
.seq body3_261 body3_262

def body3_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(621, 645), (629, 641)]

def body3_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body3_266 : WordLangProgHOL (BitVec 64) :=
.seq body3_264 body3_265

def body3_267 : WordLangProgHOL (BitVec 64) :=
.seq body3_25 body3_266

def body3_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(933, 605), (925, 609), (917, 613), (913, 617), (909, 645), (901, 625), (897, 641), (893, 633), (889, 637)]

def body3_269 : WordLangProgHOL (BitVec 64) :=
.seq body3_267 body3_268

def body3_270 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 641 (Flapjack.WordRegImm.reg 645) body3_263 body3_269

def body3_271 : WordLangProgHOL (BitVec 64) :=
.seq body3_188 body3_270

def body3_272 : WordLangProgHOL (BitVec 64) :=
.seq body3_271 body3_25

def body3_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(605, 933), (609, 925), (613, 917), (617, 913), (621, 909), (625, 901), (629, 897), (633, 893), (637, 889)]

def body3_274 : WordLangProgHOL (BitVec 64) :=
.seq body3_272 body3_273

def body3_275 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)) body3_274 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln))

def body3_276 : WordLangProgHOL (BitVec 64) :=
.seq body3_185 body3_275

def body3_277 : WordLangProgHOL (BitVec 64) :=
.seq body3_184 body3_276

def body3_278 : WordLangProgHOL (BitVec 64) :=
.seq body3_277 body3_25

def body3_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 945 0#64)

def body3_280 : WordLangProgHOL (BitVec 64) :=
.seq body3_278 body3_279

def body3_281 : WordLangProgHOL (BitVec 64) :=
.seq body3_280 body3_25

def body3_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(949, 605), (953, 609), (957, 613), (961, 945), (965, 617), (969, 621), (973, 625), (977, 629), (981, 633),
    (985, 637)]

def body3_283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(989, 961)]

def body3_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 993 8#64)

def body3_285 : WordLangProgHOL (BitVec 64) :=
.seq body3_283 body3_284

def body3_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1005, 989)]

def body3_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1009 1005 (Flapjack.WordRegImm.imm 3#64)))

def body3_288 : WordLangProgHOL (BitVec 64) :=
.seq body3_286 body3_287

def body3_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1013, 957)]

def body3_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1017 1009 (Flapjack.WordRegImm.reg 1013)))

def body3_291 : WordLangProgHOL (BitVec 64) :=
.seq body3_289 body3_290

def body3_292 : WordLangProgHOL (BitVec 64) :=
.seq body3_288 body3_291

def body3_293 : WordLangProgHOL (BitVec 64) :=
.seq body3_25 body3_292

def body3_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1021, 1005)]

def body3_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1025 1021 (Flapjack.WordRegImm.imm 8#64)))

def body3_296 : WordLangProgHOL (BitVec 64) :=
.seq body3_294 body3_295

def body3_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1029 1025 (Flapjack.WordRegImm.imm 3#64)))

def body3_298 : WordLangProgHOL (BitVec 64) :=
.seq body3_296 body3_297

def body3_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 1033 Flapjack.WordStore.heapLength

def body3_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1037 1033 (Flapjack.WordRegImm.imm 1#64)))

def body3_301 : WordLangProgHOL (BitVec 64) :=
.seq body3_299 body3_300

def body3_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1041 1037

def body3_303 : WordLangProgHOL (BitVec 64) :=
.seq body3_301 body3_302

def body3_304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1045 (Flapjack.WordLangAddr.addr 1041 18446744073709551248#64))

def body3_305 : WordLangProgHOL (BitVec 64) :=
.seq body3_303 body3_304

def body3_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1049 1029 (Flapjack.WordRegImm.reg 1045)))

def body3_307 : WordLangProgHOL (BitVec 64) :=
.seq body3_305 body3_306

def body3_308 : WordLangProgHOL (BitVec 64) :=
.seq body3_298 body3_307

def body3_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1053 (Flapjack.WordLangAddr.addr 1049 0#64))

def body3_310 : WordLangProgHOL (BitVec 64) :=
.seq body3_308 body3_309

def body3_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1057, 1021)]

def body3_312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1061 1057 (Flapjack.WordRegImm.imm 3#64)))

def body3_313 : WordLangProgHOL (BitVec 64) :=
.seq body3_311 body3_312

def body3_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 1065 Flapjack.WordStore.heapLength

def body3_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1069 1065 (Flapjack.WordRegImm.imm 1#64)))

def body3_316 : WordLangProgHOL (BitVec 64) :=
.seq body3_314 body3_315

def body3_317 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1073 1069

def body3_318 : WordLangProgHOL (BitVec 64) :=
.seq body3_316 body3_317

def body3_319 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1077 (Flapjack.WordLangAddr.addr 1073 18446744073709551248#64))

def body3_320 : WordLangProgHOL (BitVec 64) :=
.seq body3_318 body3_319

def body3_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1081 1061 (Flapjack.WordRegImm.reg 1077)))

def body3_322 : WordLangProgHOL (BitVec 64) :=
.seq body3_320 body3_321

def body3_323 : WordLangProgHOL (BitVec 64) :=
.seq body3_313 body3_322

def body3_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1085 (Flapjack.WordLangAddr.addr 1081 0#64))

def body3_325 : WordLangProgHOL (BitVec 64) :=
.seq body3_323 body3_324

def body3_326 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 1089 1053 (Flapjack.WordRegImm.reg 1085)))

def body3_327 : WordLangProgHOL (BitVec 64) :=
.seq body3_325 body3_326

def body3_328 : WordLangProgHOL (BitVec 64) :=
.seq body3_310 body3_327

def body3_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1093, 1057)]

def body3_330 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1097 1093 (Flapjack.WordRegImm.imm 3#64)))

def body3_331 : WordLangProgHOL (BitVec 64) :=
.seq body3_329 body3_330

def body3_332 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1101, 1013)]

def body3_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1105 1097 (Flapjack.WordRegImm.reg 1101)))

def body3_334 : WordLangProgHOL (BitVec 64) :=
.seq body3_332 body3_333

def body3_335 : WordLangProgHOL (BitVec 64) :=
.seq body3_331 body3_334

def body3_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1109 (Flapjack.WordLangAddr.addr 1105 0#64))

def body3_337 : WordLangProgHOL (BitVec 64) :=
.seq body3_335 body3_336

def body3_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 1113 1089 (Flapjack.WordRegImm.reg 1109)))

def body3_339 : WordLangProgHOL (BitVec 64) :=
.seq body3_337 body3_338

def body3_340 : WordLangProgHOL (BitVec 64) :=
.seq body3_328 body3_339

def body3_341 : WordLangProgHOL (BitVec 64) :=
.seq body3_293 body3_340

def body3_342 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1117, 1113)]

def body3_343 : WordLangProgHOL (BitVec 64) :=
.seq body3_341 body3_342

def body3_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1121, 1017)]

def body3_345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1117 (Flapjack.WordLangAddr.addr 1121 0#64))

def body3_346 : WordLangProgHOL (BitVec 64) :=
.seq body3_344 body3_345

def body3_347 : WordLangProgHOL (BitVec 64) :=
.seq body3_343 body3_346

def body3_348 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1125, 1093)]

def body3_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1129 1125 (Flapjack.WordRegImm.imm 1#64)))

def body3_350 : WordLangProgHOL (BitVec 64) :=
.seq body3_348 body3_349

def body3_351 : WordLangProgHOL (BitVec 64) :=
.seq body3_347 body3_350

def body3_352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1133, 1129)]

def body3_353 : WordLangProgHOL (BitVec 64) :=
.seq body3_351 body3_352

def body3_354 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(957, 1101), (961, 1133)]

def body3_355 : WordLangProgHOL (BitVec 64) :=
.seq body3_354 body3_259

def body3_356 : WordLangProgHOL (BitVec 64) :=
.seq body3_353 body3_355

def body3_357 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1153, 1101), (1149, 1133)]

def body3_358 : WordLangProgHOL (BitVec 64) :=
.seq body3_356 body3_357

def body3_359 : WordLangProgHOL (BitVec 64) :=
.seq body3_25 body3_265

def body3_360 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1153, 957), (1149, 989)]

def body3_361 : WordLangProgHOL (BitVec 64) :=
.seq body3_359 body3_360

def body3_362 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 989 (Flapjack.WordRegImm.reg 993) body3_358 body3_361

def body3_363 : WordLangProgHOL (BitVec 64) :=
.seq body3_285 body3_362

def body3_364 : WordLangProgHOL (BitVec 64) :=
.seq body3_363 body3_25

def body3_365 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(957, 1153), (961, 1149)]

def body3_366 : WordLangProgHOL (BitVec 64) :=
.seq body3_364 body3_365

def body3_367 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)) body3_366 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln))

def body3_368 : WordLangProgHOL (BitVec 64) :=
.seq body3_282 body3_367

def body3_369 : WordLangProgHOL (BitVec 64) :=
.seq body3_281 body3_368

def body3_370 : WordLangProgHOL (BitVec 64) :=
.seq body3_369 body3_25

def body3_371 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1181 0#64)

def body3_372 : WordLangProgHOL (BitVec 64) :=
.seq body3_370 body3_371

def body3_373 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 1181)]

def body3_374 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 949 [2]

def body3_375 : WordLangProgHOL (BitVec 64) :=
.seq body3_373 body3_374

def body3_376 : WordLangProgHOL (BitVec 64) :=
.seq body3_372 body3_375

def body3_377 : WordLangProgHOL (BitVec 64) :=
.seq body3_0 body3_376

def pass3 : WordLangProgHOL (BitVec 64) := body3_377
def body4_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(33, 0), (37, 2), (41, 4), (45, 6), (49, 8), (53, 10), (57, 12)]

def body4_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 61 Flapjack.WordStore.heapLength

def body4_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 65 61 (Flapjack.WordRegImm.imm 1#64)))

def body4_3 : WordLangProgHOL (BitVec 64) :=
.seq body4_1 body4_2

def body4_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 69 65

def body4_5 : WordLangProgHOL (BitVec 64) :=
.seq body4_3 body4_4

def body4_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 73 (Flapjack.WordLangAddr.addr 69 18446744073709551248#64))

def body4_7 : WordLangProgHOL (BitVec 64) :=
.seq body4_5 body4_6

def body4_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 41)]

def body4_9 : WordLangProgHOL (BitVec 64) :=
.seq body4_7 body4_8

def body4_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 64#64)

def body4_11 : WordLangProgHOL (BitVec 64) :=
.seq body4_9 body4_10

def body4_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(91, 33), (95, 49), (99, 77), (103, 57), (107, 37), (111, 53), (115, 45)]

def body4_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 73), (4, 77), (6, 85)]

def body4_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(121, 91), (125, 95), (129, 99), (133, 103), (137, 107), (141, 111), (145, 115)]

def body4_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 2)]

def body4_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 153)]

def body4_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body4_18 : WordLangProgHOL (BitVec 64) :=
.seq body4_16 body4_17

def body4_19 : WordLangProgHOL (BitVec 64) :=
.seq body4_15 body4_18

def body4_20 : WordLangProgHOL (BitVec 64) :=
.seq body4_14 body4_19

def body4_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body4_14, 635, 2)) (some 77) ([2, 4, 6]) (some (2, body4_20, 635, 3))

def body4_22 : WordLangProgHOL (BitVec 64) :=
.seq body4_13 body4_21

def body4_23 : WordLangProgHOL (BitVec 64) :=
.seq body4_12 body4_22

def body4_24 : WordLangProgHOL (BitVec 64) :=
.seq body4_11 body4_23

def body4_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body4_26 : WordLangProgHOL (BitVec 64) :=
.seq body4_24 body4_25

def body4_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 165 Flapjack.WordStore.heapLength

def body4_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 169 165 (Flapjack.WordRegImm.imm 1#64)))

def body4_29 : WordLangProgHOL (BitVec 64) :=
.seq body4_27 body4_28

def body4_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 173 169

def body4_31 : WordLangProgHOL (BitVec 64) :=
.seq body4_29 body4_30

def body4_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 177 (Flapjack.WordLangAddr.addr 173 18446744073709551248#64))

def body4_33 : WordLangProgHOL (BitVec 64) :=
.seq body4_31 body4_32

def body4_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 181 177 (Flapjack.WordRegImm.imm 64#64)))

def body4_35 : WordLangProgHOL (BitVec 64) :=
.seq body4_33 body4_34

def body4_36 : WordLangProgHOL (BitVec 64) :=
.seq body4_26 body4_35

def body4_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(185, 165)]

def body4_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 169)]

def body4_39 : WordLangProgHOL (BitVec 64) :=
.seq body4_37 body4_38

def body4_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(193, 173)]

def body4_41 : WordLangProgHOL (BitVec 64) :=
.seq body4_39 body4_40

def body4_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 197 (Flapjack.WordLangAddr.addr 193 18446744073709551256#64))

def body4_43 : WordLangProgHOL (BitVec 64) :=
.seq body4_41 body4_42

def body4_44 : WordLangProgHOL (BitVec 64) :=
.seq body4_36 body4_43

def body4_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 205 64#64)

def body4_46 : WordLangProgHOL (BitVec 64) :=
.seq body4_44 body4_45

def body4_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(211, 121), (215, 125), (219, 129), (223, 133), (227, 137), (231, 141), (235, 145)]

def body4_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 181), (4, 197), (6, 205)]

def body4_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(241, 211), (245, 215), (249, 219), (253, 223), (257, 227), (261, 231), (265, 235)]

def body4_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 2)]

def body4_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 273)]

def body4_52 : WordLangProgHOL (BitVec 64) :=
.seq body4_51 body4_17

def body4_53 : WordLangProgHOL (BitVec 64) :=
.seq body4_50 body4_52

def body4_54 : WordLangProgHOL (BitVec 64) :=
.seq body4_49 body4_53

def body4_55 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body4_49, 635, 4)) (some 77) ([2, 4, 6]) (some (2, body4_54, 635, 5))

def body4_56 : WordLangProgHOL (BitVec 64) :=
.seq body4_48 body4_55

def body4_57 : WordLangProgHOL (BitVec 64) :=
.seq body4_47 body4_56

def body4_58 : WordLangProgHOL (BitVec 64) :=
.seq body4_46 body4_57

def body4_59 : WordLangProgHOL (BitVec 64) :=
.seq body4_58 body4_25

def body4_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 285 Flapjack.WordStore.heapLength

def body4_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 289 285 (Flapjack.WordRegImm.imm 1#64)))

def body4_62 : WordLangProgHOL (BitVec 64) :=
.seq body4_60 body4_61

def body4_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 293 289

def body4_64 : WordLangProgHOL (BitVec 64) :=
.seq body4_62 body4_63

def body4_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 297 (Flapjack.WordLangAddr.addr 293 18446744073709551248#64))

def body4_66 : WordLangProgHOL (BitVec 64) :=
.seq body4_64 body4_65

def body4_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 301 297 (Flapjack.WordRegImm.imm 96#64)))

def body4_68 : WordLangProgHOL (BitVec 64) :=
.seq body4_66 body4_67

def body4_69 : WordLangProgHOL (BitVec 64) :=
.seq body4_59 body4_68

def body4_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(305, 245)]

def body4_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(309, 285)]

def body4_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(313, 289)]

def body4_73 : WordLangProgHOL (BitVec 64) :=
.seq body4_71 body4_72

def body4_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(317, 293)]

def body4_75 : WordLangProgHOL (BitVec 64) :=
.seq body4_73 body4_74

def body4_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(321, 297)]

def body4_77 : WordLangProgHOL (BitVec 64) :=
.seq body4_75 body4_76

def body4_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 325 (Flapjack.WordLangAddr.addr 321 96#64))

def body4_79 : WordLangProgHOL (BitVec 64) :=
.seq body4_77 body4_78

def body4_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 329 305 (Flapjack.WordRegImm.reg 325)))

def body4_81 : WordLangProgHOL (BitVec 64) :=
.seq body4_79 body4_80

def body4_82 : WordLangProgHOL (BitVec 64) :=
.seq body4_70 body4_81

def body4_83 : WordLangProgHOL (BitVec 64) :=
.seq body4_69 body4_82

def body4_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(333, 329)]

def body4_85 : WordLangProgHOL (BitVec 64) :=
.seq body4_83 body4_84

def body4_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(337, 301)]

def body4_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 333 (Flapjack.WordLangAddr.addr 337 0#64))

def body4_88 : WordLangProgHOL (BitVec 64) :=
.seq body4_86 body4_87

def body4_89 : WordLangProgHOL (BitVec 64) :=
.seq body4_85 body4_88

def body4_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(341, 309)]

def body4_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 313)]

def body4_92 : WordLangProgHOL (BitVec 64) :=
.seq body4_90 body4_91

def body4_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(349, 317)]

def body4_94 : WordLangProgHOL (BitVec 64) :=
.seq body4_92 body4_93

def body4_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 353 (Flapjack.WordLangAddr.addr 349 18446744073709551248#64))

def body4_96 : WordLangProgHOL (BitVec 64) :=
.seq body4_94 body4_95

def body4_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 357 353 (Flapjack.WordRegImm.imm 104#64)))

def body4_98 : WordLangProgHOL (BitVec 64) :=
.seq body4_96 body4_97

def body4_99 : WordLangProgHOL (BitVec 64) :=
.seq body4_89 body4_98

def body4_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(361, 261)]

def body4_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(365, 341)]

def body4_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(369, 345)]

def body4_103 : WordLangProgHOL (BitVec 64) :=
.seq body4_101 body4_102

def body4_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(373, 349)]

def body4_105 : WordLangProgHOL (BitVec 64) :=
.seq body4_103 body4_104

def body4_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(377, 353)]

def body4_107 : WordLangProgHOL (BitVec 64) :=
.seq body4_105 body4_106

def body4_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 381 (Flapjack.WordLangAddr.addr 377 104#64))

def body4_109 : WordLangProgHOL (BitVec 64) :=
.seq body4_107 body4_108

def body4_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 385 361 (Flapjack.WordRegImm.reg 381)))

def body4_111 : WordLangProgHOL (BitVec 64) :=
.seq body4_109 body4_110

def body4_112 : WordLangProgHOL (BitVec 64) :=
.seq body4_100 body4_111

def body4_113 : WordLangProgHOL (BitVec 64) :=
.seq body4_99 body4_112

def body4_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(389, 385)]

def body4_115 : WordLangProgHOL (BitVec 64) :=
.seq body4_113 body4_114

def body4_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(393, 357)]

def body4_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 389 (Flapjack.WordLangAddr.addr 393 0#64))

def body4_118 : WordLangProgHOL (BitVec 64) :=
.seq body4_116 body4_117

def body4_119 : WordLangProgHOL (BitVec 64) :=
.seq body4_115 body4_118

def body4_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(397, 253)]

def body4_121 : WordLangProgHOL (BitVec 64) :=
.seq body4_119 body4_120

def body4_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 401 0#64)

def body4_123 : WordLangProgHOL (BitVec 64) :=
.seq body4_121 body4_122

def body4_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(413, 365)]

def body4_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(417, 369)]

def body4_126 : WordLangProgHOL (BitVec 64) :=
.seq body4_124 body4_125

def body4_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(421, 373)]

def body4_128 : WordLangProgHOL (BitVec 64) :=
.seq body4_126 body4_127

def body4_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 425 (Flapjack.WordLangAddr.addr 421 18446744073709551248#64))

def body4_130 : WordLangProgHOL (BitVec 64) :=
.seq body4_128 body4_129

def body4_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 429 425 (Flapjack.WordRegImm.imm 112#64)))

def body4_132 : WordLangProgHOL (BitVec 64) :=
.seq body4_130 body4_131

def body4_133 : WordLangProgHOL (BitVec 64) :=
.seq body4_25 body4_132

def body4_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(433, 413)]

def body4_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(437, 417)]

def body4_136 : WordLangProgHOL (BitVec 64) :=
.seq body4_134 body4_135

def body4_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(441, 421)]

def body4_138 : WordLangProgHOL (BitVec 64) :=
.seq body4_136 body4_137

def body4_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(445, 425)]

def body4_140 : WordLangProgHOL (BitVec 64) :=
.seq body4_138 body4_139

def body4_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 449 (Flapjack.WordLangAddr.addr 445 112#64))

def body4_142 : WordLangProgHOL (BitVec 64) :=
.seq body4_140 body4_141

def body4_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 453 449 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def body4_144 : WordLangProgHOL (BitVec 64) :=
.seq body4_142 body4_143

def body4_145 : WordLangProgHOL (BitVec 64) :=
.seq body4_133 body4_144

def body4_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(457, 453)]

def body4_147 : WordLangProgHOL (BitVec 64) :=
.seq body4_145 body4_146

def body4_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(461, 429)]

def body4_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 457 (Flapjack.WordLangAddr.addr 461 0#64))

def body4_150 : WordLangProgHOL (BitVec 64) :=
.seq body4_148 body4_149

def body4_151 : WordLangProgHOL (BitVec 64) :=
.seq body4_147 body4_150

def body4_152 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 397 (Flapjack.WordRegImm.reg 401) body4_151 body4_25

def body4_153 : WordLangProgHOL (BitVec 64) :=
.seq body4_123 body4_152

def body4_154 : WordLangProgHOL (BitVec 64) :=
.seq body4_153 body4_25

def body4_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(493, 285)]

def body4_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(497, 289)]

def body4_157 : WordLangProgHOL (BitVec 64) :=
.seq body4_155 body4_156

def body4_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(501, 293)]

def body4_159 : WordLangProgHOL (BitVec 64) :=
.seq body4_157 body4_158

def body4_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 505 (Flapjack.WordLangAddr.addr 501 18446744073709551240#64))

def body4_161 : WordLangProgHOL (BitVec 64) :=
.seq body4_159 body4_160

def body4_162 : WordLangProgHOL (BitVec 64) :=
.seq body4_154 body4_161

def body4_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(509, 265)]

def body4_164 : WordLangProgHOL (BitVec 64) :=
.seq body4_162 body4_163

def body4_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 517 128#64)

def body4_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(523, 241), (527, 305), (531, 249), (535, 397), (539, 257), (543, 361), (547, 509)]

def body4_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 505), (4, 509), (6, 517)]

def body4_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(553, 523), (557, 527), (561, 531), (565, 535), (569, 539), (573, 543), (577, 547)]

def body4_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(585, 2)]

def body4_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 585)]

def body4_171 : WordLangProgHOL (BitVec 64) :=
.seq body4_170 body4_17

def body4_172 : WordLangProgHOL (BitVec 64) :=
.seq body4_169 body4_171

def body4_173 : WordLangProgHOL (BitVec 64) :=
.seq body4_168 body4_172

def body4_174 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body4_168, 635, 6)) (some 77) ([2, 4, 6]) (some (2, body4_173, 635, 7))

def body4_175 : WordLangProgHOL (BitVec 64) :=
.seq body4_167 body4_174

def body4_176 : WordLangProgHOL (BitVec 64) :=
.seq body4_166 body4_175

def body4_177 : WordLangProgHOL (BitVec 64) :=
.seq body4_165 body4_176

def body4_178 : WordLangProgHOL (BitVec 64) :=
.seq body4_164 body4_177

def body4_179 : WordLangProgHOL (BitVec 64) :=
.seq body4_178 body4_25

def body4_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 597 0#64)

def body4_181 : WordLangProgHOL (BitVec 64) :=
.seq body4_179 body4_180

def body4_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 601 0#64)

def body4_183 : WordLangProgHOL (BitVec 64) :=
.seq body4_181 body4_182

def body4_184 : WordLangProgHOL (BitVec 64) :=
.seq body4_183 body4_25

def body4_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(605, 553), (609, 557), (613, 561), (617, 565), (621, 569), (625, 573), (629, 597), (633, 577), (637, 601)]

def body4_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(641, 629)]

def body4_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(645, 621)]

def body4_188 : WordLangProgHOL (BitVec 64) :=
.seq body4_186 body4_187

def body4_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 657 Flapjack.WordStore.heapLength

def body4_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 661 657 (Flapjack.WordRegImm.imm 1#64)))

def body4_191 : WordLangProgHOL (BitVec 64) :=
.seq body4_189 body4_190

def body4_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 665 661

def body4_193 : WordLangProgHOL (BitVec 64) :=
.seq body4_191 body4_192

def body4_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 669 (Flapjack.WordLangAddr.addr 665 18446744073709551232#64))

def body4_195 : WordLangProgHOL (BitVec 64) :=
.seq body4_193 body4_194

def body4_196 : WordLangProgHOL (BitVec 64) :=
.seq body4_25 body4_195

def body4_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(673, 637)]

def body4_198 : WordLangProgHOL (BitVec 64) :=
.seq body4_196 body4_197

def body4_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(677, 673)]

def body4_200 : WordLangProgHOL (BitVec 64) :=
.seq body4_198 body4_199

def body4_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(681, 669)]

def body4_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 677 (Flapjack.WordLangAddr.addr 681 0#64))

def body4_203 : WordLangProgHOL (BitVec 64) :=
.seq body4_201 body4_202

def body4_204 : WordLangProgHOL (BitVec 64) :=
.seq body4_200 body4_203

def body4_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(685, 657)]

def body4_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(689, 661)]

def body4_207 : WordLangProgHOL (BitVec 64) :=
.seq body4_205 body4_206

def body4_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(693, 665)]

def body4_209 : WordLangProgHOL (BitVec 64) :=
.seq body4_207 body4_208

def body4_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 697 (Flapjack.WordLangAddr.addr 693 18446744073709551232#64))

def body4_211 : WordLangProgHOL (BitVec 64) :=
.seq body4_209 body4_210

def body4_212 : WordLangProgHOL (BitVec 64) :=
.seq body4_204 body4_211

def body4_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(705, 685)]

def body4_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(709, 689)]

def body4_215 : WordLangProgHOL (BitVec 64) :=
.seq body4_213 body4_214

def body4_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(713, 693)]

def body4_217 : WordLangProgHOL (BitVec 64) :=
.seq body4_215 body4_216

def body4_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(717, 697)]

def body4_219 : WordLangProgHOL (BitVec 64) :=
.seq body4_217 body4_218

def body4_220 : WordLangProgHOL (BitVec 64) :=
.seq body4_212 body4_219

def body4_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 733 264#64)

def body4_222 : WordLangProgHOL (BitVec 64) :=
.seq body4_220 body4_221

def body4_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 737 0#64)

def body4_224 : WordLangProgHOL (BitVec 64) :=
.seq body4_222 body4_223

def body4_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(743, 605), (747, 609), (751, 613), (755, 617), (759, 645), (763, 625), (767, 641), (771, 633), (775, 673)]

def body4_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 697), (4, 737), (6, 717), (8, 733)]

def body4_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.ffi
  (Flapjack.Basis.Pure.MlString.MlString.implode
    [98#8, 108#8, 97#8, 107#8, 101#8, 50#8, 98#8, 114#8, 111#8, 117#8, 110#8, 100#8])
  2 4 6 8
  (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))))),
    Flapjack.Spt.ln)

def body4_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(781, 743), (785, 747), (789, 751), (793, 755), (797, 759), (801, 763), (805, 767), (809, 771), (813, 775)]

def body4_229 : WordLangProgHOL (BitVec 64) :=
.seq body4_227 body4_228

def body4_230 : WordLangProgHOL (BitVec 64) :=
.seq body4_226 body4_229

def body4_231 : WordLangProgHOL (BitVec 64) :=
.seq body4_225 body4_230

def body4_232 : WordLangProgHOL (BitVec 64) :=
.seq body4_224 body4_231

def body4_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(817, 805)]

def body4_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 821 817 (Flapjack.WordRegImm.imm 1#64)))

def body4_235 : WordLangProgHOL (BitVec 64) :=
.seq body4_233 body4_234

def body4_236 : WordLangProgHOL (BitVec 64) :=
.seq body4_232 body4_235

def body4_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(825, 821)]

def body4_238 : WordLangProgHOL (BitVec 64) :=
.seq body4_236 body4_237

def body4_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(829, 813)]

def body4_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 833 829 (Flapjack.WordRegImm.imm 1#64)))

def body4_241 : WordLangProgHOL (BitVec 64) :=
.seq body4_239 body4_240

def body4_242 : WordLangProgHOL (BitVec 64) :=
.seq body4_238 body4_241

def body4_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(837, 833)]

def body4_244 : WordLangProgHOL (BitVec 64) :=
.seq body4_242 body4_243

def body4_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(841, 837)]

def body4_246 : WordLangProgHOL (BitVec 64) :=
.seq body4_244 body4_245

def body4_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 845 10#64)

def body4_248 : WordLangProgHOL (BitVec 64) :=
.seq body4_246 body4_247

def body4_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 857 0#64)

def body4_250 : WordLangProgHOL (BitVec 64) :=
.seq body4_25 body4_249

def body4_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(869, 857)]

def body4_252 : WordLangProgHOL (BitVec 64) :=
.seq body4_250 body4_251

def body4_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(869, 841)]

def body4_254 : WordLangProgHOL (BitVec 64) :=
.seq body4_25 body4_253

def body4_255 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 841 (Flapjack.WordRegImm.reg 845) body4_252 body4_254

def body4_256 : WordLangProgHOL (BitVec 64) :=
.seq body4_248 body4_255

def body4_257 : WordLangProgHOL (BitVec 64) :=
.seq body4_256 body4_25

def body4_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(605, 781), (609, 785), (613, 789), (617, 793), (621, 797), (625, 801), (629, 825), (633, 809), (637, 869)]

def body4_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body4_260 : WordLangProgHOL (BitVec 64) :=
.seq body4_258 body4_259

def body4_261 : WordLangProgHOL (BitVec 64) :=
.seq body4_257 body4_260

def body4_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(933, 781), (925, 785), (917, 789), (913, 793), (909, 797), (901, 801), (897, 825), (893, 809), (889, 869)]

def body4_263 : WordLangProgHOL (BitVec 64) :=
.seq body4_261 body4_262

def body4_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(621, 645), (629, 641)]

def body4_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body4_266 : WordLangProgHOL (BitVec 64) :=
.seq body4_264 body4_265

def body4_267 : WordLangProgHOL (BitVec 64) :=
.seq body4_25 body4_266

def body4_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(933, 605), (925, 609), (917, 613), (913, 617), (909, 645), (901, 625), (897, 641), (893, 633), (889, 637)]

def body4_269 : WordLangProgHOL (BitVec 64) :=
.seq body4_267 body4_268

def body4_270 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 641 (Flapjack.WordRegImm.reg 645) body4_263 body4_269

def body4_271 : WordLangProgHOL (BitVec 64) :=
.seq body4_188 body4_270

def body4_272 : WordLangProgHOL (BitVec 64) :=
.seq body4_271 body4_25

def body4_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(605, 933), (609, 925), (613, 917), (617, 913), (621, 909), (625, 901), (629, 897), (633, 893), (637, 889)]

def body4_274 : WordLangProgHOL (BitVec 64) :=
.seq body4_272 body4_273

def body4_275 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)) body4_274 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln))

def body4_276 : WordLangProgHOL (BitVec 64) :=
.seq body4_185 body4_275

def body4_277 : WordLangProgHOL (BitVec 64) :=
.seq body4_184 body4_276

def body4_278 : WordLangProgHOL (BitVec 64) :=
.seq body4_277 body4_25

def body4_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 945 0#64)

def body4_280 : WordLangProgHOL (BitVec 64) :=
.seq body4_278 body4_279

def body4_281 : WordLangProgHOL (BitVec 64) :=
.seq body4_280 body4_25

def body4_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(949, 605), (953, 609), (957, 613), (961, 945), (965, 617), (969, 621), (973, 625), (977, 629), (981, 633),
    (985, 637)]

def body4_283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(989, 961)]

def body4_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 993 8#64)

def body4_285 : WordLangProgHOL (BitVec 64) :=
.seq body4_283 body4_284

def body4_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1005, 989)]

def body4_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1009 1005 (Flapjack.WordRegImm.imm 3#64)))

def body4_288 : WordLangProgHOL (BitVec 64) :=
.seq body4_286 body4_287

def body4_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1013, 957)]

def body4_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1017 1009 (Flapjack.WordRegImm.reg 1013)))

def body4_291 : WordLangProgHOL (BitVec 64) :=
.seq body4_289 body4_290

def body4_292 : WordLangProgHOL (BitVec 64) :=
.seq body4_288 body4_291

def body4_293 : WordLangProgHOL (BitVec 64) :=
.seq body4_25 body4_292

def body4_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1021, 1005)]

def body4_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1025 1021 (Flapjack.WordRegImm.imm 8#64)))

def body4_296 : WordLangProgHOL (BitVec 64) :=
.seq body4_294 body4_295

def body4_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1029 1025 (Flapjack.WordRegImm.imm 3#64)))

def body4_298 : WordLangProgHOL (BitVec 64) :=
.seq body4_296 body4_297

def body4_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 1033 Flapjack.WordStore.heapLength

def body4_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1037 1033 (Flapjack.WordRegImm.imm 1#64)))

def body4_301 : WordLangProgHOL (BitVec 64) :=
.seq body4_299 body4_300

def body4_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1041 1037

def body4_303 : WordLangProgHOL (BitVec 64) :=
.seq body4_301 body4_302

def body4_304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1045 (Flapjack.WordLangAddr.addr 1041 18446744073709551248#64))

def body4_305 : WordLangProgHOL (BitVec 64) :=
.seq body4_303 body4_304

def body4_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1049 1029 (Flapjack.WordRegImm.reg 1045)))

def body4_307 : WordLangProgHOL (BitVec 64) :=
.seq body4_305 body4_306

def body4_308 : WordLangProgHOL (BitVec 64) :=
.seq body4_298 body4_307

def body4_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1053 (Flapjack.WordLangAddr.addr 1049 0#64))

def body4_310 : WordLangProgHOL (BitVec 64) :=
.seq body4_308 body4_309

def body4_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1057, 1021)]

def body4_312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1061, 1009)]

def body4_313 : WordLangProgHOL (BitVec 64) :=
.seq body4_311 body4_312

def body4_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1065, 1033)]

def body4_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1069, 1037)]

def body4_316 : WordLangProgHOL (BitVec 64) :=
.seq body4_314 body4_315

def body4_317 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1073, 1041)]

def body4_318 : WordLangProgHOL (BitVec 64) :=
.seq body4_316 body4_317

def body4_319 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1077, 1045)]

def body4_320 : WordLangProgHOL (BitVec 64) :=
.seq body4_318 body4_319

def body4_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1081 1061 (Flapjack.WordRegImm.reg 1077)))

def body4_322 : WordLangProgHOL (BitVec 64) :=
.seq body4_320 body4_321

def body4_323 : WordLangProgHOL (BitVec 64) :=
.seq body4_313 body4_322

def body4_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1085 (Flapjack.WordLangAddr.addr 1081 0#64))

def body4_325 : WordLangProgHOL (BitVec 64) :=
.seq body4_323 body4_324

def body4_326 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 1089 1053 (Flapjack.WordRegImm.reg 1085)))

def body4_327 : WordLangProgHOL (BitVec 64) :=
.seq body4_325 body4_326

def body4_328 : WordLangProgHOL (BitVec 64) :=
.seq body4_310 body4_327

def body4_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1093, 1057)]

def body4_330 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1097, 1061)]

def body4_331 : WordLangProgHOL (BitVec 64) :=
.seq body4_329 body4_330

def body4_332 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1101, 1013)]

def body4_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1105, 1017)]

def body4_334 : WordLangProgHOL (BitVec 64) :=
.seq body4_332 body4_333

def body4_335 : WordLangProgHOL (BitVec 64) :=
.seq body4_331 body4_334

def body4_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1109 (Flapjack.WordLangAddr.addr 1105 0#64))

def body4_337 : WordLangProgHOL (BitVec 64) :=
.seq body4_335 body4_336

def body4_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 1113 1089 (Flapjack.WordRegImm.reg 1109)))

def body4_339 : WordLangProgHOL (BitVec 64) :=
.seq body4_337 body4_338

def body4_340 : WordLangProgHOL (BitVec 64) :=
.seq body4_328 body4_339

def body4_341 : WordLangProgHOL (BitVec 64) :=
.seq body4_293 body4_340

def body4_342 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1117, 1113)]

def body4_343 : WordLangProgHOL (BitVec 64) :=
.seq body4_341 body4_342

def body4_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1121, 1017)]

def body4_345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1117 (Flapjack.WordLangAddr.addr 1121 0#64))

def body4_346 : WordLangProgHOL (BitVec 64) :=
.seq body4_344 body4_345

def body4_347 : WordLangProgHOL (BitVec 64) :=
.seq body4_343 body4_346

def body4_348 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1125, 1093)]

def body4_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1129 1125 (Flapjack.WordRegImm.imm 1#64)))

def body4_350 : WordLangProgHOL (BitVec 64) :=
.seq body4_348 body4_349

def body4_351 : WordLangProgHOL (BitVec 64) :=
.seq body4_347 body4_350

def body4_352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1133, 1129)]

def body4_353 : WordLangProgHOL (BitVec 64) :=
.seq body4_351 body4_352

def body4_354 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(957, 1101), (961, 1133)]

def body4_355 : WordLangProgHOL (BitVec 64) :=
.seq body4_354 body4_259

def body4_356 : WordLangProgHOL (BitVec 64) :=
.seq body4_353 body4_355

def body4_357 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1153, 1101), (1149, 1133)]

def body4_358 : WordLangProgHOL (BitVec 64) :=
.seq body4_356 body4_357

def body4_359 : WordLangProgHOL (BitVec 64) :=
.seq body4_25 body4_265

def body4_360 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1153, 957), (1149, 989)]

def body4_361 : WordLangProgHOL (BitVec 64) :=
.seq body4_359 body4_360

def body4_362 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 989 (Flapjack.WordRegImm.reg 993) body4_358 body4_361

def body4_363 : WordLangProgHOL (BitVec 64) :=
.seq body4_285 body4_362

def body4_364 : WordLangProgHOL (BitVec 64) :=
.seq body4_363 body4_25

def body4_365 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(957, 1153), (961, 1149)]

def body4_366 : WordLangProgHOL (BitVec 64) :=
.seq body4_364 body4_365

def body4_367 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)) body4_366 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln))

def body4_368 : WordLangProgHOL (BitVec 64) :=
.seq body4_282 body4_367

def body4_369 : WordLangProgHOL (BitVec 64) :=
.seq body4_281 body4_368

def body4_370 : WordLangProgHOL (BitVec 64) :=
.seq body4_369 body4_25

def body4_371 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1181 0#64)

def body4_372 : WordLangProgHOL (BitVec 64) :=
.seq body4_370 body4_371

def body4_373 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 1181)]

def body4_374 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 949 [2]

def body4_375 : WordLangProgHOL (BitVec 64) :=
.seq body4_373 body4_374

def body4_376 : WordLangProgHOL (BitVec 64) :=
.seq body4_372 body4_375

def body4_377 : WordLangProgHOL (BitVec 64) :=
.seq body4_0 body4_376

def pass4 : WordLangProgHOL (BitVec 64) := body4_377
def body5_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(33, 0), (37, 2), (41, 4), (45, 6), (49, 8), (53, 10), (57, 12)]

def body5_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 61 Flapjack.WordStore.heapLength

def body5_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 65 61 (Flapjack.WordRegImm.imm 1#64)))

def body5_3 : WordLangProgHOL (BitVec 64) :=
.seq body5_1 body5_2

def body5_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 69 65

def body5_5 : WordLangProgHOL (BitVec 64) :=
.seq body5_3 body5_4

def body5_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 73 (Flapjack.WordLangAddr.addr 69 18446744073709551248#64))

def body5_7 : WordLangProgHOL (BitVec 64) :=
.seq body5_5 body5_6

def body5_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 41)]

def body5_9 : WordLangProgHOL (BitVec 64) :=
.seq body5_7 body5_8

def body5_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 64#64)

def body5_11 : WordLangProgHOL (BitVec 64) :=
.seq body5_9 body5_10

def body5_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(91, 33), (95, 49), (99, 77), (103, 57), (107, 37), (111, 53), (115, 45)]

def body5_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 73), (4, 77), (6, 85)]

def body5_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(121, 91), (125, 95), (129, 99), (133, 103), (137, 107), (141, 111), (145, 115)]

def body5_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 2)]

def body5_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 153)]

def body5_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body5_18 : WordLangProgHOL (BitVec 64) :=
.seq body5_16 body5_17

def body5_19 : WordLangProgHOL (BitVec 64) :=
.seq body5_15 body5_18

def body5_20 : WordLangProgHOL (BitVec 64) :=
.seq body5_14 body5_19

def body5_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body5_14, 635, 2)) (some 77) ([2, 4, 6]) (some (2, body5_20, 635, 3))

def body5_22 : WordLangProgHOL (BitVec 64) :=
.seq body5_13 body5_21

def body5_23 : WordLangProgHOL (BitVec 64) :=
.seq body5_12 body5_22

def body5_24 : WordLangProgHOL (BitVec 64) :=
.seq body5_11 body5_23

def body5_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body5_26 : WordLangProgHOL (BitVec 64) :=
.seq body5_24 body5_25

def body5_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 165 Flapjack.WordStore.heapLength

def body5_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 169 165 (Flapjack.WordRegImm.imm 1#64)))

def body5_29 : WordLangProgHOL (BitVec 64) :=
.seq body5_27 body5_28

def body5_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 173 169

def body5_31 : WordLangProgHOL (BitVec 64) :=
.seq body5_29 body5_30

def body5_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 177 (Flapjack.WordLangAddr.addr 173 18446744073709551248#64))

def body5_33 : WordLangProgHOL (BitVec 64) :=
.seq body5_31 body5_32

def body5_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 181 177 (Flapjack.WordRegImm.imm 64#64)))

def body5_35 : WordLangProgHOL (BitVec 64) :=
.seq body5_33 body5_34

def body5_36 : WordLangProgHOL (BitVec 64) :=
.seq body5_26 body5_35

def body5_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(185, 165)]

def body5_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 169)]

def body5_39 : WordLangProgHOL (BitVec 64) :=
.seq body5_37 body5_38

def body5_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(193, 173)]

def body5_41 : WordLangProgHOL (BitVec 64) :=
.seq body5_39 body5_40

def body5_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 197 (Flapjack.WordLangAddr.addr 193 18446744073709551256#64))

def body5_43 : WordLangProgHOL (BitVec 64) :=
.seq body5_41 body5_42

def body5_44 : WordLangProgHOL (BitVec 64) :=
.seq body5_36 body5_43

def body5_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 205 64#64)

def body5_46 : WordLangProgHOL (BitVec 64) :=
.seq body5_44 body5_45

def body5_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(211, 121), (215, 125), (219, 129), (223, 133), (227, 137), (231, 141), (235, 145)]

def body5_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 181), (4, 197), (6, 205)]

def body5_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(241, 211), (245, 215), (249, 219), (253, 223), (257, 227), (261, 231), (265, 235)]

def body5_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 2)]

def body5_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 273)]

def body5_52 : WordLangProgHOL (BitVec 64) :=
.seq body5_51 body5_17

def body5_53 : WordLangProgHOL (BitVec 64) :=
.seq body5_50 body5_52

def body5_54 : WordLangProgHOL (BitVec 64) :=
.seq body5_49 body5_53

def body5_55 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body5_49, 635, 4)) (some 77) ([2, 4, 6]) (some (2, body5_54, 635, 5))

def body5_56 : WordLangProgHOL (BitVec 64) :=
.seq body5_48 body5_55

def body5_57 : WordLangProgHOL (BitVec 64) :=
.seq body5_47 body5_56

def body5_58 : WordLangProgHOL (BitVec 64) :=
.seq body5_46 body5_57

def body5_59 : WordLangProgHOL (BitVec 64) :=
.seq body5_58 body5_25

def body5_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 285 Flapjack.WordStore.heapLength

def body5_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 289 285 (Flapjack.WordRegImm.imm 1#64)))

def body5_62 : WordLangProgHOL (BitVec 64) :=
.seq body5_60 body5_61

def body5_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 293 289

def body5_64 : WordLangProgHOL (BitVec 64) :=
.seq body5_62 body5_63

def body5_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 297 (Flapjack.WordLangAddr.addr 293 18446744073709551248#64))

def body5_66 : WordLangProgHOL (BitVec 64) :=
.seq body5_64 body5_65

def body5_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 301 297 (Flapjack.WordRegImm.imm 96#64)))

def body5_68 : WordLangProgHOL (BitVec 64) :=
.seq body5_66 body5_67

def body5_69 : WordLangProgHOL (BitVec 64) :=
.seq body5_59 body5_68

def body5_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(305, 245)]

def body5_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(309, 285)]

def body5_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(313, 289)]

def body5_73 : WordLangProgHOL (BitVec 64) :=
.seq body5_71 body5_72

def body5_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(317, 293)]

def body5_75 : WordLangProgHOL (BitVec 64) :=
.seq body5_73 body5_74

def body5_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(321, 297)]

def body5_77 : WordLangProgHOL (BitVec 64) :=
.seq body5_75 body5_76

def body5_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 325 (Flapjack.WordLangAddr.addr 321 96#64))

def body5_79 : WordLangProgHOL (BitVec 64) :=
.seq body5_77 body5_78

def body5_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 329 305 (Flapjack.WordRegImm.reg 325)))

def body5_81 : WordLangProgHOL (BitVec 64) :=
.seq body5_79 body5_80

def body5_82 : WordLangProgHOL (BitVec 64) :=
.seq body5_70 body5_81

def body5_83 : WordLangProgHOL (BitVec 64) :=
.seq body5_69 body5_82

def body5_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(333, 329)]

def body5_85 : WordLangProgHOL (BitVec 64) :=
.seq body5_83 body5_84

def body5_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(337, 301)]

def body5_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 333 (Flapjack.WordLangAddr.addr 337 0#64))

def body5_88 : WordLangProgHOL (BitVec 64) :=
.seq body5_86 body5_87

def body5_89 : WordLangProgHOL (BitVec 64) :=
.seq body5_85 body5_88

def body5_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(341, 309)]

def body5_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 313)]

def body5_92 : WordLangProgHOL (BitVec 64) :=
.seq body5_90 body5_91

def body5_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(349, 317)]

def body5_94 : WordLangProgHOL (BitVec 64) :=
.seq body5_92 body5_93

def body5_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 353 (Flapjack.WordLangAddr.addr 349 18446744073709551248#64))

def body5_96 : WordLangProgHOL (BitVec 64) :=
.seq body5_94 body5_95

def body5_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 357 353 (Flapjack.WordRegImm.imm 104#64)))

def body5_98 : WordLangProgHOL (BitVec 64) :=
.seq body5_96 body5_97

def body5_99 : WordLangProgHOL (BitVec 64) :=
.seq body5_89 body5_98

def body5_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(361, 261)]

def body5_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(365, 341)]

def body5_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(369, 345)]

def body5_103 : WordLangProgHOL (BitVec 64) :=
.seq body5_101 body5_102

def body5_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(373, 349)]

def body5_105 : WordLangProgHOL (BitVec 64) :=
.seq body5_103 body5_104

def body5_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(377, 353)]

def body5_107 : WordLangProgHOL (BitVec 64) :=
.seq body5_105 body5_106

def body5_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 381 (Flapjack.WordLangAddr.addr 377 104#64))

def body5_109 : WordLangProgHOL (BitVec 64) :=
.seq body5_107 body5_108

def body5_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 385 361 (Flapjack.WordRegImm.reg 381)))

def body5_111 : WordLangProgHOL (BitVec 64) :=
.seq body5_109 body5_110

def body5_112 : WordLangProgHOL (BitVec 64) :=
.seq body5_100 body5_111

def body5_113 : WordLangProgHOL (BitVec 64) :=
.seq body5_99 body5_112

def body5_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(389, 385)]

def body5_115 : WordLangProgHOL (BitVec 64) :=
.seq body5_113 body5_114

def body5_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(393, 357)]

def body5_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 389 (Flapjack.WordLangAddr.addr 393 0#64))

def body5_118 : WordLangProgHOL (BitVec 64) :=
.seq body5_116 body5_117

def body5_119 : WordLangProgHOL (BitVec 64) :=
.seq body5_115 body5_118

def body5_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(397, 253)]

def body5_121 : WordLangProgHOL (BitVec 64) :=
.seq body5_119 body5_120

def body5_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 401 0#64)

def body5_123 : WordLangProgHOL (BitVec 64) :=
.seq body5_121 body5_122

def body5_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(413, 365)]

def body5_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(417, 369)]

def body5_126 : WordLangProgHOL (BitVec 64) :=
.seq body5_124 body5_125

def body5_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(421, 373)]

def body5_128 : WordLangProgHOL (BitVec 64) :=
.seq body5_126 body5_127

def body5_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 425 (Flapjack.WordLangAddr.addr 421 18446744073709551248#64))

def body5_130 : WordLangProgHOL (BitVec 64) :=
.seq body5_128 body5_129

def body5_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 429 425 (Flapjack.WordRegImm.imm 112#64)))

def body5_132 : WordLangProgHOL (BitVec 64) :=
.seq body5_130 body5_131

def body5_133 : WordLangProgHOL (BitVec 64) :=
.seq body5_25 body5_132

def body5_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(433, 413)]

def body5_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(437, 417)]

def body5_136 : WordLangProgHOL (BitVec 64) :=
.seq body5_134 body5_135

def body5_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(441, 421)]

def body5_138 : WordLangProgHOL (BitVec 64) :=
.seq body5_136 body5_137

def body5_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(445, 425)]

def body5_140 : WordLangProgHOL (BitVec 64) :=
.seq body5_138 body5_139

def body5_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 449 (Flapjack.WordLangAddr.addr 445 112#64))

def body5_142 : WordLangProgHOL (BitVec 64) :=
.seq body5_140 body5_141

def body5_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 453 449 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def body5_144 : WordLangProgHOL (BitVec 64) :=
.seq body5_142 body5_143

def body5_145 : WordLangProgHOL (BitVec 64) :=
.seq body5_133 body5_144

def body5_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(457, 453)]

def body5_147 : WordLangProgHOL (BitVec 64) :=
.seq body5_145 body5_146

def body5_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(461, 429)]

def body5_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 457 (Flapjack.WordLangAddr.addr 461 0#64))

def body5_150 : WordLangProgHOL (BitVec 64) :=
.seq body5_148 body5_149

def body5_151 : WordLangProgHOL (BitVec 64) :=
.seq body5_147 body5_150

def body5_152 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 397 (Flapjack.WordRegImm.reg 401) body5_151 body5_25

def body5_153 : WordLangProgHOL (BitVec 64) :=
.seq body5_123 body5_152

def body5_154 : WordLangProgHOL (BitVec 64) :=
.seq body5_153 body5_25

def body5_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(493, 285)]

def body5_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(497, 289)]

def body5_157 : WordLangProgHOL (BitVec 64) :=
.seq body5_155 body5_156

def body5_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(501, 293)]

def body5_159 : WordLangProgHOL (BitVec 64) :=
.seq body5_157 body5_158

def body5_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 505 (Flapjack.WordLangAddr.addr 501 18446744073709551240#64))

def body5_161 : WordLangProgHOL (BitVec 64) :=
.seq body5_159 body5_160

def body5_162 : WordLangProgHOL (BitVec 64) :=
.seq body5_154 body5_161

def body5_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(509, 265)]

def body5_164 : WordLangProgHOL (BitVec 64) :=
.seq body5_162 body5_163

def body5_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 517 128#64)

def body5_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(523, 241), (527, 305), (531, 249), (535, 397), (539, 257), (543, 361), (547, 509)]

def body5_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 505), (4, 509), (6, 517)]

def body5_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(553, 523), (557, 527), (561, 531), (565, 535), (569, 539), (573, 543), (577, 547)]

def body5_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(585, 2)]

def body5_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 585)]

def body5_171 : WordLangProgHOL (BitVec 64) :=
.seq body5_170 body5_17

def body5_172 : WordLangProgHOL (BitVec 64) :=
.seq body5_169 body5_171

def body5_173 : WordLangProgHOL (BitVec 64) :=
.seq body5_168 body5_172

def body5_174 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body5_168, 635, 6)) (some 77) ([2, 4, 6]) (some (2, body5_173, 635, 7))

def body5_175 : WordLangProgHOL (BitVec 64) :=
.seq body5_167 body5_174

def body5_176 : WordLangProgHOL (BitVec 64) :=
.seq body5_166 body5_175

def body5_177 : WordLangProgHOL (BitVec 64) :=
.seq body5_165 body5_176

def body5_178 : WordLangProgHOL (BitVec 64) :=
.seq body5_164 body5_177

def body5_179 : WordLangProgHOL (BitVec 64) :=
.seq body5_178 body5_25

def body5_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 597 0#64)

def body5_181 : WordLangProgHOL (BitVec 64) :=
.seq body5_179 body5_180

def body5_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 601 0#64)

def body5_183 : WordLangProgHOL (BitVec 64) :=
.seq body5_181 body5_182

def body5_184 : WordLangProgHOL (BitVec 64) :=
.seq body5_183 body5_25

def body5_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(605, 553), (609, 557), (613, 561), (617, 565), (621, 569), (625, 573), (629, 597), (633, 577), (637, 601)]

def body5_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(641, 629)]

def body5_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(645, 621)]

def body5_188 : WordLangProgHOL (BitVec 64) :=
.seq body5_186 body5_187

def body5_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 657 Flapjack.WordStore.heapLength

def body5_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 661 657 (Flapjack.WordRegImm.imm 1#64)))

def body5_191 : WordLangProgHOL (BitVec 64) :=
.seq body5_189 body5_190

def body5_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 665 661

def body5_193 : WordLangProgHOL (BitVec 64) :=
.seq body5_191 body5_192

def body5_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 669 (Flapjack.WordLangAddr.addr 665 18446744073709551232#64))

def body5_195 : WordLangProgHOL (BitVec 64) :=
.seq body5_193 body5_194

def body5_196 : WordLangProgHOL (BitVec 64) :=
.seq body5_25 body5_195

def body5_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(673, 637)]

def body5_198 : WordLangProgHOL (BitVec 64) :=
.seq body5_196 body5_197

def body5_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(677, 673)]

def body5_200 : WordLangProgHOL (BitVec 64) :=
.seq body5_198 body5_199

def body5_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(681, 669)]

def body5_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 677 (Flapjack.WordLangAddr.addr 681 0#64))

def body5_203 : WordLangProgHOL (BitVec 64) :=
.seq body5_201 body5_202

def body5_204 : WordLangProgHOL (BitVec 64) :=
.seq body5_200 body5_203

def body5_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(685, 657)]

def body5_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(689, 661)]

def body5_207 : WordLangProgHOL (BitVec 64) :=
.seq body5_205 body5_206

def body5_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(693, 665)]

def body5_209 : WordLangProgHOL (BitVec 64) :=
.seq body5_207 body5_208

def body5_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 697 (Flapjack.WordLangAddr.addr 693 18446744073709551232#64))

def body5_211 : WordLangProgHOL (BitVec 64) :=
.seq body5_209 body5_210

def body5_212 : WordLangProgHOL (BitVec 64) :=
.seq body5_204 body5_211

def body5_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(705, 685)]

def body5_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(709, 689)]

def body5_215 : WordLangProgHOL (BitVec 64) :=
.seq body5_213 body5_214

def body5_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(713, 693)]

def body5_217 : WordLangProgHOL (BitVec 64) :=
.seq body5_215 body5_216

def body5_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(717, 697)]

def body5_219 : WordLangProgHOL (BitVec 64) :=
.seq body5_217 body5_218

def body5_220 : WordLangProgHOL (BitVec 64) :=
.seq body5_212 body5_219

def body5_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 733 264#64)

def body5_222 : WordLangProgHOL (BitVec 64) :=
.seq body5_220 body5_221

def body5_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 737 0#64)

def body5_224 : WordLangProgHOL (BitVec 64) :=
.seq body5_222 body5_223

def body5_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(743, 605), (747, 609), (751, 613), (755, 617), (759, 645), (763, 625), (767, 641), (771, 633), (775, 677)]

def body5_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 717), (4, 737), (6, 717), (8, 733)]

def body5_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.ffi
  (Flapjack.Basis.Pure.MlString.MlString.implode
    [98#8, 108#8, 97#8, 107#8, 101#8, 50#8, 98#8, 114#8, 111#8, 117#8, 110#8, 100#8])
  2 4 6 8
  (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))))),
    Flapjack.Spt.ln)

def body5_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(781, 743), (785, 747), (789, 751), (793, 755), (797, 759), (801, 763), (805, 767), (809, 771), (813, 775)]

def body5_229 : WordLangProgHOL (BitVec 64) :=
.seq body5_227 body5_228

def body5_230 : WordLangProgHOL (BitVec 64) :=
.seq body5_226 body5_229

def body5_231 : WordLangProgHOL (BitVec 64) :=
.seq body5_225 body5_230

def body5_232 : WordLangProgHOL (BitVec 64) :=
.seq body5_224 body5_231

def body5_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(817, 805)]

def body5_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 821 817 (Flapjack.WordRegImm.imm 1#64)))

def body5_235 : WordLangProgHOL (BitVec 64) :=
.seq body5_233 body5_234

def body5_236 : WordLangProgHOL (BitVec 64) :=
.seq body5_232 body5_235

def body5_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(825, 821)]

def body5_238 : WordLangProgHOL (BitVec 64) :=
.seq body5_236 body5_237

def body5_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(829, 813)]

def body5_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 833 829 (Flapjack.WordRegImm.imm 1#64)))

def body5_241 : WordLangProgHOL (BitVec 64) :=
.seq body5_239 body5_240

def body5_242 : WordLangProgHOL (BitVec 64) :=
.seq body5_238 body5_241

def body5_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(837, 833)]

def body5_244 : WordLangProgHOL (BitVec 64) :=
.seq body5_242 body5_243

def body5_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(841, 837)]

def body5_246 : WordLangProgHOL (BitVec 64) :=
.seq body5_244 body5_245

def body5_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 845 10#64)

def body5_248 : WordLangProgHOL (BitVec 64) :=
.seq body5_246 body5_247

def body5_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 857 0#64)

def body5_250 : WordLangProgHOL (BitVec 64) :=
.seq body5_25 body5_249

def body5_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(869, 857)]

def body5_252 : WordLangProgHOL (BitVec 64) :=
.seq body5_250 body5_251

def body5_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(869, 841)]

def body5_254 : WordLangProgHOL (BitVec 64) :=
.seq body5_25 body5_253

def body5_255 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 841 (Flapjack.WordRegImm.reg 845) body5_252 body5_254

def body5_256 : WordLangProgHOL (BitVec 64) :=
.seq body5_248 body5_255

def body5_257 : WordLangProgHOL (BitVec 64) :=
.seq body5_256 body5_25

def body5_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(605, 781), (609, 785), (613, 789), (617, 793), (621, 797), (625, 801), (629, 825), (633, 809), (637, 869)]

def body5_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body5_260 : WordLangProgHOL (BitVec 64) :=
.seq body5_258 body5_259

def body5_261 : WordLangProgHOL (BitVec 64) :=
.seq body5_257 body5_260

def body5_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(933, 605), (925, 609), (917, 613), (913, 617), (909, 621), (901, 625), (897, 629), (893, 633), (889, 637)]

def body5_263 : WordLangProgHOL (BitVec 64) :=
.seq body5_261 body5_262

def body5_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(621, 645), (629, 641)]

def body5_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body5_266 : WordLangProgHOL (BitVec 64) :=
.seq body5_264 body5_265

def body5_267 : WordLangProgHOL (BitVec 64) :=
.seq body5_25 body5_266

def body5_268 : WordLangProgHOL (BitVec 64) :=
.seq body5_267 body5_262

def body5_269 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 641 (Flapjack.WordRegImm.reg 645) body5_263 body5_268

def body5_270 : WordLangProgHOL (BitVec 64) :=
.seq body5_188 body5_269

def body5_271 : WordLangProgHOL (BitVec 64) :=
.seq body5_270 body5_25

def body5_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(605, 933), (609, 925), (613, 917), (617, 913), (621, 909), (625, 901), (629, 897), (633, 893), (637, 889)]

def body5_273 : WordLangProgHOL (BitVec 64) :=
.seq body5_271 body5_272

def body5_274 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)) body5_273 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln))

def body5_275 : WordLangProgHOL (BitVec 64) :=
.seq body5_185 body5_274

def body5_276 : WordLangProgHOL (BitVec 64) :=
.seq body5_184 body5_275

def body5_277 : WordLangProgHOL (BitVec 64) :=
.seq body5_276 body5_25

def body5_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 945 0#64)

def body5_279 : WordLangProgHOL (BitVec 64) :=
.seq body5_277 body5_278

def body5_280 : WordLangProgHOL (BitVec 64) :=
.seq body5_279 body5_25

def body5_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(949, 605), (953, 609), (957, 613), (961, 945), (965, 617), (969, 621), (973, 625), (977, 629), (981, 633),
    (985, 637)]

def body5_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(989, 961)]

def body5_283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 993 8#64)

def body5_284 : WordLangProgHOL (BitVec 64) :=
.seq body5_282 body5_283

def body5_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1005, 989)]

def body5_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1009 1005 (Flapjack.WordRegImm.imm 3#64)))

def body5_287 : WordLangProgHOL (BitVec 64) :=
.seq body5_285 body5_286

def body5_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1013, 957)]

def body5_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1017 1009 (Flapjack.WordRegImm.reg 1013)))

def body5_290 : WordLangProgHOL (BitVec 64) :=
.seq body5_288 body5_289

def body5_291 : WordLangProgHOL (BitVec 64) :=
.seq body5_287 body5_290

def body5_292 : WordLangProgHOL (BitVec 64) :=
.seq body5_25 body5_291

def body5_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1021, 1005)]

def body5_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1025 1021 (Flapjack.WordRegImm.imm 8#64)))

def body5_295 : WordLangProgHOL (BitVec 64) :=
.seq body5_293 body5_294

def body5_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1029 1025 (Flapjack.WordRegImm.imm 3#64)))

def body5_297 : WordLangProgHOL (BitVec 64) :=
.seq body5_295 body5_296

def body5_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 1033 Flapjack.WordStore.heapLength

def body5_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1037 1033 (Flapjack.WordRegImm.imm 1#64)))

def body5_300 : WordLangProgHOL (BitVec 64) :=
.seq body5_298 body5_299

def body5_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1041 1037

def body5_302 : WordLangProgHOL (BitVec 64) :=
.seq body5_300 body5_301

def body5_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1045 (Flapjack.WordLangAddr.addr 1041 18446744073709551248#64))

def body5_304 : WordLangProgHOL (BitVec 64) :=
.seq body5_302 body5_303

def body5_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1049 1029 (Flapjack.WordRegImm.reg 1045)))

def body5_306 : WordLangProgHOL (BitVec 64) :=
.seq body5_304 body5_305

def body5_307 : WordLangProgHOL (BitVec 64) :=
.seq body5_297 body5_306

def body5_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1053 (Flapjack.WordLangAddr.addr 1049 0#64))

def body5_309 : WordLangProgHOL (BitVec 64) :=
.seq body5_307 body5_308

def body5_310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1057, 1021)]

def body5_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1061, 1009)]

def body5_312 : WordLangProgHOL (BitVec 64) :=
.seq body5_310 body5_311

def body5_313 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1065, 1033)]

def body5_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1069, 1037)]

def body5_315 : WordLangProgHOL (BitVec 64) :=
.seq body5_313 body5_314

def body5_316 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1073, 1041)]

def body5_317 : WordLangProgHOL (BitVec 64) :=
.seq body5_315 body5_316

def body5_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1077, 1045)]

def body5_319 : WordLangProgHOL (BitVec 64) :=
.seq body5_317 body5_318

def body5_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1081 1061 (Flapjack.WordRegImm.reg 1077)))

def body5_321 : WordLangProgHOL (BitVec 64) :=
.seq body5_319 body5_320

def body5_322 : WordLangProgHOL (BitVec 64) :=
.seq body5_312 body5_321

def body5_323 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1085 (Flapjack.WordLangAddr.addr 1081 0#64))

def body5_324 : WordLangProgHOL (BitVec 64) :=
.seq body5_322 body5_323

def body5_325 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 1089 1053 (Flapjack.WordRegImm.reg 1085)))

def body5_326 : WordLangProgHOL (BitVec 64) :=
.seq body5_324 body5_325

def body5_327 : WordLangProgHOL (BitVec 64) :=
.seq body5_309 body5_326

def body5_328 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1093, 1057)]

def body5_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1097, 1061)]

def body5_330 : WordLangProgHOL (BitVec 64) :=
.seq body5_328 body5_329

def body5_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1101, 1013)]

def body5_332 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1105, 1017)]

def body5_333 : WordLangProgHOL (BitVec 64) :=
.seq body5_331 body5_332

def body5_334 : WordLangProgHOL (BitVec 64) :=
.seq body5_330 body5_333

def body5_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1109 (Flapjack.WordLangAddr.addr 1105 0#64))

def body5_336 : WordLangProgHOL (BitVec 64) :=
.seq body5_334 body5_335

def body5_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 1113 1089 (Flapjack.WordRegImm.reg 1109)))

def body5_338 : WordLangProgHOL (BitVec 64) :=
.seq body5_336 body5_337

def body5_339 : WordLangProgHOL (BitVec 64) :=
.seq body5_327 body5_338

def body5_340 : WordLangProgHOL (BitVec 64) :=
.seq body5_292 body5_339

def body5_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1117, 1113)]

def body5_342 : WordLangProgHOL (BitVec 64) :=
.seq body5_340 body5_341

def body5_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1121, 1105)]

def body5_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1117 (Flapjack.WordLangAddr.addr 1121 0#64))

def body5_345 : WordLangProgHOL (BitVec 64) :=
.seq body5_343 body5_344

def body5_346 : WordLangProgHOL (BitVec 64) :=
.seq body5_342 body5_345

def body5_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1125, 1093)]

def body5_348 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1129 1125 (Flapjack.WordRegImm.imm 1#64)))

def body5_349 : WordLangProgHOL (BitVec 64) :=
.seq body5_347 body5_348

def body5_350 : WordLangProgHOL (BitVec 64) :=
.seq body5_346 body5_349

def body5_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1133, 1129)]

def body5_352 : WordLangProgHOL (BitVec 64) :=
.seq body5_350 body5_351

def body5_353 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(957, 1101), (961, 1133)]

def body5_354 : WordLangProgHOL (BitVec 64) :=
.seq body5_353 body5_259

def body5_355 : WordLangProgHOL (BitVec 64) :=
.seq body5_352 body5_354

def body5_356 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1153, 957), (1149, 961)]

def body5_357 : WordLangProgHOL (BitVec 64) :=
.seq body5_355 body5_356

def body5_358 : WordLangProgHOL (BitVec 64) :=
.seq body5_25 body5_265

def body5_359 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1153, 957), (1149, 989)]

def body5_360 : WordLangProgHOL (BitVec 64) :=
.seq body5_358 body5_359

def body5_361 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 989 (Flapjack.WordRegImm.reg 993) body5_357 body5_360

def body5_362 : WordLangProgHOL (BitVec 64) :=
.seq body5_284 body5_361

def body5_363 : WordLangProgHOL (BitVec 64) :=
.seq body5_362 body5_25

def body5_364 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(957, 1153), (961, 1149)]

def body5_365 : WordLangProgHOL (BitVec 64) :=
.seq body5_363 body5_364

def body5_366 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)) body5_365 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln))

def body5_367 : WordLangProgHOL (BitVec 64) :=
.seq body5_281 body5_366

def body5_368 : WordLangProgHOL (BitVec 64) :=
.seq body5_280 body5_367

def body5_369 : WordLangProgHOL (BitVec 64) :=
.seq body5_368 body5_25

def body5_370 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1181 0#64)

def body5_371 : WordLangProgHOL (BitVec 64) :=
.seq body5_369 body5_370

def body5_372 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 1181)]

def body5_373 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 949 [2]

def body5_374 : WordLangProgHOL (BitVec 64) :=
.seq body5_372 body5_373

def body5_375 : WordLangProgHOL (BitVec 64) :=
.seq body5_371 body5_374

def body5_376 : WordLangProgHOL (BitVec 64) :=
.seq body5_0 body5_375

def pass5 : WordLangProgHOL (BitVec 64) := body5_376
def body6_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(33, 0), (37, 2), (41, 4), (45, 6), (49, 8), (53, 10), (57, 12)]

def body6_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 61 Flapjack.WordStore.heapLength

def body6_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 65 61 (Flapjack.WordRegImm.imm 1#64)))

def body6_3 : WordLangProgHOL (BitVec 64) :=
.seq body6_1 body6_2

def body6_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 69 65

def body6_5 : WordLangProgHOL (BitVec 64) :=
.seq body6_3 body6_4

def body6_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 73 (Flapjack.WordLangAddr.addr 69 18446744073709551248#64))

def body6_7 : WordLangProgHOL (BitVec 64) :=
.seq body6_5 body6_6

def body6_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 41)]

def body6_9 : WordLangProgHOL (BitVec 64) :=
.seq body6_7 body6_8

def body6_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 64#64)

def body6_11 : WordLangProgHOL (BitVec 64) :=
.seq body6_9 body6_10

def body6_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(91, 33), (95, 49), (99, 77), (103, 57), (107, 37), (111, 53), (115, 45)]

def body6_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 73), (4, 77), (6, 85)]

def body6_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(121, 91), (125, 95), (129, 99), (133, 103), (137, 107), (141, 111), (145, 115)]

def body6_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(153, 2)]

def body6_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 153)]

def body6_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body6_18 : WordLangProgHOL (BitVec 64) :=
.seq body6_16 body6_17

def body6_19 : WordLangProgHOL (BitVec 64) :=
.seq body6_15 body6_18

def body6_20 : WordLangProgHOL (BitVec 64) :=
.seq body6_14 body6_19

def body6_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body6_14, 635, 2)) (some 77) ([2, 4, 6]) (some (2, body6_20, 635, 3))

def body6_22 : WordLangProgHOL (BitVec 64) :=
.seq body6_13 body6_21

def body6_23 : WordLangProgHOL (BitVec 64) :=
.seq body6_12 body6_22

def body6_24 : WordLangProgHOL (BitVec 64) :=
.seq body6_11 body6_23

def body6_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body6_26 : WordLangProgHOL (BitVec 64) :=
.seq body6_24 body6_25

def body6_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 165 Flapjack.WordStore.heapLength

def body6_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 169 165 (Flapjack.WordRegImm.imm 1#64)))

def body6_29 : WordLangProgHOL (BitVec 64) :=
.seq body6_27 body6_28

def body6_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 173 169

def body6_31 : WordLangProgHOL (BitVec 64) :=
.seq body6_29 body6_30

def body6_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 177 (Flapjack.WordLangAddr.addr 173 18446744073709551248#64))

def body6_33 : WordLangProgHOL (BitVec 64) :=
.seq body6_31 body6_32

def body6_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 181 177 (Flapjack.WordRegImm.imm 64#64)))

def body6_35 : WordLangProgHOL (BitVec 64) :=
.seq body6_33 body6_34

def body6_36 : WordLangProgHOL (BitVec 64) :=
.seq body6_26 body6_35

def body6_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(185, 165)]

def body6_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 169)]

def body6_39 : WordLangProgHOL (BitVec 64) :=
.seq body6_37 body6_38

def body6_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(193, 173)]

def body6_41 : WordLangProgHOL (BitVec 64) :=
.seq body6_39 body6_40

def body6_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 197 (Flapjack.WordLangAddr.addr 193 18446744073709551256#64))

def body6_43 : WordLangProgHOL (BitVec 64) :=
.seq body6_41 body6_42

def body6_44 : WordLangProgHOL (BitVec 64) :=
.seq body6_36 body6_43

def body6_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 205 64#64)

def body6_46 : WordLangProgHOL (BitVec 64) :=
.seq body6_44 body6_45

def body6_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(211, 121), (215, 125), (219, 129), (223, 133), (227, 137), (231, 141), (235, 145)]

def body6_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 181), (4, 197), (6, 205)]

def body6_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(241, 211), (245, 215), (249, 219), (253, 223), (257, 227), (261, 231), (265, 235)]

def body6_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(273, 2)]

def body6_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 273)]

def body6_52 : WordLangProgHOL (BitVec 64) :=
.seq body6_51 body6_17

def body6_53 : WordLangProgHOL (BitVec 64) :=
.seq body6_50 body6_52

def body6_54 : WordLangProgHOL (BitVec 64) :=
.seq body6_49 body6_53

def body6_55 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body6_49, 635, 4)) (some 77) ([2, 4, 6]) (some (2, body6_54, 635, 5))

def body6_56 : WordLangProgHOL (BitVec 64) :=
.seq body6_48 body6_55

def body6_57 : WordLangProgHOL (BitVec 64) :=
.seq body6_47 body6_56

def body6_58 : WordLangProgHOL (BitVec 64) :=
.seq body6_46 body6_57

def body6_59 : WordLangProgHOL (BitVec 64) :=
.seq body6_58 body6_25

def body6_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 285 Flapjack.WordStore.heapLength

def body6_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 289 285 (Flapjack.WordRegImm.imm 1#64)))

def body6_62 : WordLangProgHOL (BitVec 64) :=
.seq body6_60 body6_61

def body6_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 293 289

def body6_64 : WordLangProgHOL (BitVec 64) :=
.seq body6_62 body6_63

def body6_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 297 (Flapjack.WordLangAddr.addr 293 18446744073709551248#64))

def body6_66 : WordLangProgHOL (BitVec 64) :=
.seq body6_64 body6_65

def body6_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 301 297 (Flapjack.WordRegImm.imm 96#64)))

def body6_68 : WordLangProgHOL (BitVec 64) :=
.seq body6_66 body6_67

def body6_69 : WordLangProgHOL (BitVec 64) :=
.seq body6_59 body6_68

def body6_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(305, 245)]

def body6_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(309, 285)]

def body6_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(313, 289)]

def body6_73 : WordLangProgHOL (BitVec 64) :=
.seq body6_71 body6_72

def body6_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(317, 293)]

def body6_75 : WordLangProgHOL (BitVec 64) :=
.seq body6_73 body6_74

def body6_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(321, 297)]

def body6_77 : WordLangProgHOL (BitVec 64) :=
.seq body6_75 body6_76

def body6_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 325 (Flapjack.WordLangAddr.addr 321 96#64))

def body6_79 : WordLangProgHOL (BitVec 64) :=
.seq body6_77 body6_78

def body6_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 329 305 (Flapjack.WordRegImm.reg 325)))

def body6_81 : WordLangProgHOL (BitVec 64) :=
.seq body6_79 body6_80

def body6_82 : WordLangProgHOL (BitVec 64) :=
.seq body6_70 body6_81

def body6_83 : WordLangProgHOL (BitVec 64) :=
.seq body6_69 body6_82

def body6_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(333, 329)]

def body6_85 : WordLangProgHOL (BitVec 64) :=
.seq body6_83 body6_84

def body6_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(337, 301)]

def body6_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 333 (Flapjack.WordLangAddr.addr 337 0#64))

def body6_88 : WordLangProgHOL (BitVec 64) :=
.seq body6_86 body6_87

def body6_89 : WordLangProgHOL (BitVec 64) :=
.seq body6_85 body6_88

def body6_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(341, 309)]

def body6_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(345, 313)]

def body6_92 : WordLangProgHOL (BitVec 64) :=
.seq body6_90 body6_91

def body6_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(349, 317)]

def body6_94 : WordLangProgHOL (BitVec 64) :=
.seq body6_92 body6_93

def body6_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 353 (Flapjack.WordLangAddr.addr 349 18446744073709551248#64))

def body6_96 : WordLangProgHOL (BitVec 64) :=
.seq body6_94 body6_95

def body6_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 357 353 (Flapjack.WordRegImm.imm 104#64)))

def body6_98 : WordLangProgHOL (BitVec 64) :=
.seq body6_96 body6_97

def body6_99 : WordLangProgHOL (BitVec 64) :=
.seq body6_89 body6_98

def body6_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(361, 261)]

def body6_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(365, 341)]

def body6_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(369, 345)]

def body6_103 : WordLangProgHOL (BitVec 64) :=
.seq body6_101 body6_102

def body6_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(373, 349)]

def body6_105 : WordLangProgHOL (BitVec 64) :=
.seq body6_103 body6_104

def body6_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(377, 353)]

def body6_107 : WordLangProgHOL (BitVec 64) :=
.seq body6_105 body6_106

def body6_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 381 (Flapjack.WordLangAddr.addr 377 104#64))

def body6_109 : WordLangProgHOL (BitVec 64) :=
.seq body6_107 body6_108

def body6_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 385 361 (Flapjack.WordRegImm.reg 381)))

def body6_111 : WordLangProgHOL (BitVec 64) :=
.seq body6_109 body6_110

def body6_112 : WordLangProgHOL (BitVec 64) :=
.seq body6_100 body6_111

def body6_113 : WordLangProgHOL (BitVec 64) :=
.seq body6_99 body6_112

def body6_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(389, 385)]

def body6_115 : WordLangProgHOL (BitVec 64) :=
.seq body6_113 body6_114

def body6_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(393, 357)]

def body6_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 389 (Flapjack.WordLangAddr.addr 393 0#64))

def body6_118 : WordLangProgHOL (BitVec 64) :=
.seq body6_116 body6_117

def body6_119 : WordLangProgHOL (BitVec 64) :=
.seq body6_115 body6_118

def body6_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(397, 253)]

def body6_121 : WordLangProgHOL (BitVec 64) :=
.seq body6_119 body6_120

def body6_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 401 0#64)

def body6_123 : WordLangProgHOL (BitVec 64) :=
.seq body6_121 body6_122

def body6_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(413, 365)]

def body6_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(417, 369)]

def body6_126 : WordLangProgHOL (BitVec 64) :=
.seq body6_124 body6_125

def body6_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(421, 373)]

def body6_128 : WordLangProgHOL (BitVec 64) :=
.seq body6_126 body6_127

def body6_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 425 (Flapjack.WordLangAddr.addr 421 18446744073709551248#64))

def body6_130 : WordLangProgHOL (BitVec 64) :=
.seq body6_128 body6_129

def body6_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 429 425 (Flapjack.WordRegImm.imm 112#64)))

def body6_132 : WordLangProgHOL (BitVec 64) :=
.seq body6_130 body6_131

def body6_133 : WordLangProgHOL (BitVec 64) :=
.seq body6_25 body6_132

def body6_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(433, 413)]

def body6_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(437, 417)]

def body6_136 : WordLangProgHOL (BitVec 64) :=
.seq body6_134 body6_135

def body6_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(441, 421)]

def body6_138 : WordLangProgHOL (BitVec 64) :=
.seq body6_136 body6_137

def body6_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(445, 425)]

def body6_140 : WordLangProgHOL (BitVec 64) :=
.seq body6_138 body6_139

def body6_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 449 (Flapjack.WordLangAddr.addr 445 112#64))

def body6_142 : WordLangProgHOL (BitVec 64) :=
.seq body6_140 body6_141

def body6_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 453 449 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def body6_144 : WordLangProgHOL (BitVec 64) :=
.seq body6_142 body6_143

def body6_145 : WordLangProgHOL (BitVec 64) :=
.seq body6_133 body6_144

def body6_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(457, 453)]

def body6_147 : WordLangProgHOL (BitVec 64) :=
.seq body6_145 body6_146

def body6_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(461, 429)]

def body6_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 457 (Flapjack.WordLangAddr.addr 461 0#64))

def body6_150 : WordLangProgHOL (BitVec 64) :=
.seq body6_148 body6_149

def body6_151 : WordLangProgHOL (BitVec 64) :=
.seq body6_147 body6_150

def body6_152 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 397 (Flapjack.WordRegImm.reg 401) body6_151 body6_25

def body6_153 : WordLangProgHOL (BitVec 64) :=
.seq body6_123 body6_152

def body6_154 : WordLangProgHOL (BitVec 64) :=
.seq body6_153 body6_25

def body6_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(493, 285)]

def body6_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(497, 289)]

def body6_157 : WordLangProgHOL (BitVec 64) :=
.seq body6_155 body6_156

def body6_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(501, 293)]

def body6_159 : WordLangProgHOL (BitVec 64) :=
.seq body6_157 body6_158

def body6_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 505 (Flapjack.WordLangAddr.addr 501 18446744073709551240#64))

def body6_161 : WordLangProgHOL (BitVec 64) :=
.seq body6_159 body6_160

def body6_162 : WordLangProgHOL (BitVec 64) :=
.seq body6_154 body6_161

def body6_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(509, 265)]

def body6_164 : WordLangProgHOL (BitVec 64) :=
.seq body6_162 body6_163

def body6_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 517 128#64)

def body6_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(523, 241), (527, 305), (531, 249), (535, 397), (539, 257), (543, 361), (547, 509)]

def body6_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 505), (4, 509), (6, 517)]

def body6_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(553, 523), (557, 527), (561, 531), (565, 535), (569, 539), (573, 543), (577, 547)]

def body6_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(585, 2)]

def body6_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 585)]

def body6_171 : WordLangProgHOL (BitVec 64) :=
.seq body6_170 body6_17

def body6_172 : WordLangProgHOL (BitVec 64) :=
.seq body6_169 body6_171

def body6_173 : WordLangProgHOL (BitVec 64) :=
.seq body6_168 body6_172

def body6_174 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body6_168, 635, 6)) (some 77) ([2, 4, 6]) (some (2, body6_173, 635, 7))

def body6_175 : WordLangProgHOL (BitVec 64) :=
.seq body6_167 body6_174

def body6_176 : WordLangProgHOL (BitVec 64) :=
.seq body6_166 body6_175

def body6_177 : WordLangProgHOL (BitVec 64) :=
.seq body6_165 body6_176

def body6_178 : WordLangProgHOL (BitVec 64) :=
.seq body6_164 body6_177

def body6_179 : WordLangProgHOL (BitVec 64) :=
.seq body6_178 body6_25

def body6_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 597 0#64)

def body6_181 : WordLangProgHOL (BitVec 64) :=
.seq body6_179 body6_180

def body6_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 601 0#64)

def body6_183 : WordLangProgHOL (BitVec 64) :=
.seq body6_181 body6_182

def body6_184 : WordLangProgHOL (BitVec 64) :=
.seq body6_183 body6_25

def body6_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(605, 553), (609, 557), (613, 561), (617, 565), (621, 569), (625, 573), (629, 597), (633, 577), (637, 601)]

def body6_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(641, 629)]

def body6_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(645, 621)]

def body6_188 : WordLangProgHOL (BitVec 64) :=
.seq body6_186 body6_187

def body6_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 657 Flapjack.WordStore.heapLength

def body6_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 661 657 (Flapjack.WordRegImm.imm 1#64)))

def body6_191 : WordLangProgHOL (BitVec 64) :=
.seq body6_189 body6_190

def body6_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 665 661

def body6_193 : WordLangProgHOL (BitVec 64) :=
.seq body6_191 body6_192

def body6_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 669 (Flapjack.WordLangAddr.addr 665 18446744073709551232#64))

def body6_195 : WordLangProgHOL (BitVec 64) :=
.seq body6_193 body6_194

def body6_196 : WordLangProgHOL (BitVec 64) :=
.seq body6_25 body6_195

def body6_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(673, 637)]

def body6_198 : WordLangProgHOL (BitVec 64) :=
.seq body6_196 body6_197

def body6_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(677, 673)]

def body6_200 : WordLangProgHOL (BitVec 64) :=
.seq body6_198 body6_199

def body6_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(681, 669)]

def body6_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 677 (Flapjack.WordLangAddr.addr 681 0#64))

def body6_203 : WordLangProgHOL (BitVec 64) :=
.seq body6_201 body6_202

def body6_204 : WordLangProgHOL (BitVec 64) :=
.seq body6_200 body6_203

def body6_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(685, 657)]

def body6_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(689, 661)]

def body6_207 : WordLangProgHOL (BitVec 64) :=
.seq body6_205 body6_206

def body6_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(693, 665)]

def body6_209 : WordLangProgHOL (BitVec 64) :=
.seq body6_207 body6_208

def body6_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 697 (Flapjack.WordLangAddr.addr 693 18446744073709551232#64))

def body6_211 : WordLangProgHOL (BitVec 64) :=
.seq body6_209 body6_210

def body6_212 : WordLangProgHOL (BitVec 64) :=
.seq body6_204 body6_211

def body6_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(705, 685)]

def body6_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(709, 689)]

def body6_215 : WordLangProgHOL (BitVec 64) :=
.seq body6_213 body6_214

def body6_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(713, 693)]

def body6_217 : WordLangProgHOL (BitVec 64) :=
.seq body6_215 body6_216

def body6_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(717, 697)]

def body6_219 : WordLangProgHOL (BitVec 64) :=
.seq body6_217 body6_218

def body6_220 : WordLangProgHOL (BitVec 64) :=
.seq body6_212 body6_219

def body6_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 733 264#64)

def body6_222 : WordLangProgHOL (BitVec 64) :=
.seq body6_220 body6_221

def body6_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 737 0#64)

def body6_224 : WordLangProgHOL (BitVec 64) :=
.seq body6_222 body6_223

def body6_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(743, 605), (747, 609), (751, 613), (755, 617), (759, 645), (763, 625), (767, 641), (771, 633), (775, 677)]

def body6_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 717), (4, 737), (6, 717), (8, 733)]

def body6_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.ffi
  (Flapjack.Basis.Pure.MlString.MlString.implode
    [98#8, 108#8, 97#8, 107#8, 101#8, 50#8, 98#8, 114#8, 111#8, 117#8, 110#8, 100#8])
  2 4 6 8
  (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))))),
    Flapjack.Spt.ln)

def body6_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(781, 743), (785, 747), (789, 751), (793, 755), (797, 759), (801, 763), (805, 767), (809, 771), (813, 775)]

def body6_229 : WordLangProgHOL (BitVec 64) :=
.seq body6_227 body6_228

def body6_230 : WordLangProgHOL (BitVec 64) :=
.seq body6_226 body6_229

def body6_231 : WordLangProgHOL (BitVec 64) :=
.seq body6_225 body6_230

def body6_232 : WordLangProgHOL (BitVec 64) :=
.seq body6_224 body6_231

def body6_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(817, 805)]

def body6_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 821 817 (Flapjack.WordRegImm.imm 1#64)))

def body6_235 : WordLangProgHOL (BitVec 64) :=
.seq body6_233 body6_234

def body6_236 : WordLangProgHOL (BitVec 64) :=
.seq body6_232 body6_235

def body6_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(825, 821)]

def body6_238 : WordLangProgHOL (BitVec 64) :=
.seq body6_236 body6_237

def body6_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(829, 813)]

def body6_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 833 829 (Flapjack.WordRegImm.imm 1#64)))

def body6_241 : WordLangProgHOL (BitVec 64) :=
.seq body6_239 body6_240

def body6_242 : WordLangProgHOL (BitVec 64) :=
.seq body6_238 body6_241

def body6_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(837, 833)]

def body6_244 : WordLangProgHOL (BitVec 64) :=
.seq body6_242 body6_243

def body6_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(841, 837)]

def body6_246 : WordLangProgHOL (BitVec 64) :=
.seq body6_244 body6_245

def body6_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 845 10#64)

def body6_248 : WordLangProgHOL (BitVec 64) :=
.seq body6_246 body6_247

def body6_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 857 0#64)

def body6_250 : WordLangProgHOL (BitVec 64) :=
.seq body6_25 body6_249

def body6_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(869, 857)]

def body6_252 : WordLangProgHOL (BitVec 64) :=
.seq body6_250 body6_251

def body6_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(869, 841)]

def body6_254 : WordLangProgHOL (BitVec 64) :=
.seq body6_25 body6_253

def body6_255 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 841 (Flapjack.WordRegImm.reg 845) body6_252 body6_254

def body6_256 : WordLangProgHOL (BitVec 64) :=
.seq body6_248 body6_255

def body6_257 : WordLangProgHOL (BitVec 64) :=
.seq body6_256 body6_25

def body6_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(605, 781), (609, 785), (613, 789), (617, 793), (621, 797), (625, 801), (629, 825), (633, 809), (637, 869)]

def body6_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body6_260 : WordLangProgHOL (BitVec 64) :=
.seq body6_258 body6_259

def body6_261 : WordLangProgHOL (BitVec 64) :=
.seq body6_257 body6_260

def body6_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(933, 605), (925, 609), (917, 613), (913, 617), (909, 621), (901, 625), (897, 629), (893, 633), (889, 637)]

def body6_263 : WordLangProgHOL (BitVec 64) :=
.seq body6_261 body6_262

def body6_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(621, 645), (629, 641)]

def body6_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body6_266 : WordLangProgHOL (BitVec 64) :=
.seq body6_264 body6_265

def body6_267 : WordLangProgHOL (BitVec 64) :=
.seq body6_25 body6_266

def body6_268 : WordLangProgHOL (BitVec 64) :=
.seq body6_267 body6_262

def body6_269 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 641 (Flapjack.WordRegImm.reg 645) body6_263 body6_268

def body6_270 : WordLangProgHOL (BitVec 64) :=
.seq body6_188 body6_269

def body6_271 : WordLangProgHOL (BitVec 64) :=
.seq body6_270 body6_25

def body6_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(605, 933), (609, 925), (613, 917), (617, 913), (621, 909), (625, 901), (629, 897), (633, 893), (637, 889)]

def body6_273 : WordLangProgHOL (BitVec 64) :=
.seq body6_271 body6_272

def body6_274 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)) body6_273 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln))

def body6_275 : WordLangProgHOL (BitVec 64) :=
.seq body6_185 body6_274

def body6_276 : WordLangProgHOL (BitVec 64) :=
.seq body6_184 body6_275

def body6_277 : WordLangProgHOL (BitVec 64) :=
.seq body6_276 body6_25

def body6_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 945 0#64)

def body6_279 : WordLangProgHOL (BitVec 64) :=
.seq body6_277 body6_278

def body6_280 : WordLangProgHOL (BitVec 64) :=
.seq body6_279 body6_25

def body6_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(949, 605), (953, 609), (957, 613), (961, 945), (965, 617), (969, 621), (973, 625), (977, 629), (981, 633),
    (985, 637)]

def body6_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(989, 961)]

def body6_283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 993 8#64)

def body6_284 : WordLangProgHOL (BitVec 64) :=
.seq body6_282 body6_283

def body6_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1005, 989)]

def body6_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1009 1005 (Flapjack.WordRegImm.imm 3#64)))

def body6_287 : WordLangProgHOL (BitVec 64) :=
.seq body6_285 body6_286

def body6_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1013, 957)]

def body6_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1017 1009 (Flapjack.WordRegImm.reg 1013)))

def body6_290 : WordLangProgHOL (BitVec 64) :=
.seq body6_288 body6_289

def body6_291 : WordLangProgHOL (BitVec 64) :=
.seq body6_287 body6_290

def body6_292 : WordLangProgHOL (BitVec 64) :=
.seq body6_25 body6_291

def body6_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1021, 1005)]

def body6_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1025 1021 (Flapjack.WordRegImm.imm 8#64)))

def body6_295 : WordLangProgHOL (BitVec 64) :=
.seq body6_293 body6_294

def body6_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1029 1025 (Flapjack.WordRegImm.imm 3#64)))

def body6_297 : WordLangProgHOL (BitVec 64) :=
.seq body6_295 body6_296

def body6_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 1033 Flapjack.WordStore.heapLength

def body6_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1037 1033 (Flapjack.WordRegImm.imm 1#64)))

def body6_300 : WordLangProgHOL (BitVec 64) :=
.seq body6_298 body6_299

def body6_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1041 1037

def body6_302 : WordLangProgHOL (BitVec 64) :=
.seq body6_300 body6_301

def body6_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1045 (Flapjack.WordLangAddr.addr 1041 18446744073709551248#64))

def body6_304 : WordLangProgHOL (BitVec 64) :=
.seq body6_302 body6_303

def body6_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1049 1029 (Flapjack.WordRegImm.reg 1045)))

def body6_306 : WordLangProgHOL (BitVec 64) :=
.seq body6_304 body6_305

def body6_307 : WordLangProgHOL (BitVec 64) :=
.seq body6_297 body6_306

def body6_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1053 (Flapjack.WordLangAddr.addr 1049 0#64))

def body6_309 : WordLangProgHOL (BitVec 64) :=
.seq body6_307 body6_308

def body6_310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1057, 1021)]

def body6_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1061, 1009)]

def body6_312 : WordLangProgHOL (BitVec 64) :=
.seq body6_310 body6_311

def body6_313 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1065, 1033)]

def body6_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1069, 1037)]

def body6_315 : WordLangProgHOL (BitVec 64) :=
.seq body6_313 body6_314

def body6_316 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1073, 1041)]

def body6_317 : WordLangProgHOL (BitVec 64) :=
.seq body6_315 body6_316

def body6_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1077, 1045)]

def body6_319 : WordLangProgHOL (BitVec 64) :=
.seq body6_317 body6_318

def body6_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1081 1061 (Flapjack.WordRegImm.reg 1077)))

def body6_321 : WordLangProgHOL (BitVec 64) :=
.seq body6_319 body6_320

def body6_322 : WordLangProgHOL (BitVec 64) :=
.seq body6_312 body6_321

def body6_323 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1085 (Flapjack.WordLangAddr.addr 1081 0#64))

def body6_324 : WordLangProgHOL (BitVec 64) :=
.seq body6_322 body6_323

def body6_325 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 1089 1053 (Flapjack.WordRegImm.reg 1085)))

def body6_326 : WordLangProgHOL (BitVec 64) :=
.seq body6_324 body6_325

def body6_327 : WordLangProgHOL (BitVec 64) :=
.seq body6_309 body6_326

def body6_328 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1093, 1057)]

def body6_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1097, 1061)]

def body6_330 : WordLangProgHOL (BitVec 64) :=
.seq body6_328 body6_329

def body6_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1101, 1013)]

def body6_332 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1105, 1017)]

def body6_333 : WordLangProgHOL (BitVec 64) :=
.seq body6_331 body6_332

def body6_334 : WordLangProgHOL (BitVec 64) :=
.seq body6_330 body6_333

def body6_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1109 (Flapjack.WordLangAddr.addr 1105 0#64))

def body6_336 : WordLangProgHOL (BitVec 64) :=
.seq body6_334 body6_335

def body6_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 1113 1089 (Flapjack.WordRegImm.reg 1109)))

def body6_338 : WordLangProgHOL (BitVec 64) :=
.seq body6_336 body6_337

def body6_339 : WordLangProgHOL (BitVec 64) :=
.seq body6_327 body6_338

def body6_340 : WordLangProgHOL (BitVec 64) :=
.seq body6_292 body6_339

def body6_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1117, 1113)]

def body6_342 : WordLangProgHOL (BitVec 64) :=
.seq body6_340 body6_341

def body6_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1121, 1105)]

def body6_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1117 (Flapjack.WordLangAddr.addr 1121 0#64))

def body6_345 : WordLangProgHOL (BitVec 64) :=
.seq body6_343 body6_344

def body6_346 : WordLangProgHOL (BitVec 64) :=
.seq body6_342 body6_345

def body6_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1125, 1093)]

def body6_348 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1129 1125 (Flapjack.WordRegImm.imm 1#64)))

def body6_349 : WordLangProgHOL (BitVec 64) :=
.seq body6_347 body6_348

def body6_350 : WordLangProgHOL (BitVec 64) :=
.seq body6_346 body6_349

def body6_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1133, 1129)]

def body6_352 : WordLangProgHOL (BitVec 64) :=
.seq body6_350 body6_351

def body6_353 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(957, 1101), (961, 1133)]

def body6_354 : WordLangProgHOL (BitVec 64) :=
.seq body6_353 body6_259

def body6_355 : WordLangProgHOL (BitVec 64) :=
.seq body6_352 body6_354

def body6_356 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1153, 957), (1149, 961)]

def body6_357 : WordLangProgHOL (BitVec 64) :=
.seq body6_355 body6_356

def body6_358 : WordLangProgHOL (BitVec 64) :=
.seq body6_25 body6_265

def body6_359 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1153, 957), (1149, 989)]

def body6_360 : WordLangProgHOL (BitVec 64) :=
.seq body6_358 body6_359

def body6_361 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 989 (Flapjack.WordRegImm.reg 993) body6_357 body6_360

def body6_362 : WordLangProgHOL (BitVec 64) :=
.seq body6_284 body6_361

def body6_363 : WordLangProgHOL (BitVec 64) :=
.seq body6_362 body6_25

def body6_364 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(957, 1153), (961, 1149)]

def body6_365 : WordLangProgHOL (BitVec 64) :=
.seq body6_363 body6_364

def body6_366 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)) body6_365 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln))

def body6_367 : WordLangProgHOL (BitVec 64) :=
.seq body6_281 body6_366

def body6_368 : WordLangProgHOL (BitVec 64) :=
.seq body6_280 body6_367

def body6_369 : WordLangProgHOL (BitVec 64) :=
.seq body6_368 body6_25

def body6_370 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1181 0#64)

def body6_371 : WordLangProgHOL (BitVec 64) :=
.seq body6_369 body6_370

def body6_372 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 1181)]

def body6_373 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 949 [2]

def body6_374 : WordLangProgHOL (BitVec 64) :=
.seq body6_372 body6_373

def body6_375 : WordLangProgHOL (BitVec 64) :=
.seq body6_371 body6_374

def body6_376 : WordLangProgHOL (BitVec 64) :=
.seq body6_0 body6_375

def pass6 : WordLangProgHOL (BitVec 64) := body6_376
def body7_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(33, 0), (37, 2), (41, 4), (45, 6), (49, 8), (53, 10), (57, 12)]

def body7_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 61 Flapjack.WordStore.heapLength

def body7_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 65 61 (Flapjack.WordRegImm.imm 1#64)))

def body7_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 69 65

def body7_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 73 (Flapjack.WordLangAddr.addr 69 18446744073709551248#64))

def body7_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 41)]

def body7_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 64#64)

def body7_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 73), (4, 77), (6, 85), (91, 33), (95, 49), (99, 77), (103, 57), (107, 37), (111, 53), (115, 45)]

def body7_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(121, 91), (125, 95), (129, 99), (133, 103), (137, 107), (141, 111), (145, 115)]

def body7_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (153, 2), (121, 91), (125, 95), (129, 99), (133, 103), (137, 107), (141, 111), (145, 115)]

def body7_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body7_11 : WordLangProgHOL (BitVec 64) :=
.seq body7_9 body7_10

def body7_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body7_8, 635, 2)) (some 77) ([2, 4, 6]) (some (2, body7_11, 635, 3))

def body7_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body7_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 165 Flapjack.WordStore.heapLength

def body7_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 169 165 (Flapjack.WordRegImm.imm 1#64)))

def body7_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 173 169

def body7_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 177 (Flapjack.WordLangAddr.addr 173 18446744073709551248#64))

def body7_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 181 177 (Flapjack.WordRegImm.imm 64#64)))

def body7_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(193, 173), (189, 169), (185, 165)]

def body7_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 197 (Flapjack.WordLangAddr.addr 193 18446744073709551256#64))

def body7_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 205 64#64)

def body7_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 181), (4, 197), (6, 205), (211, 121), (215, 125), (219, 129), (223, 133), (227, 137), (231, 141), (235, 145)]

def body7_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(241, 211), (245, 215), (249, 219), (253, 223), (257, 227), (261, 231), (265, 235)]

def body7_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (273, 2), (241, 211), (245, 215), (249, 219), (253, 223), (257, 227), (261, 231), (265, 235)]

def body7_25 : WordLangProgHOL (BitVec 64) :=
.seq body7_24 body7_10

def body7_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body7_23, 635, 4)) (some 77) ([2, 4, 6]) (some (2, body7_25, 635, 5))

def body7_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 285 Flapjack.WordStore.heapLength

def body7_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 289 285 (Flapjack.WordRegImm.imm 1#64)))

def body7_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 293 289

def body7_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 297 (Flapjack.WordLangAddr.addr 293 18446744073709551248#64))

def body7_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 301 297 (Flapjack.WordRegImm.imm 96#64)))

def body7_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(321, 297), (317, 293), (313, 289), (309, 285), (305, 245)]

def body7_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 325 (Flapjack.WordLangAddr.addr 321 96#64))

def body7_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 329 305 (Flapjack.WordRegImm.reg 325)))

def body7_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(337, 301), (333, 329)]

def body7_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 333 (Flapjack.WordLangAddr.addr 337 0#64))

def body7_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(349, 317), (345, 313), (341, 309)]

def body7_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 353 (Flapjack.WordLangAddr.addr 349 18446744073709551248#64))

def body7_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 357 353 (Flapjack.WordRegImm.imm 104#64)))

def body7_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(377, 353), (373, 349), (369, 345), (365, 341), (361, 261)]

def body7_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 381 (Flapjack.WordLangAddr.addr 377 104#64))

def body7_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 385 361 (Flapjack.WordRegImm.reg 381)))

def body7_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(393, 357), (389, 385)]

def body7_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 389 (Flapjack.WordLangAddr.addr 393 0#64))

def body7_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(397, 253)]

def body7_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 401 0#64)

def body7_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(421, 373), (417, 369), (413, 365)]

def body7_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 425 (Flapjack.WordLangAddr.addr 421 18446744073709551248#64))

def body7_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 429 425 (Flapjack.WordRegImm.imm 112#64)))

def body7_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(445, 425), (441, 421), (437, 417), (433, 413)]

def body7_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 449 (Flapjack.WordLangAddr.addr 445 112#64))

def body7_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 453 449 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def body7_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(461, 429), (457, 453)]

def body7_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 457 (Flapjack.WordLangAddr.addr 461 0#64))

def body7_55 : WordLangProgHOL (BitVec 64) :=
.seq body7_53 body7_54

def body7_56 : WordLangProgHOL (BitVec 64) :=
.seq body7_52 body7_55

def body7_57 : WordLangProgHOL (BitVec 64) :=
.seq body7_51 body7_56

def body7_58 : WordLangProgHOL (BitVec 64) :=
.seq body7_50 body7_57

def body7_59 : WordLangProgHOL (BitVec 64) :=
.seq body7_49 body7_58

def body7_60 : WordLangProgHOL (BitVec 64) :=
.seq body7_48 body7_59

def body7_61 : WordLangProgHOL (BitVec 64) :=
.seq body7_47 body7_60

def body7_62 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_61

def body7_63 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 397 (Flapjack.WordRegImm.reg 401) body7_62 body7_13

def body7_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(501, 293), (497, 289), (493, 285)]

def body7_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 505 (Flapjack.WordLangAddr.addr 501 18446744073709551240#64))

def body7_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(509, 265)]

def body7_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 517 128#64)

def body7_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 505), (4, 509), (6, 517), (523, 241), (527, 305), (531, 249), (535, 397), (539, 257), (543, 361), (547, 509)]

def body7_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(553, 523), (557, 527), (561, 531), (565, 535), (569, 539), (573, 543), (577, 547)]

def body7_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (585, 2), (553, 523), (557, 527), (561, 531), (565, 535), (569, 539), (573, 543), (577, 547)]

def body7_71 : WordLangProgHOL (BitVec 64) :=
.seq body7_70 body7_10

def body7_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body7_69, 635, 6)) (some 77) ([2, 4, 6]) (some (2, body7_71, 635, 7))

def body7_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 597 0#64)

def body7_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 601 0#64)

def body7_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(605, 553), (609, 557), (613, 561), (617, 565), (621, 569), (625, 573), (629, 597), (633, 577), (637, 601)]

def body7_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(645, 621), (641, 629)]

def body7_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 657 Flapjack.WordStore.heapLength

def body7_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 661 657 (Flapjack.WordRegImm.imm 1#64)))

def body7_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 665 661

def body7_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 669 (Flapjack.WordLangAddr.addr 665 18446744073709551232#64))

def body7_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(681, 669), (677, 637), (673, 637)]

def body7_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 677 (Flapjack.WordLangAddr.addr 681 0#64))

def body7_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(693, 665), (689, 661), (685, 657)]

def body7_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 697 (Flapjack.WordLangAddr.addr 693 18446744073709551232#64))

def body7_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(717, 697), (713, 693), (709, 689), (705, 685)]

def body7_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 733 264#64)

def body7_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 737 0#64)

def body7_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 717), (4, 737), (6, 717), (8, 733), (743, 605), (747, 609), (751, 613), (755, 617), (759, 645), (763, 625),
    (767, 641), (771, 633), (775, 677)]

def body7_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.ffi
  (Flapjack.Basis.Pure.MlString.MlString.implode
    [98#8, 108#8, 97#8, 107#8, 101#8, 50#8, 98#8, 114#8, 111#8, 117#8, 110#8, 100#8])
  2 4 6 8
  (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))))),
    Flapjack.Spt.ln)

def body7_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(817, 767), (781, 743), (785, 747), (789, 751), (793, 755), (797, 759), (801, 763), (805, 767), (809, 771),
    (813, 775)]

def body7_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 821 817 (Flapjack.WordRegImm.imm 1#64)))

def body7_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(829, 813), (825, 821)]

def body7_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 833 829 (Flapjack.WordRegImm.imm 1#64)))

def body7_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(841, 833), (837, 833)]

def body7_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 845 10#64)

def body7_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 857 0#64)

def body7_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(869, 857)]

def body7_98 : WordLangProgHOL (BitVec 64) :=
.seq body7_96 body7_97

def body7_99 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_98

def body7_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(869, 841)]

def body7_101 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_100

def body7_102 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 841 (Flapjack.WordRegImm.reg 845) body7_99 body7_101

def body7_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(605, 781), (609, 785), (613, 789), (617, 793), (621, 797), (625, 801), (629, 825), (633, 809), (637, 869)]

def body7_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body7_105 : WordLangProgHOL (BitVec 64) :=
.seq body7_103 body7_104

def body7_106 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_105

def body7_107 : WordLangProgHOL (BitVec 64) :=
.seq body7_102 body7_106

def body7_108 : WordLangProgHOL (BitVec 64) :=
.seq body7_95 body7_107

def body7_109 : WordLangProgHOL (BitVec 64) :=
.seq body7_94 body7_108

def body7_110 : WordLangProgHOL (BitVec 64) :=
.seq body7_93 body7_109

def body7_111 : WordLangProgHOL (BitVec 64) :=
.seq body7_92 body7_110

def body7_112 : WordLangProgHOL (BitVec 64) :=
.seq body7_91 body7_111

def body7_113 : WordLangProgHOL (BitVec 64) :=
.seq body7_90 body7_112

def body7_114 : WordLangProgHOL (BitVec 64) :=
.seq body7_89 body7_113

def body7_115 : WordLangProgHOL (BitVec 64) :=
.seq body7_88 body7_114

def body7_116 : WordLangProgHOL (BitVec 64) :=
.seq body7_87 body7_115

def body7_117 : WordLangProgHOL (BitVec 64) :=
.seq body7_86 body7_116

def body7_118 : WordLangProgHOL (BitVec 64) :=
.seq body7_85 body7_117

def body7_119 : WordLangProgHOL (BitVec 64) :=
.seq body7_84 body7_118

def body7_120 : WordLangProgHOL (BitVec 64) :=
.seq body7_83 body7_119

def body7_121 : WordLangProgHOL (BitVec 64) :=
.seq body7_82 body7_120

def body7_122 : WordLangProgHOL (BitVec 64) :=
.seq body7_81 body7_121

def body7_123 : WordLangProgHOL (BitVec 64) :=
.seq body7_80 body7_122

def body7_124 : WordLangProgHOL (BitVec 64) :=
.seq body7_79 body7_123

def body7_125 : WordLangProgHOL (BitVec 64) :=
.seq body7_78 body7_124

def body7_126 : WordLangProgHOL (BitVec 64) :=
.seq body7_77 body7_125

def body7_127 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_126

def body7_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(621, 645), (629, 641)]

def body7_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body7_130 : WordLangProgHOL (BitVec 64) :=
.seq body7_128 body7_129

def body7_131 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_130

def body7_132 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 641 (Flapjack.WordRegImm.reg 645) body7_127 body7_131

def body7_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(605, 933), (609, 925), (613, 917), (617, 913), (621, 909), (625, 901), (629, 897), (633, 893), (637, 889)]

def body7_134 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_133

def body7_135 : WordLangProgHOL (BitVec 64) :=
.seq body7_132 body7_134

def body7_136 : WordLangProgHOL (BitVec 64) :=
.seq body7_76 body7_135

def body7_137 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)) body7_136 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln))

def body7_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 945 0#64)

def body7_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(949, 605), (953, 609), (957, 613), (961, 945), (965, 617), (969, 621), (973, 625), (977, 629), (981, 633),
    (985, 637)]

def body7_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(989, 961)]

def body7_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 993 8#64)

def body7_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1005, 989)]

def body7_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1009 1005 (Flapjack.WordRegImm.imm 3#64)))

def body7_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1013, 957)]

def body7_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1017 1009 (Flapjack.WordRegImm.reg 1013)))

def body7_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1021, 1005)]

def body7_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1025 1021 (Flapjack.WordRegImm.imm 8#64)))

def body7_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1029 1025 (Flapjack.WordRegImm.imm 3#64)))

def body7_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 1033 Flapjack.WordStore.heapLength

def body7_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1037 1033 (Flapjack.WordRegImm.imm 1#64)))

def body7_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1041 1037

def body7_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1045 (Flapjack.WordLangAddr.addr 1041 18446744073709551248#64))

def body7_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1049 1029 (Flapjack.WordRegImm.reg 1045)))

def body7_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1053 (Flapjack.WordLangAddr.addr 1049 0#64))

def body7_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1077, 1045), (1073, 1041), (1069, 1037), (1065, 1033), (1061, 1009), (1057, 1021)]

def body7_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1081 1061 (Flapjack.WordRegImm.reg 1077)))

def body7_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1085 (Flapjack.WordLangAddr.addr 1081 0#64))

def body7_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 1089 1053 (Flapjack.WordRegImm.reg 1085)))

def body7_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1105, 1017), (1101, 1013), (1097, 1061), (1093, 1057)]

def body7_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1109 (Flapjack.WordLangAddr.addr 1105 0#64))

def body7_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 1113 1089 (Flapjack.WordRegImm.reg 1109)))

def body7_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1121, 1105), (1117, 1113)]

def body7_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1117 (Flapjack.WordLangAddr.addr 1121 0#64))

def body7_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1125, 1093)]

def body7_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1129 1125 (Flapjack.WordRegImm.imm 1#64)))

def body7_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(957, 1101), (961, 1129), (1133, 1129)]

def body7_167 : WordLangProgHOL (BitVec 64) :=
.seq body7_166 body7_104

def body7_168 : WordLangProgHOL (BitVec 64) :=
.seq body7_165 body7_167

def body7_169 : WordLangProgHOL (BitVec 64) :=
.seq body7_164 body7_168

def body7_170 : WordLangProgHOL (BitVec 64) :=
.seq body7_163 body7_169

def body7_171 : WordLangProgHOL (BitVec 64) :=
.seq body7_162 body7_170

def body7_172 : WordLangProgHOL (BitVec 64) :=
.seq body7_161 body7_171

def body7_173 : WordLangProgHOL (BitVec 64) :=
.seq body7_160 body7_172

def body7_174 : WordLangProgHOL (BitVec 64) :=
.seq body7_159 body7_173

def body7_175 : WordLangProgHOL (BitVec 64) :=
.seq body7_158 body7_174

def body7_176 : WordLangProgHOL (BitVec 64) :=
.seq body7_157 body7_175

def body7_177 : WordLangProgHOL (BitVec 64) :=
.seq body7_156 body7_176

def body7_178 : WordLangProgHOL (BitVec 64) :=
.seq body7_155 body7_177

def body7_179 : WordLangProgHOL (BitVec 64) :=
.seq body7_154 body7_178

def body7_180 : WordLangProgHOL (BitVec 64) :=
.seq body7_153 body7_179

def body7_181 : WordLangProgHOL (BitVec 64) :=
.seq body7_152 body7_180

def body7_182 : WordLangProgHOL (BitVec 64) :=
.seq body7_151 body7_181

def body7_183 : WordLangProgHOL (BitVec 64) :=
.seq body7_150 body7_182

def body7_184 : WordLangProgHOL (BitVec 64) :=
.seq body7_149 body7_183

def body7_185 : WordLangProgHOL (BitVec 64) :=
.seq body7_148 body7_184

def body7_186 : WordLangProgHOL (BitVec 64) :=
.seq body7_147 body7_185

def body7_187 : WordLangProgHOL (BitVec 64) :=
.seq body7_146 body7_186

def body7_188 : WordLangProgHOL (BitVec 64) :=
.seq body7_145 body7_187

def body7_189 : WordLangProgHOL (BitVec 64) :=
.seq body7_144 body7_188

def body7_190 : WordLangProgHOL (BitVec 64) :=
.seq body7_143 body7_189

def body7_191 : WordLangProgHOL (BitVec 64) :=
.seq body7_142 body7_190

def body7_192 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_191

def body7_193 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_129

def body7_194 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 989 (Flapjack.WordRegImm.reg 993) body7_192 body7_193

def body7_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(957, 1153), (961, 1149)]

def body7_196 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_195

def body7_197 : WordLangProgHOL (BitVec 64) :=
.seq body7_194 body7_196

def body7_198 : WordLangProgHOL (BitVec 64) :=
.seq body7_141 body7_197

def body7_199 : WordLangProgHOL (BitVec 64) :=
.seq body7_140 body7_198

def body7_200 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)) body7_199 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln))

def body7_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1181 0#64)

def body7_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 1181)]

def body7_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 949 [2]

def body7_204 : WordLangProgHOL (BitVec 64) :=
.seq body7_202 body7_203

def body7_205 : WordLangProgHOL (BitVec 64) :=
.seq body7_201 body7_204

def body7_206 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_205

def body7_207 : WordLangProgHOL (BitVec 64) :=
.seq body7_200 body7_206

def body7_208 : WordLangProgHOL (BitVec 64) :=
.seq body7_139 body7_207

def body7_209 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_208

def body7_210 : WordLangProgHOL (BitVec 64) :=
.seq body7_138 body7_209

def body7_211 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_210

def body7_212 : WordLangProgHOL (BitVec 64) :=
.seq body7_137 body7_211

def body7_213 : WordLangProgHOL (BitVec 64) :=
.seq body7_75 body7_212

def body7_214 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_213

def body7_215 : WordLangProgHOL (BitVec 64) :=
.seq body7_74 body7_214

def body7_216 : WordLangProgHOL (BitVec 64) :=
.seq body7_73 body7_215

def body7_217 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_216

def body7_218 : WordLangProgHOL (BitVec 64) :=
.seq body7_72 body7_217

def body7_219 : WordLangProgHOL (BitVec 64) :=
.seq body7_68 body7_218

def body7_220 : WordLangProgHOL (BitVec 64) :=
.seq body7_67 body7_219

def body7_221 : WordLangProgHOL (BitVec 64) :=
.seq body7_66 body7_220

def body7_222 : WordLangProgHOL (BitVec 64) :=
.seq body7_65 body7_221

def body7_223 : WordLangProgHOL (BitVec 64) :=
.seq body7_64 body7_222

def body7_224 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_223

def body7_225 : WordLangProgHOL (BitVec 64) :=
.seq body7_63 body7_224

def body7_226 : WordLangProgHOL (BitVec 64) :=
.seq body7_46 body7_225

def body7_227 : WordLangProgHOL (BitVec 64) :=
.seq body7_45 body7_226

def body7_228 : WordLangProgHOL (BitVec 64) :=
.seq body7_44 body7_227

def body7_229 : WordLangProgHOL (BitVec 64) :=
.seq body7_43 body7_228

def body7_230 : WordLangProgHOL (BitVec 64) :=
.seq body7_42 body7_229

def body7_231 : WordLangProgHOL (BitVec 64) :=
.seq body7_41 body7_230

def body7_232 : WordLangProgHOL (BitVec 64) :=
.seq body7_40 body7_231

def body7_233 : WordLangProgHOL (BitVec 64) :=
.seq body7_39 body7_232

def body7_234 : WordLangProgHOL (BitVec 64) :=
.seq body7_38 body7_233

def body7_235 : WordLangProgHOL (BitVec 64) :=
.seq body7_37 body7_234

def body7_236 : WordLangProgHOL (BitVec 64) :=
.seq body7_36 body7_235

def body7_237 : WordLangProgHOL (BitVec 64) :=
.seq body7_35 body7_236

def body7_238 : WordLangProgHOL (BitVec 64) :=
.seq body7_34 body7_237

def body7_239 : WordLangProgHOL (BitVec 64) :=
.seq body7_33 body7_238

def body7_240 : WordLangProgHOL (BitVec 64) :=
.seq body7_32 body7_239

def body7_241 : WordLangProgHOL (BitVec 64) :=
.seq body7_31 body7_240

def body7_242 : WordLangProgHOL (BitVec 64) :=
.seq body7_30 body7_241

def body7_243 : WordLangProgHOL (BitVec 64) :=
.seq body7_29 body7_242

def body7_244 : WordLangProgHOL (BitVec 64) :=
.seq body7_28 body7_243

def body7_245 : WordLangProgHOL (BitVec 64) :=
.seq body7_27 body7_244

def body7_246 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_245

def body7_247 : WordLangProgHOL (BitVec 64) :=
.seq body7_26 body7_246

def body7_248 : WordLangProgHOL (BitVec 64) :=
.seq body7_22 body7_247

def body7_249 : WordLangProgHOL (BitVec 64) :=
.seq body7_21 body7_248

def body7_250 : WordLangProgHOL (BitVec 64) :=
.seq body7_20 body7_249

def body7_251 : WordLangProgHOL (BitVec 64) :=
.seq body7_19 body7_250

def body7_252 : WordLangProgHOL (BitVec 64) :=
.seq body7_18 body7_251

def body7_253 : WordLangProgHOL (BitVec 64) :=
.seq body7_17 body7_252

def body7_254 : WordLangProgHOL (BitVec 64) :=
.seq body7_16 body7_253

def body7_255 : WordLangProgHOL (BitVec 64) :=
.seq body7_15 body7_254

def body7_256 : WordLangProgHOL (BitVec 64) :=
.seq body7_14 body7_255

def body7_257 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_256

def body7_258 : WordLangProgHOL (BitVec 64) :=
.seq body7_12 body7_257

def body7_259 : WordLangProgHOL (BitVec 64) :=
.seq body7_7 body7_258

def body7_260 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_259

def body7_261 : WordLangProgHOL (BitVec 64) :=
.seq body7_5 body7_260

def body7_262 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_261

def body7_263 : WordLangProgHOL (BitVec 64) :=
.seq body7_3 body7_262

def body7_264 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_263

def body7_265 : WordLangProgHOL (BitVec 64) :=
.seq body7_1 body7_264

def body7_266 : WordLangProgHOL (BitVec 64) :=
.seq body7_0 body7_265

def pass7 : WordLangProgHOL (BitVec 64) := body7_266
def body8_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(33, 0), (37, 2), (41, 4), (45, 6), (49, 8), (53, 10), (57, 12)]

def body8_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 61 Flapjack.WordStore.heapLength

def body8_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 65 61 (Flapjack.WordRegImm.imm 1#64)))

def body8_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 69 65

def body8_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 73 (Flapjack.WordLangAddr.addr 69 18446744073709551248#64))

def body8_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(77, 41)]

def body8_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 64#64)

def body8_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 73), (4, 77), (6, 85), (91, 33), (95, 49), (99, 77), (103, 57), (107, 37), (111, 53), (115, 45)]

def body8_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(121, 91), (125, 95), (129, 99), (133, 103), (137, 107), (141, 111), (145, 115)]

def body8_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (121, 91), (125, 95), (129, 99), (133, 103), (137, 107), (141, 111), (145, 115)]

def body8_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body8_11 : WordLangProgHOL (BitVec 64) :=
.seq body8_9 body8_10

def body8_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body8_8, 635, 2)) (some 77) ([2, 4, 6]) (some (2, body8_11, 635, 3))

def body8_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body8_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 165 Flapjack.WordStore.heapLength

def body8_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 169 165 (Flapjack.WordRegImm.imm 1#64)))

def body8_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 173 169

def body8_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 177 (Flapjack.WordLangAddr.addr 173 18446744073709551248#64))

def body8_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 181 177 (Flapjack.WordRegImm.imm 64#64)))

def body8_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(193, 173)]

def body8_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 197 (Flapjack.WordLangAddr.addr 193 18446744073709551256#64))

def body8_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 205 64#64)

def body8_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 181), (4, 197), (6, 205), (211, 121), (215, 125), (219, 129), (223, 133), (227, 137), (231, 141), (235, 145)]

def body8_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(241, 211), (245, 215), (249, 219), (253, 223), (257, 227), (261, 231), (265, 235)]

def body8_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (241, 211), (245, 215), (249, 219), (253, 223), (257, 227), (261, 231), (265, 235)]

def body8_25 : WordLangProgHOL (BitVec 64) :=
.seq body8_24 body8_10

def body8_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body8_23, 635, 4)) (some 77) ([2, 4, 6]) (some (2, body8_25, 635, 5))

def body8_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 285 Flapjack.WordStore.heapLength

def body8_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 289 285 (Flapjack.WordRegImm.imm 1#64)))

def body8_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 293 289

def body8_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 297 (Flapjack.WordLangAddr.addr 293 18446744073709551248#64))

def body8_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 301 297 (Flapjack.WordRegImm.imm 96#64)))

def body8_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(321, 297), (317, 293), (305, 245)]

def body8_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 325 (Flapjack.WordLangAddr.addr 321 96#64))

def body8_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 329 305 (Flapjack.WordRegImm.reg 325)))

def body8_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(337, 301), (333, 329)]

def body8_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 333 (Flapjack.WordLangAddr.addr 337 0#64))

def body8_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(349, 317)]

def body8_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 353 (Flapjack.WordLangAddr.addr 349 18446744073709551248#64))

def body8_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 357 353 (Flapjack.WordRegImm.imm 104#64)))

def body8_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(377, 353), (373, 349), (361, 261)]

def body8_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 381 (Flapjack.WordLangAddr.addr 377 104#64))

def body8_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 385 361 (Flapjack.WordRegImm.reg 381)))

def body8_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(393, 357), (389, 385)]

def body8_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 389 (Flapjack.WordLangAddr.addr 393 0#64))

def body8_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(397, 253)]

def body8_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 401 0#64)

def body8_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(421, 373)]

def body8_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 425 (Flapjack.WordLangAddr.addr 421 18446744073709551248#64))

def body8_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 429 425 (Flapjack.WordRegImm.imm 112#64)))

def body8_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(445, 425)]

def body8_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 449 (Flapjack.WordLangAddr.addr 445 112#64))

def body8_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 453 449 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def body8_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(461, 429), (457, 453)]

def body8_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 457 (Flapjack.WordLangAddr.addr 461 0#64))

def body8_55 : WordLangProgHOL (BitVec 64) :=
.seq body8_53 body8_54

def body8_56 : WordLangProgHOL (BitVec 64) :=
.seq body8_52 body8_55

def body8_57 : WordLangProgHOL (BitVec 64) :=
.seq body8_51 body8_56

def body8_58 : WordLangProgHOL (BitVec 64) :=
.seq body8_50 body8_57

def body8_59 : WordLangProgHOL (BitVec 64) :=
.seq body8_49 body8_58

def body8_60 : WordLangProgHOL (BitVec 64) :=
.seq body8_48 body8_59

def body8_61 : WordLangProgHOL (BitVec 64) :=
.seq body8_47 body8_60

def body8_62 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_61

def body8_63 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 397 (Flapjack.WordRegImm.reg 401) body8_62 body8_13

def body8_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(501, 293)]

def body8_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 505 (Flapjack.WordLangAddr.addr 501 18446744073709551240#64))

def body8_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(509, 265)]

def body8_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 517 128#64)

def body8_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 505), (4, 509), (6, 517), (523, 241), (527, 305), (531, 249), (535, 397), (539, 257), (543, 361), (547, 509)]

def body8_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(553, 523), (557, 527), (561, 531), (565, 535), (569, 539), (573, 543), (577, 547)]

def body8_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (553, 523), (557, 527), (561, 531), (565, 535), (569, 539), (573, 543), (577, 547)]

def body8_71 : WordLangProgHOL (BitVec 64) :=
.seq body8_70 body8_10

def body8_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body8_69, 635, 6)) (some 77) ([2, 4, 6]) (some (2, body8_71, 635, 7))

def body8_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 597 0#64)

def body8_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 601 0#64)

def body8_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(605, 553), (609, 557), (613, 561), (617, 565), (621, 569), (625, 573), (629, 597), (633, 577), (637, 601)]

def body8_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(645, 621), (641, 629)]

def body8_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 657 Flapjack.WordStore.heapLength

def body8_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 661 657 (Flapjack.WordRegImm.imm 1#64)))

def body8_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 665 661

def body8_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 669 (Flapjack.WordLangAddr.addr 665 18446744073709551232#64))

def body8_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(681, 669), (677, 637)]

def body8_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 677 (Flapjack.WordLangAddr.addr 681 0#64))

def body8_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(693, 665)]

def body8_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 697 (Flapjack.WordLangAddr.addr 693 18446744073709551232#64))

def body8_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(717, 697)]

def body8_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 733 264#64)

def body8_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 737 0#64)

def body8_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 717), (4, 737), (6, 717), (8, 733), (743, 605), (747, 609), (751, 613), (755, 617), (759, 645), (763, 625),
    (767, 641), (771, 633), (775, 677)]

def body8_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.ffi
  (Flapjack.Basis.Pure.MlString.MlString.implode
    [98#8, 108#8, 97#8, 107#8, 101#8, 50#8, 98#8, 114#8, 111#8, 117#8, 110#8, 100#8])
  2 4 6 8
  (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))))),
    Flapjack.Spt.ln)

def body8_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(817, 767), (781, 743), (785, 747), (789, 751), (793, 755), (797, 759), (801, 763), (809, 771), (813, 775)]

def body8_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 821 817 (Flapjack.WordRegImm.imm 1#64)))

def body8_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(829, 813), (825, 821)]

def body8_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 833 829 (Flapjack.WordRegImm.imm 1#64)))

def body8_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(841, 833)]

def body8_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 845 10#64)

def body8_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 857 0#64)

def body8_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(869, 857)]

def body8_98 : WordLangProgHOL (BitVec 64) :=
.seq body8_96 body8_97

def body8_99 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_98

def body8_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(869, 841)]

def body8_101 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_100

def body8_102 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 841 (Flapjack.WordRegImm.reg 845) body8_99 body8_101

def body8_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(605, 781), (609, 785), (613, 789), (617, 793), (621, 797), (625, 801), (629, 825), (633, 809), (637, 869)]

def body8_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body8_105 : WordLangProgHOL (BitVec 64) :=
.seq body8_103 body8_104

def body8_106 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_105

def body8_107 : WordLangProgHOL (BitVec 64) :=
.seq body8_102 body8_106

def body8_108 : WordLangProgHOL (BitVec 64) :=
.seq body8_95 body8_107

def body8_109 : WordLangProgHOL (BitVec 64) :=
.seq body8_94 body8_108

def body8_110 : WordLangProgHOL (BitVec 64) :=
.seq body8_93 body8_109

def body8_111 : WordLangProgHOL (BitVec 64) :=
.seq body8_92 body8_110

def body8_112 : WordLangProgHOL (BitVec 64) :=
.seq body8_91 body8_111

def body8_113 : WordLangProgHOL (BitVec 64) :=
.seq body8_90 body8_112

def body8_114 : WordLangProgHOL (BitVec 64) :=
.seq body8_89 body8_113

def body8_115 : WordLangProgHOL (BitVec 64) :=
.seq body8_88 body8_114

def body8_116 : WordLangProgHOL (BitVec 64) :=
.seq body8_87 body8_115

def body8_117 : WordLangProgHOL (BitVec 64) :=
.seq body8_86 body8_116

def body8_118 : WordLangProgHOL (BitVec 64) :=
.seq body8_85 body8_117

def body8_119 : WordLangProgHOL (BitVec 64) :=
.seq body8_84 body8_118

def body8_120 : WordLangProgHOL (BitVec 64) :=
.seq body8_83 body8_119

def body8_121 : WordLangProgHOL (BitVec 64) :=
.seq body8_82 body8_120

def body8_122 : WordLangProgHOL (BitVec 64) :=
.seq body8_81 body8_121

def body8_123 : WordLangProgHOL (BitVec 64) :=
.seq body8_80 body8_122

def body8_124 : WordLangProgHOL (BitVec 64) :=
.seq body8_79 body8_123

def body8_125 : WordLangProgHOL (BitVec 64) :=
.seq body8_78 body8_124

def body8_126 : WordLangProgHOL (BitVec 64) :=
.seq body8_77 body8_125

def body8_127 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_126

def body8_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(621, 645), (629, 641)]

def body8_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body8_130 : WordLangProgHOL (BitVec 64) :=
.seq body8_128 body8_129

def body8_131 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_130

def body8_132 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 641 (Flapjack.WordRegImm.reg 645) body8_127 body8_131

def body8_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(605, 933), (609, 925), (613, 917), (617, 913), (621, 909), (625, 901), (629, 897), (633, 893), (637, 889)]

def body8_134 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_133

def body8_135 : WordLangProgHOL (BitVec 64) :=
.seq body8_132 body8_134

def body8_136 : WordLangProgHOL (BitVec 64) :=
.seq body8_76 body8_135

def body8_137 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)) body8_136 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln))

def body8_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 945 0#64)

def body8_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(949, 605), (953, 609), (957, 613), (961, 945), (965, 617), (969, 621), (973, 625), (977, 629), (981, 633),
    (985, 637)]

def body8_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(989, 961)]

def body8_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 993 8#64)

def body8_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1005, 989)]

def body8_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1009 1005 (Flapjack.WordRegImm.imm 3#64)))

def body8_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1013, 957)]

def body8_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1017 1009 (Flapjack.WordRegImm.reg 1013)))

def body8_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1021, 1005)]

def body8_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1025 1021 (Flapjack.WordRegImm.imm 8#64)))

def body8_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1029 1025 (Flapjack.WordRegImm.imm 3#64)))

def body8_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 1033 Flapjack.WordStore.heapLength

def body8_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1037 1033 (Flapjack.WordRegImm.imm 1#64)))

def body8_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1041 1037

def body8_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1045 (Flapjack.WordLangAddr.addr 1041 18446744073709551248#64))

def body8_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1049 1029 (Flapjack.WordRegImm.reg 1045)))

def body8_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1053 (Flapjack.WordLangAddr.addr 1049 0#64))

def body8_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1077, 1045), (1061, 1009), (1057, 1021)]

def body8_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1081 1061 (Flapjack.WordRegImm.reg 1077)))

def body8_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1085 (Flapjack.WordLangAddr.addr 1081 0#64))

def body8_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 1089 1053 (Flapjack.WordRegImm.reg 1085)))

def body8_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1105, 1017), (1101, 1013), (1093, 1057)]

def body8_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1109 (Flapjack.WordLangAddr.addr 1105 0#64))

def body8_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 1113 1089 (Flapjack.WordRegImm.reg 1109)))

def body8_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1121, 1105), (1117, 1113)]

def body8_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1117 (Flapjack.WordLangAddr.addr 1121 0#64))

def body8_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1125, 1093)]

def body8_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1129 1125 (Flapjack.WordRegImm.imm 1#64)))

def body8_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(957, 1101), (961, 1129)]

def body8_167 : WordLangProgHOL (BitVec 64) :=
.seq body8_166 body8_104

def body8_168 : WordLangProgHOL (BitVec 64) :=
.seq body8_165 body8_167

def body8_169 : WordLangProgHOL (BitVec 64) :=
.seq body8_164 body8_168

def body8_170 : WordLangProgHOL (BitVec 64) :=
.seq body8_163 body8_169

def body8_171 : WordLangProgHOL (BitVec 64) :=
.seq body8_162 body8_170

def body8_172 : WordLangProgHOL (BitVec 64) :=
.seq body8_161 body8_171

def body8_173 : WordLangProgHOL (BitVec 64) :=
.seq body8_160 body8_172

def body8_174 : WordLangProgHOL (BitVec 64) :=
.seq body8_159 body8_173

def body8_175 : WordLangProgHOL (BitVec 64) :=
.seq body8_158 body8_174

def body8_176 : WordLangProgHOL (BitVec 64) :=
.seq body8_157 body8_175

def body8_177 : WordLangProgHOL (BitVec 64) :=
.seq body8_156 body8_176

def body8_178 : WordLangProgHOL (BitVec 64) :=
.seq body8_155 body8_177

def body8_179 : WordLangProgHOL (BitVec 64) :=
.seq body8_154 body8_178

def body8_180 : WordLangProgHOL (BitVec 64) :=
.seq body8_153 body8_179

def body8_181 : WordLangProgHOL (BitVec 64) :=
.seq body8_152 body8_180

def body8_182 : WordLangProgHOL (BitVec 64) :=
.seq body8_151 body8_181

def body8_183 : WordLangProgHOL (BitVec 64) :=
.seq body8_150 body8_182

def body8_184 : WordLangProgHOL (BitVec 64) :=
.seq body8_149 body8_183

def body8_185 : WordLangProgHOL (BitVec 64) :=
.seq body8_148 body8_184

def body8_186 : WordLangProgHOL (BitVec 64) :=
.seq body8_147 body8_185

def body8_187 : WordLangProgHOL (BitVec 64) :=
.seq body8_146 body8_186

def body8_188 : WordLangProgHOL (BitVec 64) :=
.seq body8_145 body8_187

def body8_189 : WordLangProgHOL (BitVec 64) :=
.seq body8_144 body8_188

def body8_190 : WordLangProgHOL (BitVec 64) :=
.seq body8_143 body8_189

def body8_191 : WordLangProgHOL (BitVec 64) :=
.seq body8_142 body8_190

def body8_192 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_191

def body8_193 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_129

def body8_194 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 989 (Flapjack.WordRegImm.reg 993) body8_192 body8_193

def body8_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(957, 1153), (961, 1149)]

def body8_196 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_195

def body8_197 : WordLangProgHOL (BitVec 64) :=
.seq body8_194 body8_196

def body8_198 : WordLangProgHOL (BitVec 64) :=
.seq body8_141 body8_197

def body8_199 : WordLangProgHOL (BitVec 64) :=
.seq body8_140 body8_198

def body8_200 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)) body8_199 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln))

def body8_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1181 0#64)

def body8_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 1181)]

def body8_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 949 [2]

def body8_204 : WordLangProgHOL (BitVec 64) :=
.seq body8_202 body8_203

def body8_205 : WordLangProgHOL (BitVec 64) :=
.seq body8_201 body8_204

def body8_206 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_205

def body8_207 : WordLangProgHOL (BitVec 64) :=
.seq body8_200 body8_206

def body8_208 : WordLangProgHOL (BitVec 64) :=
.seq body8_139 body8_207

def body8_209 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_208

def body8_210 : WordLangProgHOL (BitVec 64) :=
.seq body8_138 body8_209

def body8_211 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_210

def body8_212 : WordLangProgHOL (BitVec 64) :=
.seq body8_137 body8_211

def body8_213 : WordLangProgHOL (BitVec 64) :=
.seq body8_75 body8_212

def body8_214 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_213

def body8_215 : WordLangProgHOL (BitVec 64) :=
.seq body8_74 body8_214

def body8_216 : WordLangProgHOL (BitVec 64) :=
.seq body8_73 body8_215

def body8_217 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_216

def body8_218 : WordLangProgHOL (BitVec 64) :=
.seq body8_72 body8_217

def body8_219 : WordLangProgHOL (BitVec 64) :=
.seq body8_68 body8_218

def body8_220 : WordLangProgHOL (BitVec 64) :=
.seq body8_67 body8_219

def body8_221 : WordLangProgHOL (BitVec 64) :=
.seq body8_66 body8_220

def body8_222 : WordLangProgHOL (BitVec 64) :=
.seq body8_65 body8_221

def body8_223 : WordLangProgHOL (BitVec 64) :=
.seq body8_64 body8_222

def body8_224 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_223

def body8_225 : WordLangProgHOL (BitVec 64) :=
.seq body8_63 body8_224

def body8_226 : WordLangProgHOL (BitVec 64) :=
.seq body8_46 body8_225

def body8_227 : WordLangProgHOL (BitVec 64) :=
.seq body8_45 body8_226

def body8_228 : WordLangProgHOL (BitVec 64) :=
.seq body8_44 body8_227

def body8_229 : WordLangProgHOL (BitVec 64) :=
.seq body8_43 body8_228

def body8_230 : WordLangProgHOL (BitVec 64) :=
.seq body8_42 body8_229

def body8_231 : WordLangProgHOL (BitVec 64) :=
.seq body8_41 body8_230

def body8_232 : WordLangProgHOL (BitVec 64) :=
.seq body8_40 body8_231

def body8_233 : WordLangProgHOL (BitVec 64) :=
.seq body8_39 body8_232

def body8_234 : WordLangProgHOL (BitVec 64) :=
.seq body8_38 body8_233

def body8_235 : WordLangProgHOL (BitVec 64) :=
.seq body8_37 body8_234

def body8_236 : WordLangProgHOL (BitVec 64) :=
.seq body8_36 body8_235

def body8_237 : WordLangProgHOL (BitVec 64) :=
.seq body8_35 body8_236

def body8_238 : WordLangProgHOL (BitVec 64) :=
.seq body8_34 body8_237

def body8_239 : WordLangProgHOL (BitVec 64) :=
.seq body8_33 body8_238

def body8_240 : WordLangProgHOL (BitVec 64) :=
.seq body8_32 body8_239

def body8_241 : WordLangProgHOL (BitVec 64) :=
.seq body8_31 body8_240

def body8_242 : WordLangProgHOL (BitVec 64) :=
.seq body8_30 body8_241

def body8_243 : WordLangProgHOL (BitVec 64) :=
.seq body8_29 body8_242

def body8_244 : WordLangProgHOL (BitVec 64) :=
.seq body8_28 body8_243

def body8_245 : WordLangProgHOL (BitVec 64) :=
.seq body8_27 body8_244

def body8_246 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_245

def body8_247 : WordLangProgHOL (BitVec 64) :=
.seq body8_26 body8_246

def body8_248 : WordLangProgHOL (BitVec 64) :=
.seq body8_22 body8_247

def body8_249 : WordLangProgHOL (BitVec 64) :=
.seq body8_21 body8_248

def body8_250 : WordLangProgHOL (BitVec 64) :=
.seq body8_20 body8_249

def body8_251 : WordLangProgHOL (BitVec 64) :=
.seq body8_19 body8_250

def body8_252 : WordLangProgHOL (BitVec 64) :=
.seq body8_18 body8_251

def body8_253 : WordLangProgHOL (BitVec 64) :=
.seq body8_17 body8_252

def body8_254 : WordLangProgHOL (BitVec 64) :=
.seq body8_16 body8_253

def body8_255 : WordLangProgHOL (BitVec 64) :=
.seq body8_15 body8_254

def body8_256 : WordLangProgHOL (BitVec 64) :=
.seq body8_14 body8_255

def body8_257 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_256

def body8_258 : WordLangProgHOL (BitVec 64) :=
.seq body8_12 body8_257

def body8_259 : WordLangProgHOL (BitVec 64) :=
.seq body8_7 body8_258

def body8_260 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_259

def body8_261 : WordLangProgHOL (BitVec 64) :=
.seq body8_5 body8_260

def body8_262 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_261

def body8_263 : WordLangProgHOL (BitVec 64) :=
.seq body8_3 body8_262

def body8_264 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_263

def body8_265 : WordLangProgHOL (BitVec 64) :=
.seq body8_1 body8_264

def body8_266 : WordLangProgHOL (BitVec 64) :=
.seq body8_0 body8_265

def pass8 : WordLangProgHOL (BitVec 64) := body8_266
def body10_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (14, 2), (4, 4), (16, 6), (8, 8), (10, 10), (12, 12)]

def body10_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def body10_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def body10_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def body10_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551248#64))

def body10_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def body10_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 64#64)

def body10_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 0), (46, 8), (48, 4), (50, 12), (52, 14), (54, 10), (56, 16)]

def body10_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56)]

def body10_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56)]

def body10_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body10_11 : WordLangProgHOL (BitVec 64) :=
.seq body10_9 body10_10

def body10_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_8, 635, 2)) (some 77) ([2, 4, 6]) (some (2, body10_11, 635, 3))

def body10_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body10_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def body10_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def body10_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def body10_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551248#64))

def body10_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 64#64)))

def body10_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def body10_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 18446744073709551256#64))

def body10_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56)]

def body10_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (14, 46), (48, 48), (10, 50), (52, 52), (8, 54), (4, 56)]

def body10_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (14, 46), (48, 48), (10, 50), (52, 52), (8, 54), (4, 56)]

def body10_24 : WordLangProgHOL (BitVec 64) :=
.seq body10_23 body10_10

def body10_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_22, 635, 4)) (some 77) ([2, 4, 6]) (some (2, body10_24, 635, 5))

def body10_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 18446744073709551248#64))

def body10_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 6 (Flapjack.WordRegImm.imm 96#64)))

def body10_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (2, 0), (14, 14)]

def body10_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 96#64))

def body10_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 6 14 (Flapjack.WordRegImm.reg 6)))

def body10_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (6, 6)]

def body10_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 12 0#64))

def body10_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def body10_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 18446744073709551248#64))

def body10_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 6 (Flapjack.WordRegImm.imm 104#64)))

def body10_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (2, 2), (8, 8)]

def body10_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 104#64))

def body10_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 6 8 (Flapjack.WordRegImm.reg 6)))

def body10_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def body10_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def body10_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.imm 112#64)))

def body10_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 112#64))

def body10_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 2 2 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def body10_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 2)]

def body10_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 6 0#64))

def body10_46 : WordLangProgHOL (BitVec 64) :=
.seq body10_44 body10_45

def body10_47 : WordLangProgHOL (BitVec 64) :=
.seq body10_43 body10_46

def body10_48 : WordLangProgHOL (BitVec 64) :=
.seq body10_42 body10_47

def body10_49 : WordLangProgHOL (BitVec 64) :=
.seq body10_33 body10_48

def body10_50 : WordLangProgHOL (BitVec 64) :=
.seq body10_41 body10_49

def body10_51 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_50

def body10_52 : WordLangProgHOL (BitVec 64) :=
.seq body10_33 body10_51

def body10_53 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_52

def body10_54 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 6) body10_53 body10_13

def body10_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551240#64))

def body10_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 128#64)

def body10_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 14), (48, 48), (50, 10), (52, 52), (54, 8), (56, 4)]

def body10_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50), (10, 52), (52, 54), (54, 56)]

def body10_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (10, 52), (52, 54), (54, 56)]

def body10_60 : WordLangProgHOL (BitVec 64) :=
.seq body10_59 body10_10

def body10_61 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_58, 635, 6)) (some 77) ([2, 4, 6]) (some (2, body10_60, 635, 7))

def body10_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def body10_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def body10_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50), (10, 10), (52, 52), (2, 2), (54, 54), (0, 0)]

def body10_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (2, 2)]

def body10_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def body10_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def body10_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def body10_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 18446744073709551232#64))

def body10_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def body10_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 6 0#64))

def body10_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def body10_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def body10_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 264#64)

def body10_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def body10_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 6), (4, 4), (6, 6), (8, 8), (46, 44), (48, 46), (50, 48), (52, 50), (54, 10), (56, 52), (44, 2), (58, 54),
    (60, 0)]

def body10_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.ffi
  (Flapjack.Basis.Pure.MlString.MlString.implode
    [98#8, 108#8, 97#8, 107#8, 101#8, 50#8, 98#8, 114#8, 111#8, 117#8, 110#8, 100#8])
  2 4 6 8
  (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) (Flapjack.Spt.ls ()))
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
      Flapjack.Spt.ln,
    Flapjack.Spt.ln)

def body10_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 44), (4, 46), (6, 48), (8, 50), (12, 52), (10, 54), (14, 56), (16, 58), (0, 60)]

def body10_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1#64)))

def body10_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 2)]

def body10_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def body10_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def body10_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 10#64)

def body10_84 : WordLangProgHOL (BitVec 64) :=
.seq body10_63 body10_19

def body10_85 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_84

def body10_86 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_19

def body10_87 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 18) body10_85 body10_86

def body10_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 4), (46, 6), (48, 8), (50, 12), (10, 10), (52, 14), (2, 2), (54, 16), (0, 0)]

def body10_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body10_90 : WordLangProgHOL (BitVec 64) :=
.seq body10_88 body10_89

def body10_91 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_90

def body10_92 : WordLangProgHOL (BitVec 64) :=
.seq body10_87 body10_91

def body10_93 : WordLangProgHOL (BitVec 64) :=
.seq body10_83 body10_92

def body10_94 : WordLangProgHOL (BitVec 64) :=
.seq body10_82 body10_93

def body10_95 : WordLangProgHOL (BitVec 64) :=
.seq body10_81 body10_94

def body10_96 : WordLangProgHOL (BitVec 64) :=
.seq body10_80 body10_95

def body10_97 : WordLangProgHOL (BitVec 64) :=
.seq body10_79 body10_96

def body10_98 : WordLangProgHOL (BitVec 64) :=
.seq body10_78 body10_97

def body10_99 : WordLangProgHOL (BitVec 64) :=
.seq body10_77 body10_98

def body10_100 : WordLangProgHOL (BitVec 64) :=
.seq body10_76 body10_99

def body10_101 : WordLangProgHOL (BitVec 64) :=
.seq body10_75 body10_100

def body10_102 : WordLangProgHOL (BitVec 64) :=
.seq body10_74 body10_101

def body10_103 : WordLangProgHOL (BitVec 64) :=
.seq body10_73 body10_102

def body10_104 : WordLangProgHOL (BitVec 64) :=
.seq body10_69 body10_103

def body10_105 : WordLangProgHOL (BitVec 64) :=
.seq body10_72 body10_104

def body10_106 : WordLangProgHOL (BitVec 64) :=
.seq body10_71 body10_105

def body10_107 : WordLangProgHOL (BitVec 64) :=
.seq body10_70 body10_106

def body10_108 : WordLangProgHOL (BitVec 64) :=
.seq body10_69 body10_107

def body10_109 : WordLangProgHOL (BitVec 64) :=
.seq body10_68 body10_108

def body10_110 : WordLangProgHOL (BitVec 64) :=
.seq body10_67 body10_109

def body10_111 : WordLangProgHOL (BitVec 64) :=
.seq body10_66 body10_110

def body10_112 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_111

def body10_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (2, 2)]

def body10_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body10_115 : WordLangProgHOL (BitVec 64) :=
.seq body10_113 body10_114

def body10_116 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_115

def body10_117 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 10) body10_112 body10_116

def body10_118 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_88

def body10_119 : WordLangProgHOL (BitVec 64) :=
.seq body10_117 body10_118

def body10_120 : WordLangProgHOL (BitVec 64) :=
.seq body10_65 body10_119

def body10_121 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
        (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
      (Flapjack.Spt.bs Flapjack.Spt.ln () (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
    ()
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
        (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
  () Flapjack.Spt.ln) body10_120 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
        (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
      (Flapjack.Spt.bs Flapjack.Spt.ln () (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
    ()
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
        (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
  () Flapjack.Spt.ln)

def body10_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(16, 44), (18, 46), (6, 48), (4, 4), (20, 50), (10, 10), (24, 52), (2, 2), (22, 54), (0, 0)]

def body10_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 8#64)

def body10_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14 4 (Flapjack.WordRegImm.imm 3#64)))

def body10_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def body10_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 14 (Flapjack.WordRegImm.reg 6)))

def body10_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 4 (Flapjack.WordRegImm.imm 8#64)))

def body10_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 26 12 (Flapjack.WordRegImm.imm 3#64)))

def body10_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 12 Flapjack.WordStore.heapLength

def body10_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12 12 (Flapjack.WordRegImm.imm 1#64)))

def body10_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12 12

def body10_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 12 18446744073709551248#64))

def body10_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 26 26 (Flapjack.WordRegImm.reg 12)))

def body10_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 26 (Flapjack.WordLangAddr.addr 26 0#64))

def body10_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12), (14, 14), (4, 4)]

def body10_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 14 (Flapjack.WordRegImm.reg 12)))

def body10_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 12 0#64))

def body10_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 12 26 (Flapjack.WordRegImm.reg 12)))

def body10_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6), (4, 4)]

def body10_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 8 0#64))

def body10_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 12 12 (Flapjack.WordRegImm.reg 14)))

def body10_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (12, 12)]

def body10_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 8 0#64))

def body10_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 1#64)))

def body10_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 4)]

def body10_146 : WordLangProgHOL (BitVec 64) :=
.seq body10_145 body10_89

def body10_147 : WordLangProgHOL (BitVec 64) :=
.seq body10_144 body10_146

def body10_148 : WordLangProgHOL (BitVec 64) :=
.seq body10_5 body10_147

def body10_149 : WordLangProgHOL (BitVec 64) :=
.seq body10_143 body10_148

def body10_150 : WordLangProgHOL (BitVec 64) :=
.seq body10_142 body10_149

def body10_151 : WordLangProgHOL (BitVec 64) :=
.seq body10_141 body10_150

def body10_152 : WordLangProgHOL (BitVec 64) :=
.seq body10_140 body10_151

def body10_153 : WordLangProgHOL (BitVec 64) :=
.seq body10_139 body10_152

def body10_154 : WordLangProgHOL (BitVec 64) :=
.seq body10_138 body10_153

def body10_155 : WordLangProgHOL (BitVec 64) :=
.seq body10_137 body10_154

def body10_156 : WordLangProgHOL (BitVec 64) :=
.seq body10_136 body10_155

def body10_157 : WordLangProgHOL (BitVec 64) :=
.seq body10_135 body10_156

def body10_158 : WordLangProgHOL (BitVec 64) :=
.seq body10_134 body10_157

def body10_159 : WordLangProgHOL (BitVec 64) :=
.seq body10_133 body10_158

def body10_160 : WordLangProgHOL (BitVec 64) :=
.seq body10_132 body10_159

def body10_161 : WordLangProgHOL (BitVec 64) :=
.seq body10_131 body10_160

def body10_162 : WordLangProgHOL (BitVec 64) :=
.seq body10_130 body10_161

def body10_163 : WordLangProgHOL (BitVec 64) :=
.seq body10_129 body10_162

def body10_164 : WordLangProgHOL (BitVec 64) :=
.seq body10_128 body10_163

def body10_165 : WordLangProgHOL (BitVec 64) :=
.seq body10_127 body10_164

def body10_166 : WordLangProgHOL (BitVec 64) :=
.seq body10_5 body10_165

def body10_167 : WordLangProgHOL (BitVec 64) :=
.seq body10_126 body10_166

def body10_168 : WordLangProgHOL (BitVec 64) :=
.seq body10_125 body10_167

def body10_169 : WordLangProgHOL (BitVec 64) :=
.seq body10_124 body10_168

def body10_170 : WordLangProgHOL (BitVec 64) :=
.seq body10_5 body10_169

def body10_171 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_170

def body10_172 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_114

def body10_173 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.WordRegImm.reg 8) body10_171 body10_172

def body10_174 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_145

def body10_175 : WordLangProgHOL (BitVec 64) :=
.seq body10_173 body10_174

def body10_176 : WordLangProgHOL (BitVec 64) :=
.seq body10_123 body10_175

def body10_177 : WordLangProgHOL (BitVec 64) :=
.seq body10_5 body10_176

def body10_178 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) ()
      (Flapjack.Spt.bs Flapjack.Spt.ln () (Flapjack.Spt.ls ())))
    ()
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) ()
      (Flapjack.Spt.bn (Flapjack.Spt.ls ()) (Flapjack.Spt.ls ()))))
  () Flapjack.Spt.ln) body10_177 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
  Flapjack.Spt.ln)

def body10_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def body10_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 16 [2]

def body10_181 : WordLangProgHOL (BitVec 64) :=
.seq body10_179 body10_180

def body10_182 : WordLangProgHOL (BitVec 64) :=
.seq body10_62 body10_181

def body10_183 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_182

def body10_184 : WordLangProgHOL (BitVec 64) :=
.seq body10_178 body10_183

def body10_185 : WordLangProgHOL (BitVec 64) :=
.seq body10_122 body10_184

def body10_186 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_185

def body10_187 : WordLangProgHOL (BitVec 64) :=
.seq body10_75 body10_186

def body10_188 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_187

def body10_189 : WordLangProgHOL (BitVec 64) :=
.seq body10_121 body10_188

def body10_190 : WordLangProgHOL (BitVec 64) :=
.seq body10_64 body10_189

def body10_191 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_190

def body10_192 : WordLangProgHOL (BitVec 64) :=
.seq body10_63 body10_191

def body10_193 : WordLangProgHOL (BitVec 64) :=
.seq body10_62 body10_192

def body10_194 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_193

def body10_195 : WordLangProgHOL (BitVec 64) :=
.seq body10_61 body10_194

def body10_196 : WordLangProgHOL (BitVec 64) :=
.seq body10_57 body10_195

def body10_197 : WordLangProgHOL (BitVec 64) :=
.seq body10_56 body10_196

def body10_198 : WordLangProgHOL (BitVec 64) :=
.seq body10_5 body10_197

def body10_199 : WordLangProgHOL (BitVec 64) :=
.seq body10_55 body10_198

def body10_200 : WordLangProgHOL (BitVec 64) :=
.seq body10_19 body10_199

def body10_201 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_200

def body10_202 : WordLangProgHOL (BitVec 64) :=
.seq body10_54 body10_201

def body10_203 : WordLangProgHOL (BitVec 64) :=
.seq body10_40 body10_202

def body10_204 : WordLangProgHOL (BitVec 64) :=
.seq body10_39 body10_203

def body10_205 : WordLangProgHOL (BitVec 64) :=
.seq body10_32 body10_204

def body10_206 : WordLangProgHOL (BitVec 64) :=
.seq body10_31 body10_205

def body10_207 : WordLangProgHOL (BitVec 64) :=
.seq body10_38 body10_206

def body10_208 : WordLangProgHOL (BitVec 64) :=
.seq body10_37 body10_207

def body10_209 : WordLangProgHOL (BitVec 64) :=
.seq body10_36 body10_208

def body10_210 : WordLangProgHOL (BitVec 64) :=
.seq body10_35 body10_209

def body10_211 : WordLangProgHOL (BitVec 64) :=
.seq body10_34 body10_210

def body10_212 : WordLangProgHOL (BitVec 64) :=
.seq body10_33 body10_211

def body10_213 : WordLangProgHOL (BitVec 64) :=
.seq body10_32 body10_212

def body10_214 : WordLangProgHOL (BitVec 64) :=
.seq body10_31 body10_213

def body10_215 : WordLangProgHOL (BitVec 64) :=
.seq body10_30 body10_214

def body10_216 : WordLangProgHOL (BitVec 64) :=
.seq body10_29 body10_215

def body10_217 : WordLangProgHOL (BitVec 64) :=
.seq body10_28 body10_216

def body10_218 : WordLangProgHOL (BitVec 64) :=
.seq body10_27 body10_217

def body10_219 : WordLangProgHOL (BitVec 64) :=
.seq body10_26 body10_218

def body10_220 : WordLangProgHOL (BitVec 64) :=
.seq body10_16 body10_219

def body10_221 : WordLangProgHOL (BitVec 64) :=
.seq body10_15 body10_220

def body10_222 : WordLangProgHOL (BitVec 64) :=
.seq body10_14 body10_221

def body10_223 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_222

def body10_224 : WordLangProgHOL (BitVec 64) :=
.seq body10_25 body10_223

def body10_225 : WordLangProgHOL (BitVec 64) :=
.seq body10_21 body10_224

def body10_226 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_225

def body10_227 : WordLangProgHOL (BitVec 64) :=
.seq body10_20 body10_226

def body10_228 : WordLangProgHOL (BitVec 64) :=
.seq body10_19 body10_227

def body10_229 : WordLangProgHOL (BitVec 64) :=
.seq body10_18 body10_228

def body10_230 : WordLangProgHOL (BitVec 64) :=
.seq body10_17 body10_229

def body10_231 : WordLangProgHOL (BitVec 64) :=
.seq body10_16 body10_230

def body10_232 : WordLangProgHOL (BitVec 64) :=
.seq body10_15 body10_231

def body10_233 : WordLangProgHOL (BitVec 64) :=
.seq body10_14 body10_232

def body10_234 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_233

def body10_235 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_234

def body10_236 : WordLangProgHOL (BitVec 64) :=
.seq body10_7 body10_235

def body10_237 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_236

def body10_238 : WordLangProgHOL (BitVec 64) :=
.seq body10_5 body10_237

def body10_239 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_238

def body10_240 : WordLangProgHOL (BitVec 64) :=
.seq body10_3 body10_239

def body10_241 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_240

def body10_242 : WordLangProgHOL (BitVec 64) :=
.seq body10_1 body10_241

def body10_243 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_242

def pass10 : WordLangProgHOL (BitVec 64) := body10_243
end InitECandidate.Proofs.SmallStages.Compact635
