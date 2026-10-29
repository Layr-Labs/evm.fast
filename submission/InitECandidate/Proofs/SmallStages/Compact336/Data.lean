import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source336
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact336
def oracle : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 31 (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 32 (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 0)))))
              5
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 3)) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4))))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 23 Flapjack.Spt.ln) 3
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 22)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 27 (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 2))) 32
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 28 (Flapjack.Spt.ls 26))))
              9
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                  27 Flapjack.Spt.ln)
                10
                (Flapjack.Spt.bs Flapjack.Spt.ln 23
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 29 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 30 (Flapjack.Spt.ls 28))))
              3
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 0)) 1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 25
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1 (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 25 (Flapjack.Spt.ls 4)) 2
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 26 (Flapjack.Spt.ls 24))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 0))) 3
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 2))))
                7
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1))) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 31 (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 22)))))
              4
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 Flapjack.Spt.ln) 1
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))) 26
                  (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 4))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 26 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 2))) 30
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 27 (Flapjack.Spt.ls 2))))
              0
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 2))) 1
                  Flapjack.Spt.ln)
                8 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 28 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 29 (Flapjack.Spt.ls 27))))
              2
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  1 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                8
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))) 24
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4))))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 24 (Flapjack.Spt.ls 22)) 28
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 25 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 3)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 2))) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 4))))
                6
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 27 (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 24))) 29
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 22)) 25
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 24)))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 29))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 25 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 22))) 27
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 30))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 22))) 32
                  (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 27)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 26 (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 23))) 28
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 24
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 28))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 24 (Flapjack.Spt.ls 23)) 26
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 29))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 30)))))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 25)) 30
                  (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 26))))))))))
def body2_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(41, 0), (45, 2), (49, 4), (53, 6), (57, 8), (61, 10), (65, 12), (69, 14), (73, 16)]

def body2_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 2#64)

def body2_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 73)]

def body2_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 85 81 (Flapjack.WordRegImm.imm 2#64)))

def body2_4 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_3

def body2_5 : WordLangProgHOL (BitVec 64) :=
.seq body2_1 body2_4

def body2_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 45)]

def body2_7 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_6

def body2_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(95, 41), (99, 81), (103, 57), (107, 49), (111, 65), (115, 77), (119, 89), (123, 61), (127, 53), (131, 69)]

def body2_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85), (4, 89)]

def body2_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(137, 95), (141, 99), (145, 103), (149, 107), (153, 111), (157, 115), (161, 119), (165, 123), (169, 127), (173, 131)]

def body2_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(177, 2)]

def body2_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body2_13 : WordLangProgHOL (BitVec 64) :=
.seq body2_11 body2_12

def body2_14 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_13

def body2_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 []

def body2_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(185, 177)]

def body2_17 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_16

def body2_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 189 0#64)

def body2_19 : WordLangProgHOL (BitVec 64) :=
.seq body2_17 body2_18

def body2_20 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_19

def body2_21 : WordLangProgHOL (BitVec 64) :=
.seq body2_14 body2_20

def body2_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(181, 2)]

def body2_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 181)]

def body2_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body2_25 : WordLangProgHOL (BitVec 64) :=
.seq body2_23 body2_24

def body2_26 : WordLangProgHOL (BitVec 64) :=
.seq body2_22 body2_25

def body2_27 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_26

def body2_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 185 0#64)

def body2_29 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_28

def body2_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(189, 181)]

def body2_31 : WordLangProgHOL (BitVec 64) :=
.seq body2_29 body2_30

def body2_32 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_31

def body2_33 : WordLangProgHOL (BitVec 64) :=
.seq body2_27 body2_32

def body2_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))),
  Flapjack.Spt.ln)), body2_21, 336, 2)) (some 177) ([2, 4]) (some (2, body2_33, 336, 3))

def body2_35 : WordLangProgHOL (BitVec 64) :=
.seq body2_9 body2_34

def body2_36 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_35

def body2_37 : WordLangProgHOL (BitVec 64) :=
.seq body2_7 body2_36

def body2_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body2_39 : WordLangProgHOL (BitVec 64) :=
.seq body2_37 body2_38

def body2_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(193, 185)]

def body2_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(197, 157)]

def body2_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 201 193 (Flapjack.WordRegImm.reg 197)))

def body2_43 : WordLangProgHOL (BitVec 64) :=
.seq body2_41 body2_42

def body2_44 : WordLangProgHOL (BitVec 64) :=
.seq body2_40 body2_43

def body2_45 : WordLangProgHOL (BitVec 64) :=
.seq body2_39 body2_44

def body2_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 201)]

def body2_47 : WordLangProgHOL (BitVec 64) :=
.seq body2_45 body2_46

def body2_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 209 Flapjack.WordStore.heapLength

def body2_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 213 209 (Flapjack.WordRegImm.imm 1#64)))

def body2_50 : WordLangProgHOL (BitVec 64) :=
.seq body2_48 body2_49

def body2_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 217 213

def body2_52 : WordLangProgHOL (BitVec 64) :=
.seq body2_50 body2_51

def body2_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 221 (Flapjack.WordLangAddr.addr 217 18446744073709551464#64))

def body2_54 : WordLangProgHOL (BitVec 64) :=
.seq body2_52 body2_53

def body2_55 : WordLangProgHOL (BitVec 64) :=
.seq body2_47 body2_54

def body2_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(225, 165)]

def body2_57 : WordLangProgHOL (BitVec 64) :=
.seq body2_55 body2_56

def body2_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(231, 137), (235, 141), (239, 145), (243, 149), (247, 153), (251, 205), (255, 161), (259, 225), (263, 169),
    (267, 193), (271, 173)]

def body2_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 221), (4, 225)]

def body2_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(277, 231), (281, 235), (285, 239), (289, 243), (293, 247), (297, 251), (301, 255), (305, 259), (309, 263),
    (313, 267), (317, 271)]

def body2_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(321, 2)]

def body2_62 : WordLangProgHOL (BitVec 64) :=
.seq body2_61 body2_12

def body2_63 : WordLangProgHOL (BitVec 64) :=
.seq body2_60 body2_62

def body2_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 329 0#64)

def body2_65 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_64

def body2_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(333, 321)]

def body2_67 : WordLangProgHOL (BitVec 64) :=
.seq body2_65 body2_66

def body2_68 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_67

def body2_69 : WordLangProgHOL (BitVec 64) :=
.seq body2_63 body2_68

def body2_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(325, 2)]

def body2_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 325)]

def body2_72 : WordLangProgHOL (BitVec 64) :=
.seq body2_71 body2_24

def body2_73 : WordLangProgHOL (BitVec 64) :=
.seq body2_70 body2_72

def body2_74 : WordLangProgHOL (BitVec 64) :=
.seq body2_60 body2_73

def body2_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(329, 325)]

def body2_76 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_75

def body2_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 333 0#64)

def body2_78 : WordLangProgHOL (BitVec 64) :=
.seq body2_76 body2_77

def body2_79 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_78

def body2_80 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_79

def body2_81 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))))),
  Flapjack.Spt.ln)), body2_69, 336, 4)) (some 89) ([2, 4]) (some (2, body2_80, 336, 5))

def body2_82 : WordLangProgHOL (BitVec 64) :=
.seq body2_59 body2_81

def body2_83 : WordLangProgHOL (BitVec 64) :=
.seq body2_58 body2_82

def body2_84 : WordLangProgHOL (BitVec 64) :=
.seq body2_57 body2_83

def body2_85 : WordLangProgHOL (BitVec 64) :=
.seq body2_84 body2_38

def body2_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 337 Flapjack.WordStore.heapLength

def body2_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 341 337 (Flapjack.WordRegImm.imm 1#64)))

def body2_88 : WordLangProgHOL (BitVec 64) :=
.seq body2_86 body2_87

def body2_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 345 341

def body2_90 : WordLangProgHOL (BitVec 64) :=
.seq body2_88 body2_89

def body2_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 349 (Flapjack.WordLangAddr.addr 345 18446744073709551464#64))

def body2_92 : WordLangProgHOL (BitVec 64) :=
.seq body2_90 body2_91

def body2_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 353 349 (Flapjack.WordRegImm.imm 8#64)))

def body2_94 : WordLangProgHOL (BitVec 64) :=
.seq body2_92 body2_93

def body2_95 : WordLangProgHOL (BitVec 64) :=
.seq body2_85 body2_94

def body2_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(357, 285)]

def body2_97 : WordLangProgHOL (BitVec 64) :=
.seq body2_95 body2_96

def body2_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(363, 277), (367, 281), (371, 357), (375, 289), (379, 293), (383, 297), (387, 301), (391, 305), (395, 309),
    (399, 313), (403, 317)]

def body2_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 353), (4, 357)]

def body2_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(409, 363), (413, 367), (417, 371), (421, 375), (425, 379), (429, 383), (433, 387), (437, 391), (441, 395),
    (445, 399), (449, 403)]

def body2_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(453, 2)]

def body2_102 : WordLangProgHOL (BitVec 64) :=
.seq body2_101 body2_12

def body2_103 : WordLangProgHOL (BitVec 64) :=
.seq body2_100 body2_102

def body2_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 461 0#64)

def body2_105 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_104

def body2_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(465, 453)]

def body2_107 : WordLangProgHOL (BitVec 64) :=
.seq body2_105 body2_106

def body2_108 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_107

def body2_109 : WordLangProgHOL (BitVec 64) :=
.seq body2_103 body2_108

def body2_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(457, 2)]

def body2_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 457)]

def body2_112 : WordLangProgHOL (BitVec 64) :=
.seq body2_111 body2_24

def body2_113 : WordLangProgHOL (BitVec 64) :=
.seq body2_110 body2_112

def body2_114 : WordLangProgHOL (BitVec 64) :=
.seq body2_100 body2_113

def body2_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(461, 457)]

def body2_116 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_115

def body2_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 465 0#64)

def body2_118 : WordLangProgHOL (BitVec 64) :=
.seq body2_116 body2_117

def body2_119 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_118

def body2_120 : WordLangProgHOL (BitVec 64) :=
.seq body2_114 body2_119

def body2_121 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body2_109, 336, 6)) (some 89) ([2, 4]) (some (2, body2_120, 336, 7))

def body2_122 : WordLangProgHOL (BitVec 64) :=
.seq body2_99 body2_121

def body2_123 : WordLangProgHOL (BitVec 64) :=
.seq body2_98 body2_122

def body2_124 : WordLangProgHOL (BitVec 64) :=
.seq body2_97 body2_123

def body2_125 : WordLangProgHOL (BitVec 64) :=
.seq body2_124 body2_38

def body2_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 469 Flapjack.WordStore.heapLength

def body2_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 473 469 (Flapjack.WordRegImm.imm 1#64)))

def body2_128 : WordLangProgHOL (BitVec 64) :=
.seq body2_126 body2_127

def body2_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 477 473

def body2_130 : WordLangProgHOL (BitVec 64) :=
.seq body2_128 body2_129

def body2_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 481 (Flapjack.WordLangAddr.addr 477 18446744073709551464#64))

def body2_132 : WordLangProgHOL (BitVec 64) :=
.seq body2_130 body2_131

def body2_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 485 481 (Flapjack.WordRegImm.imm 16#64)))

def body2_134 : WordLangProgHOL (BitVec 64) :=
.seq body2_132 body2_133

def body2_135 : WordLangProgHOL (BitVec 64) :=
.seq body2_125 body2_134

def body2_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(489, 441)]

def body2_137 : WordLangProgHOL (BitVec 64) :=
.seq body2_135 body2_136

def body2_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(495, 409), (499, 413), (503, 417), (507, 421), (511, 425), (515, 429), (519, 433), (523, 437), (527, 489),
    (531, 445), (535, 449)]

def body2_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 485), (4, 489)]

def body2_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(541, 495), (545, 499), (549, 503), (553, 507), (557, 511), (561, 515), (565, 519), (569, 523), (573, 527),
    (577, 531), (581, 535)]

def body2_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(585, 2)]

def body2_142 : WordLangProgHOL (BitVec 64) :=
.seq body2_141 body2_12

def body2_143 : WordLangProgHOL (BitVec 64) :=
.seq body2_140 body2_142

def body2_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 593 0#64)

def body2_145 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_144

def body2_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(597, 585)]

def body2_147 : WordLangProgHOL (BitVec 64) :=
.seq body2_145 body2_146

def body2_148 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_147

def body2_149 : WordLangProgHOL (BitVec 64) :=
.seq body2_143 body2_148

def body2_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(589, 2)]

def body2_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 589)]

def body2_152 : WordLangProgHOL (BitVec 64) :=
.seq body2_151 body2_24

def body2_153 : WordLangProgHOL (BitVec 64) :=
.seq body2_150 body2_152

def body2_154 : WordLangProgHOL (BitVec 64) :=
.seq body2_140 body2_153

def body2_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(593, 589)]

def body2_156 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_155

def body2_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 597 0#64)

def body2_158 : WordLangProgHOL (BitVec 64) :=
.seq body2_156 body2_157

def body2_159 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_158

def body2_160 : WordLangProgHOL (BitVec 64) :=
.seq body2_154 body2_159

def body2_161 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))))),
  Flapjack.Spt.ln)), body2_149, 336, 8)) (some 89) ([2, 4]) (some (2, body2_160, 336, 9))

def body2_162 : WordLangProgHOL (BitVec 64) :=
.seq body2_139 body2_161

def body2_163 : WordLangProgHOL (BitVec 64) :=
.seq body2_138 body2_162

def body2_164 : WordLangProgHOL (BitVec 64) :=
.seq body2_137 body2_163

def body2_165 : WordLangProgHOL (BitVec 64) :=
.seq body2_164 body2_38

def body2_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 601 Flapjack.WordStore.heapLength

def body2_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 605 601 (Flapjack.WordRegImm.imm 1#64)))

def body2_168 : WordLangProgHOL (BitVec 64) :=
.seq body2_166 body2_167

def body2_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 609 605

def body2_170 : WordLangProgHOL (BitVec 64) :=
.seq body2_168 body2_169

def body2_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 613 (Flapjack.WordLangAddr.addr 609 18446744073709551464#64))

def body2_172 : WordLangProgHOL (BitVec 64) :=
.seq body2_170 body2_171

def body2_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 617 613 (Flapjack.WordRegImm.imm 24#64)))

def body2_174 : WordLangProgHOL (BitVec 64) :=
.seq body2_172 body2_173

def body2_175 : WordLangProgHOL (BitVec 64) :=
.seq body2_165 body2_174

def body2_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(621, 553)]

def body2_177 : WordLangProgHOL (BitVec 64) :=
.seq body2_175 body2_176

def body2_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(627, 541), (631, 545), (635, 549), (639, 621), (643, 557), (647, 561), (651, 565), (655, 569), (659, 573),
    (663, 577), (667, 581)]

def body2_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 617), (4, 621)]

def body2_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(673, 627), (677, 631), (681, 635), (685, 639), (689, 643), (693, 647), (697, 651), (701, 655), (705, 659),
    (709, 663), (713, 667)]

def body2_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(717, 2)]

def body2_182 : WordLangProgHOL (BitVec 64) :=
.seq body2_181 body2_12

def body2_183 : WordLangProgHOL (BitVec 64) :=
.seq body2_180 body2_182

def body2_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 725 0#64)

def body2_185 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_184

def body2_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(729, 717)]

def body2_187 : WordLangProgHOL (BitVec 64) :=
.seq body2_185 body2_186

def body2_188 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_187

def body2_189 : WordLangProgHOL (BitVec 64) :=
.seq body2_183 body2_188

def body2_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(721, 2)]

def body2_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 721)]

def body2_192 : WordLangProgHOL (BitVec 64) :=
.seq body2_191 body2_24

def body2_193 : WordLangProgHOL (BitVec 64) :=
.seq body2_190 body2_192

def body2_194 : WordLangProgHOL (BitVec 64) :=
.seq body2_180 body2_193

def body2_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(725, 721)]

def body2_196 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_195

def body2_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 729 0#64)

def body2_198 : WordLangProgHOL (BitVec 64) :=
.seq body2_196 body2_197

def body2_199 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_198

def body2_200 : WordLangProgHOL (BitVec 64) :=
.seq body2_194 body2_199

def body2_201 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body2_189, 336, 10)) (some 89) ([2, 4]) (some (2, body2_200, 336, 11))

def body2_202 : WordLangProgHOL (BitVec 64) :=
.seq body2_179 body2_201

def body2_203 : WordLangProgHOL (BitVec 64) :=
.seq body2_178 body2_202

def body2_204 : WordLangProgHOL (BitVec 64) :=
.seq body2_177 body2_203

def body2_205 : WordLangProgHOL (BitVec 64) :=
.seq body2_204 body2_38

def body2_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 733 0#64)

def body2_207 : WordLangProgHOL (BitVec 64) :=
.seq body2_205 body2_206

def body2_208 : WordLangProgHOL (BitVec 64) :=
.seq body2_207 body2_38

def body2_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(737, 673), (741, 733), (745, 677), (749, 681), (753, 685), (757, 689), (761, 693), (765, 697), (769, 701),
    (773, 705), (777, 709), (781, 713)]

def body2_210 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_209

def body2_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(785, 741)]

def body2_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 789 32#64)

def body2_213 : WordLangProgHOL (BitVec 64) :=
.seq body2_211 body2_212

def body2_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 793 1#64)

def body2_215 : WordLangProgHOL (BitVec 64) :=
.seq body2_214 body2_38

def body2_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 797 1#64)

def body2_217 : WordLangProgHOL (BitVec 64) :=
.seq body2_215 body2_216

def body2_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(801, 785)]

def body2_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 805 Flapjack.WordStore.heapLength

def body2_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 809 805 (Flapjack.WordRegImm.imm 1#64)))

def body2_221 : WordLangProgHOL (BitVec 64) :=
.seq body2_219 body2_220

def body2_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 813 809

def body2_223 : WordLangProgHOL (BitVec 64) :=
.seq body2_221 body2_222

def body2_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 817 (Flapjack.WordLangAddr.addr 813 18446744073709551464#64))

def body2_225 : WordLangProgHOL (BitVec 64) :=
.seq body2_223 body2_224

def body2_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 821 801 (Flapjack.WordRegImm.reg 817)))

def body2_227 : WordLangProgHOL (BitVec 64) :=
.seq body2_225 body2_226

def body2_228 : WordLangProgHOL (BitVec 64) :=
.seq body2_218 body2_227

def body2_229 : WordLangProgHOL (BitVec 64) :=
.seq body2_217 body2_228

def body2_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 825 (Flapjack.WordLangAddr.addr 821 0#64))

def body2_231 : WordLangProgHOL (BitVec 64) :=
.seq body2_229 body2_230

def body2_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(829, 825)]

def body2_233 : WordLangProgHOL (BitVec 64) :=
.seq body2_231 body2_232

def body2_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 833 0#64)

def body2_235 : WordLangProgHOL (BitVec 64) :=
.seq body2_233 body2_234

def body2_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 837 1#64)

def body2_237 : WordLangProgHOL (BitVec 64) :=
.seq body2_236 body2_38

def body2_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 841 1#64)

def body2_239 : WordLangProgHOL (BitVec 64) :=
.seq body2_237 body2_238

def body2_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(741, 801)]

def body2_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body2_242 : WordLangProgHOL (BitVec 64) :=
.seq body2_240 body2_241

def body2_243 : WordLangProgHOL (BitVec 64) :=
.seq body2_239 body2_242

def body2_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(857, 837), (853, 841)]

def body2_245 : WordLangProgHOL (BitVec 64) :=
.seq body2_244 body2_12

def body2_246 : WordLangProgHOL (BitVec 64) :=
.seq body2_243 body2_245

def body2_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 845 0#64)

def body2_248 : WordLangProgHOL (BitVec 64) :=
.seq body2_247 body2_38

def body2_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 849 0#64)

def body2_250 : WordLangProgHOL (BitVec 64) :=
.seq body2_248 body2_249

def body2_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(857, 845), (853, 849)]

def body2_252 : WordLangProgHOL (BitVec 64) :=
.seq body2_251 body2_12

def body2_253 : WordLangProgHOL (BitVec 64) :=
.seq body2_250 body2_252

def body2_254 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 829 (Flapjack.WordRegImm.reg 833) body2_246 body2_253

def body2_255 : WordLangProgHOL (BitVec 64) :=
.seq body2_235 body2_254

def body2_256 : WordLangProgHOL (BitVec 64) :=
.seq body2_255 body2_38

def body2_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(861, 801)]

def body2_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 865 861 (Flapjack.WordRegImm.imm 1#64)))

def body2_259 : WordLangProgHOL (BitVec 64) :=
.seq body2_257 body2_258

def body2_260 : WordLangProgHOL (BitVec 64) :=
.seq body2_256 body2_259

def body2_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(869, 865)]

def body2_262 : WordLangProgHOL (BitVec 64) :=
.seq body2_260 body2_261

def body2_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(741, 869)]

def body2_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body2_265 : WordLangProgHOL (BitVec 64) :=
.seq body2_263 body2_264

def body2_266 : WordLangProgHOL (BitVec 64) :=
.seq body2_262 body2_265

def body2_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(893, 869), (889, 857), (885, 833), (881, 793)]

def body2_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(897, 853)]

def body2_269 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_268

def body2_270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(901, 869)]

def body2_271 : WordLangProgHOL (BitVec 64) :=
.seq body2_269 body2_270

def body2_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(905, 817)]

def body2_273 : WordLangProgHOL (BitVec 64) :=
.seq body2_271 body2_272

def body2_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(909, 861)]

def body2_275 : WordLangProgHOL (BitVec 64) :=
.seq body2_273 body2_274

def body2_276 : WordLangProgHOL (BitVec 64) :=
.seq body2_267 body2_275

def body2_277 : WordLangProgHOL (BitVec 64) :=
.seq body2_266 body2_276

def body2_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 873 0#64)

def body2_279 : WordLangProgHOL (BitVec 64) :=
.seq body2_278 body2_38

def body2_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 877 0#64)

def body2_281 : WordLangProgHOL (BitVec 64) :=
.seq body2_279 body2_280

def body2_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(741, 785)]

def body2_283 : WordLangProgHOL (BitVec 64) :=
.seq body2_282 body2_241

def body2_284 : WordLangProgHOL (BitVec 64) :=
.seq body2_281 body2_283

def body2_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(893, 785), (889, 789), (885, 877), (881, 873)]

def body2_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 897 0#64)

def body2_287 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_286

def body2_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 901 0#64)

def body2_289 : WordLangProgHOL (BitVec 64) :=
.seq body2_287 body2_288

def body2_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 905 0#64)

def body2_291 : WordLangProgHOL (BitVec 64) :=
.seq body2_289 body2_290

def body2_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 909 0#64)

def body2_293 : WordLangProgHOL (BitVec 64) :=
.seq body2_291 body2_292

def body2_294 : WordLangProgHOL (BitVec 64) :=
.seq body2_285 body2_293

def body2_295 : WordLangProgHOL (BitVec 64) :=
.seq body2_284 body2_294

def body2_296 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 785 (Flapjack.WordRegImm.reg 789) body2_277 body2_295

def body2_297 : WordLangProgHOL (BitVec 64) :=
.seq body2_213 body2_296

def body2_298 : WordLangProgHOL (BitVec 64) :=
.seq body2_297 body2_38

def body2_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(741, 893)]

def body2_300 : WordLangProgHOL (BitVec 64) :=
.seq body2_298 body2_299

def body2_301 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)) body2_300 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln))

def body2_302 : WordLangProgHOL (BitVec 64) :=
.seq body2_210 body2_301

def body2_303 : WordLangProgHOL (BitVec 64) :=
.seq body2_208 body2_302

def body2_304 : WordLangProgHOL (BitVec 64) :=
.seq body2_303 body2_38

def body2_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(913, 761)]

def body2_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(917, 745)]

def body2_307 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 921 913 (Flapjack.WordRegImm.reg 917)))

def body2_308 : WordLangProgHOL (BitVec 64) :=
.seq body2_306 body2_307

def body2_309 : WordLangProgHOL (BitVec 64) :=
.seq body2_305 body2_308

def body2_310 : WordLangProgHOL (BitVec 64) :=
.seq body2_304 body2_309

def body2_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(925, 741)]

def body2_312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 929 Flapjack.WordStore.heapLength

def body2_313 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 933 929 (Flapjack.WordRegImm.imm 1#64)))

def body2_314 : WordLangProgHOL (BitVec 64) :=
.seq body2_312 body2_313

def body2_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 937 933

def body2_316 : WordLangProgHOL (BitVec 64) :=
.seq body2_314 body2_315

def body2_317 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 941 (Flapjack.WordLangAddr.addr 937 18446744073709551464#64))

def body2_318 : WordLangProgHOL (BitVec 64) :=
.seq body2_316 body2_317

def body2_319 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 945 925 (Flapjack.WordRegImm.reg 941)))

def body2_320 : WordLangProgHOL (BitVec 64) :=
.seq body2_318 body2_319

def body2_321 : WordLangProgHOL (BitVec 64) :=
.seq body2_311 body2_320

def body2_322 : WordLangProgHOL (BitVec 64) :=
.seq body2_310 body2_321

def body2_323 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 949 32#64)

def body2_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(953, 925)]

def body2_325 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 957 949 (Flapjack.WordRegImm.reg 953)))

def body2_326 : WordLangProgHOL (BitVec 64) :=
.seq body2_324 body2_325

def body2_327 : WordLangProgHOL (BitVec 64) :=
.seq body2_323 body2_326

def body2_328 : WordLangProgHOL (BitVec 64) :=
.seq body2_322 body2_327

def body2_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(963, 737), (967, 917), (971, 757), (975, 913), (979, 781)]

def body2_330 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 921), (4, 945), (6, 957)]

def body2_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(985, 963), (989, 967), (993, 971), (997, 975), (1001, 979)]

def body2_332 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1005, 2)]

def body2_333 : WordLangProgHOL (BitVec 64) :=
.seq body2_332 body2_12

def body2_334 : WordLangProgHOL (BitVec 64) :=
.seq body2_331 body2_333

def body2_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1013 0#64)

def body2_336 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_335

def body2_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1017, 1005)]

def body2_338 : WordLangProgHOL (BitVec 64) :=
.seq body2_336 body2_337

def body2_339 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_338

def body2_340 : WordLangProgHOL (BitVec 64) :=
.seq body2_334 body2_339

def body2_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1009, 2)]

def body2_342 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1009)]

def body2_343 : WordLangProgHOL (BitVec 64) :=
.seq body2_342 body2_24

def body2_344 : WordLangProgHOL (BitVec 64) :=
.seq body2_341 body2_343

def body2_345 : WordLangProgHOL (BitVec 64) :=
.seq body2_331 body2_344

def body2_346 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1013, 1009)]

def body2_347 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_346

def body2_348 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1017 0#64)

def body2_349 : WordLangProgHOL (BitVec 64) :=
.seq body2_347 body2_348

def body2_350 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_349

def body2_351 : WordLangProgHOL (BitVec 64) :=
.seq body2_345 body2_350

def body2_352 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body2_340, 336, 12)) (some 176) ([2, 4, 6]) (some (2, body2_351, 336, 13))

def body2_353 : WordLangProgHOL (BitVec 64) :=
.seq body2_330 body2_352

def body2_354 : WordLangProgHOL (BitVec 64) :=
.seq body2_329 body2_353

def body2_355 : WordLangProgHOL (BitVec 64) :=
.seq body2_328 body2_354

def body2_356 : WordLangProgHOL (BitVec 64) :=
.seq body2_355 body2_38

def body2_357 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1021, 1017)]

def body2_358 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1025, 997)]

def body2_359 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1029 1021 (Flapjack.WordRegImm.reg 1025)))

def body2_360 : WordLangProgHOL (BitVec 64) :=
.seq body2_358 body2_359

def body2_361 : WordLangProgHOL (BitVec 64) :=
.seq body2_357 body2_360

def body2_362 : WordLangProgHOL (BitVec 64) :=
.seq body2_356 body2_361

def body2_363 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1033, 1029)]

def body2_364 : WordLangProgHOL (BitVec 64) :=
.seq body2_362 body2_363

def body2_365 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1037, 1033)]

def body2_366 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1041, 989)]

def body2_367 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1045 1037 (Flapjack.WordRegImm.reg 1041)))

def body2_368 : WordLangProgHOL (BitVec 64) :=
.seq body2_366 body2_367

def body2_369 : WordLangProgHOL (BitVec 64) :=
.seq body2_365 body2_368

def body2_370 : WordLangProgHOL (BitVec 64) :=
.seq body2_364 body2_369

def body2_371 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1049, 993)]

def body2_372 : WordLangProgHOL (BitVec 64) :=
.seq body2_370 body2_371

def body2_373 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1053 32#64)

def body2_374 : WordLangProgHOL (BitVec 64) :=
.seq body2_372 body2_373

def body2_375 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1057 32#64)

def body2_376 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1063, 985), (1067, 1041), (1071, 1037), (1075, 1001)]

def body2_377 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1045), (4, 1049), (6, 1057)]

def body2_378 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1081, 1063), (1085, 1067), (1089, 1071), (1093, 1075)]

def body2_379 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1097, 2)]

def body2_380 : WordLangProgHOL (BitVec 64) :=
.seq body2_379 body2_12

def body2_381 : WordLangProgHOL (BitVec 64) :=
.seq body2_378 body2_380

def body2_382 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1105, 1097)]

def body2_383 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_382

def body2_384 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1109 0#64)

def body2_385 : WordLangProgHOL (BitVec 64) :=
.seq body2_383 body2_384

def body2_386 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_385

def body2_387 : WordLangProgHOL (BitVec 64) :=
.seq body2_381 body2_386

def body2_388 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1101, 2)]

def body2_389 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1101)]

def body2_390 : WordLangProgHOL (BitVec 64) :=
.seq body2_389 body2_24

def body2_391 : WordLangProgHOL (BitVec 64) :=
.seq body2_388 body2_390

def body2_392 : WordLangProgHOL (BitVec 64) :=
.seq body2_378 body2_391

def body2_393 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1105 0#64)

def body2_394 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_393

def body2_395 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1109, 1101)]

def body2_396 : WordLangProgHOL (BitVec 64) :=
.seq body2_394 body2_395

def body2_397 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_396

def body2_398 : WordLangProgHOL (BitVec 64) :=
.seq body2_392 body2_397

def body2_399 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body2_387, 336, 14)) (some 176) ([2, 4, 6]) (some (2, body2_398, 336, 15))

def body2_400 : WordLangProgHOL (BitVec 64) :=
.seq body2_377 body2_399

def body2_401 : WordLangProgHOL (BitVec 64) :=
.seq body2_376 body2_400

def body2_402 : WordLangProgHOL (BitVec 64) :=
.seq body2_375 body2_401

def body2_403 : WordLangProgHOL (BitVec 64) :=
.seq body2_374 body2_402

def body2_404 : WordLangProgHOL (BitVec 64) :=
.seq body2_403 body2_38

def body2_405 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1113, 1105)]

def body2_406 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1117, 1089)]

def body2_407 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1121 1113 (Flapjack.WordRegImm.reg 1117)))

def body2_408 : WordLangProgHOL (BitVec 64) :=
.seq body2_406 body2_407

def body2_409 : WordLangProgHOL (BitVec 64) :=
.seq body2_405 body2_408

def body2_410 : WordLangProgHOL (BitVec 64) :=
.seq body2_404 body2_409

def body2_411 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1125, 1121)]

def body2_412 : WordLangProgHOL (BitVec 64) :=
.seq body2_410 body2_411

def body2_413 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1129, 1125)]

def body2_414 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1133, 1085)]

def body2_415 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1137 1129 (Flapjack.WordRegImm.reg 1133)))

def body2_416 : WordLangProgHOL (BitVec 64) :=
.seq body2_414 body2_415

def body2_417 : WordLangProgHOL (BitVec 64) :=
.seq body2_413 body2_416

def body2_418 : WordLangProgHOL (BitVec 64) :=
.seq body2_412 body2_417

def body2_419 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1141, 1093)]

def body2_420 : WordLangProgHOL (BitVec 64) :=
.seq body2_418 body2_419

def body2_421 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1145 32#64)

def body2_422 : WordLangProgHOL (BitVec 64) :=
.seq body2_420 body2_421

def body2_423 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1149 32#64)

def body2_424 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1155, 1081), (1159, 1133), (1163, 1129)]

def body2_425 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1137), (4, 1141), (6, 1149)]

def body2_426 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1169, 1155), (1173, 1159), (1177, 1163)]

def body2_427 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1181, 2)]

def body2_428 : WordLangProgHOL (BitVec 64) :=
.seq body2_427 body2_12

def body2_429 : WordLangProgHOL (BitVec 64) :=
.seq body2_426 body2_428

def body2_430 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1189 0#64)

def body2_431 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_430

def body2_432 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1193, 1181)]

def body2_433 : WordLangProgHOL (BitVec 64) :=
.seq body2_431 body2_432

def body2_434 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_433

def body2_435 : WordLangProgHOL (BitVec 64) :=
.seq body2_429 body2_434

def body2_436 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1185, 2)]

def body2_437 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1185)]

def body2_438 : WordLangProgHOL (BitVec 64) :=
.seq body2_437 body2_24

def body2_439 : WordLangProgHOL (BitVec 64) :=
.seq body2_436 body2_438

def body2_440 : WordLangProgHOL (BitVec 64) :=
.seq body2_426 body2_439

def body2_441 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1189, 1185)]

def body2_442 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_441

def body2_443 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1193 0#64)

def body2_444 : WordLangProgHOL (BitVec 64) :=
.seq body2_442 body2_443

def body2_445 : WordLangProgHOL (BitVec 64) :=
.seq body2_15 body2_444

def body2_446 : WordLangProgHOL (BitVec 64) :=
.seq body2_440 body2_445

def body2_447 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body2_435, 336, 16)) (some 176) ([2, 4, 6]) (some (2, body2_446, 336, 17))

def body2_448 : WordLangProgHOL (BitVec 64) :=
.seq body2_425 body2_447

def body2_449 : WordLangProgHOL (BitVec 64) :=
.seq body2_424 body2_448

def body2_450 : WordLangProgHOL (BitVec 64) :=
.seq body2_423 body2_449

def body2_451 : WordLangProgHOL (BitVec 64) :=
.seq body2_422 body2_450

def body2_452 : WordLangProgHOL (BitVec 64) :=
.seq body2_451 body2_38

def body2_453 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1197, 1193)]

def body2_454 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1201, 1177)]

def body2_455 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1205 1197 (Flapjack.WordRegImm.reg 1201)))

def body2_456 : WordLangProgHOL (BitVec 64) :=
.seq body2_454 body2_455

def body2_457 : WordLangProgHOL (BitVec 64) :=
.seq body2_453 body2_456

def body2_458 : WordLangProgHOL (BitVec 64) :=
.seq body2_452 body2_457

def body2_459 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1209, 1205)]

def body2_460 : WordLangProgHOL (BitVec 64) :=
.seq body2_458 body2_459

def body2_461 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1213, 1173)]

def body2_462 : WordLangProgHOL (BitVec 64) :=
.seq body2_460 body2_461

def body2_463 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1217 248#64)

def body2_464 : WordLangProgHOL (BitVec 64) :=
.seq body2_462 body2_463

def body2_465 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 1217 (Flapjack.WordLangAddr.addr 1213 0#64))

def body2_466 : WordLangProgHOL (BitVec 64) :=
.seq body2_464 body2_465

def body2_467 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1221, 1213)]

def body2_468 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1225 1221 (Flapjack.WordRegImm.imm 1#64)))

def body2_469 : WordLangProgHOL (BitVec 64) :=
.seq body2_467 body2_468

def body2_470 : WordLangProgHOL (BitVec 64) :=
.seq body2_466 body2_469

def body2_471 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1229, 1209)]

def body2_472 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1233 1229 (Flapjack.WordRegImm.imm 18446744073709551614#64)))

def body2_473 : WordLangProgHOL (BitVec 64) :=
.seq body2_471 body2_472

def body2_474 : WordLangProgHOL (BitVec 64) :=
.seq body2_470 body2_473

def body2_475 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 1233 (Flapjack.WordLangAddr.addr 1225 0#64))

def body2_476 : WordLangProgHOL (BitVec 64) :=
.seq body2_474 body2_475

def body2_477 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1237, 1229)]

def body2_478 : WordLangProgHOL (BitVec 64) :=
.seq body2_476 body2_477

def body2_479 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 1237)]

def body2_480 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 1169 [2]

def body2_481 : WordLangProgHOL (BitVec 64) :=
.seq body2_479 body2_480

def body2_482 : WordLangProgHOL (BitVec 64) :=
.seq body2_478 body2_481

def body2_483 : WordLangProgHOL (BitVec 64) :=
.seq body2_0 body2_482

def pass2 : WordLangProgHOL (BitVec 64) := body2_483
def body3_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(41, 0), (45, 2), (49, 4), (53, 6), (57, 8), (61, 10), (65, 12), (69, 14), (73, 16)]

def body3_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 2#64)

def body3_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 73)]

def body3_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 85 81 (Flapjack.WordRegImm.imm 2#64)))

def body3_4 : WordLangProgHOL (BitVec 64) :=
.seq body3_2 body3_3

def body3_5 : WordLangProgHOL (BitVec 64) :=
.seq body3_1 body3_4

def body3_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 45)]

def body3_7 : WordLangProgHOL (BitVec 64) :=
.seq body3_5 body3_6

def body3_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(95, 41), (99, 81), (103, 57), (107, 49), (111, 65), (115, 77), (119, 89), (123, 61), (127, 53), (131, 69)]

def body3_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85), (4, 89)]

def body3_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(137, 95), (141, 99), (145, 103), (149, 107), (153, 111), (157, 115), (161, 119), (165, 123), (169, 127), (173, 131)]

def body3_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(177, 2)]

def body3_12 : WordLangProgHOL (BitVec 64) :=
.seq body3_10 body3_11

def body3_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(185, 177)]

def body3_14 : WordLangProgHOL (BitVec 64) :=
.seq body3_12 body3_13

def body3_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(181, 2)]

def body3_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 181)]

def body3_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body3_18 : WordLangProgHOL (BitVec 64) :=
.seq body3_16 body3_17

def body3_19 : WordLangProgHOL (BitVec 64) :=
.seq body3_15 body3_18

def body3_20 : WordLangProgHOL (BitVec 64) :=
.seq body3_10 body3_19

def body3_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 185 0#64)

def body3_22 : WordLangProgHOL (BitVec 64) :=
.seq body3_20 body3_21

def body3_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))),
  Flapjack.Spt.ln)), body3_14, 336, 2)) (some 177) ([2, 4]) (some (2, body3_22, 336, 3))

def body3_24 : WordLangProgHOL (BitVec 64) :=
.seq body3_9 body3_23

def body3_25 : WordLangProgHOL (BitVec 64) :=
.seq body3_8 body3_24

def body3_26 : WordLangProgHOL (BitVec 64) :=
.seq body3_7 body3_25

def body3_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body3_28 : WordLangProgHOL (BitVec 64) :=
.seq body3_26 body3_27

def body3_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(193, 185)]

def body3_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(197, 157)]

def body3_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 201 193 (Flapjack.WordRegImm.reg 197)))

def body3_32 : WordLangProgHOL (BitVec 64) :=
.seq body3_30 body3_31

def body3_33 : WordLangProgHOL (BitVec 64) :=
.seq body3_29 body3_32

def body3_34 : WordLangProgHOL (BitVec 64) :=
.seq body3_28 body3_33

def body3_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 201)]

def body3_36 : WordLangProgHOL (BitVec 64) :=
.seq body3_34 body3_35

def body3_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 209 Flapjack.WordStore.heapLength

def body3_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 213 209 (Flapjack.WordRegImm.imm 1#64)))

def body3_39 : WordLangProgHOL (BitVec 64) :=
.seq body3_37 body3_38

def body3_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 217 213

def body3_41 : WordLangProgHOL (BitVec 64) :=
.seq body3_39 body3_40

def body3_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 221 (Flapjack.WordLangAddr.addr 217 18446744073709551464#64))

def body3_43 : WordLangProgHOL (BitVec 64) :=
.seq body3_41 body3_42

def body3_44 : WordLangProgHOL (BitVec 64) :=
.seq body3_36 body3_43

def body3_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(225, 165)]

def body3_46 : WordLangProgHOL (BitVec 64) :=
.seq body3_44 body3_45

def body3_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(231, 137), (235, 141), (239, 145), (243, 149), (247, 153), (251, 205), (255, 161), (259, 225), (263, 169),
    (267, 193), (271, 173)]

def body3_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 221), (4, 225)]

def body3_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(277, 231), (281, 235), (285, 239), (289, 243), (293, 247), (297, 251), (301, 255), (305, 259), (309, 263),
    (313, 267), (317, 271)]

def body3_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(325, 2)]

def body3_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 325)]

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
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))))),
  Flapjack.Spt.ln)), body3_49, 336, 4)) (some 89) ([2, 4]) (some (2, body3_54, 336, 5))

def body3_56 : WordLangProgHOL (BitVec 64) :=
.seq body3_48 body3_55

def body3_57 : WordLangProgHOL (BitVec 64) :=
.seq body3_47 body3_56

def body3_58 : WordLangProgHOL (BitVec 64) :=
.seq body3_46 body3_57

def body3_59 : WordLangProgHOL (BitVec 64) :=
.seq body3_58 body3_27

def body3_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 337 Flapjack.WordStore.heapLength

def body3_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 341 337 (Flapjack.WordRegImm.imm 1#64)))

def body3_62 : WordLangProgHOL (BitVec 64) :=
.seq body3_60 body3_61

def body3_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 345 341

def body3_64 : WordLangProgHOL (BitVec 64) :=
.seq body3_62 body3_63

def body3_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 349 (Flapjack.WordLangAddr.addr 345 18446744073709551464#64))

def body3_66 : WordLangProgHOL (BitVec 64) :=
.seq body3_64 body3_65

def body3_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 353 349 (Flapjack.WordRegImm.imm 8#64)))

def body3_68 : WordLangProgHOL (BitVec 64) :=
.seq body3_66 body3_67

def body3_69 : WordLangProgHOL (BitVec 64) :=
.seq body3_59 body3_68

def body3_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(357, 285)]

def body3_71 : WordLangProgHOL (BitVec 64) :=
.seq body3_69 body3_70

def body3_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(363, 277), (367, 281), (371, 357), (375, 289), (379, 293), (383, 297), (387, 301), (391, 305), (395, 309),
    (399, 313), (403, 317)]

def body3_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 353), (4, 357)]

def body3_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(409, 363), (413, 367), (417, 371), (421, 375), (425, 379), (429, 383), (433, 387), (437, 391), (441, 395),
    (445, 399), (449, 403)]

def body3_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(457, 2)]

def body3_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 457)]

def body3_77 : WordLangProgHOL (BitVec 64) :=
.seq body3_76 body3_17

def body3_78 : WordLangProgHOL (BitVec 64) :=
.seq body3_75 body3_77

def body3_79 : WordLangProgHOL (BitVec 64) :=
.seq body3_74 body3_78

def body3_80 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body3_74, 336, 6)) (some 89) ([2, 4]) (some (2, body3_79, 336, 7))

def body3_81 : WordLangProgHOL (BitVec 64) :=
.seq body3_73 body3_80

def body3_82 : WordLangProgHOL (BitVec 64) :=
.seq body3_72 body3_81

def body3_83 : WordLangProgHOL (BitVec 64) :=
.seq body3_71 body3_82

def body3_84 : WordLangProgHOL (BitVec 64) :=
.seq body3_83 body3_27

def body3_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 469 Flapjack.WordStore.heapLength

def body3_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 473 469 (Flapjack.WordRegImm.imm 1#64)))

def body3_87 : WordLangProgHOL (BitVec 64) :=
.seq body3_85 body3_86

def body3_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 477 473

def body3_89 : WordLangProgHOL (BitVec 64) :=
.seq body3_87 body3_88

def body3_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 481 (Flapjack.WordLangAddr.addr 477 18446744073709551464#64))

def body3_91 : WordLangProgHOL (BitVec 64) :=
.seq body3_89 body3_90

def body3_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 485 481 (Flapjack.WordRegImm.imm 16#64)))

def body3_93 : WordLangProgHOL (BitVec 64) :=
.seq body3_91 body3_92

def body3_94 : WordLangProgHOL (BitVec 64) :=
.seq body3_84 body3_93

def body3_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(489, 441)]

def body3_96 : WordLangProgHOL (BitVec 64) :=
.seq body3_94 body3_95

def body3_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(495, 409), (499, 413), (503, 417), (507, 421), (511, 425), (515, 429), (519, 433), (523, 437), (527, 489),
    (531, 445), (535, 449)]

def body3_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 485), (4, 489)]

def body3_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(541, 495), (545, 499), (549, 503), (553, 507), (557, 511), (561, 515), (565, 519), (569, 523), (573, 527),
    (577, 531), (581, 535)]

def body3_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(589, 2)]

def body3_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 589)]

def body3_102 : WordLangProgHOL (BitVec 64) :=
.seq body3_101 body3_17

def body3_103 : WordLangProgHOL (BitVec 64) :=
.seq body3_100 body3_102

def body3_104 : WordLangProgHOL (BitVec 64) :=
.seq body3_99 body3_103

def body3_105 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))))),
  Flapjack.Spt.ln)), body3_99, 336, 8)) (some 89) ([2, 4]) (some (2, body3_104, 336, 9))

def body3_106 : WordLangProgHOL (BitVec 64) :=
.seq body3_98 body3_105

def body3_107 : WordLangProgHOL (BitVec 64) :=
.seq body3_97 body3_106

def body3_108 : WordLangProgHOL (BitVec 64) :=
.seq body3_96 body3_107

def body3_109 : WordLangProgHOL (BitVec 64) :=
.seq body3_108 body3_27

def body3_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 601 Flapjack.WordStore.heapLength

def body3_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 605 601 (Flapjack.WordRegImm.imm 1#64)))

def body3_112 : WordLangProgHOL (BitVec 64) :=
.seq body3_110 body3_111

def body3_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 609 605

def body3_114 : WordLangProgHOL (BitVec 64) :=
.seq body3_112 body3_113

def body3_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 613 (Flapjack.WordLangAddr.addr 609 18446744073709551464#64))

def body3_116 : WordLangProgHOL (BitVec 64) :=
.seq body3_114 body3_115

def body3_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 617 613 (Flapjack.WordRegImm.imm 24#64)))

def body3_118 : WordLangProgHOL (BitVec 64) :=
.seq body3_116 body3_117

def body3_119 : WordLangProgHOL (BitVec 64) :=
.seq body3_109 body3_118

def body3_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(621, 553)]

def body3_121 : WordLangProgHOL (BitVec 64) :=
.seq body3_119 body3_120

def body3_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(627, 541), (631, 545), (635, 549), (639, 621), (643, 557), (647, 561), (651, 565), (655, 569), (659, 573),
    (663, 577), (667, 581)]

def body3_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 617), (4, 621)]

def body3_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(673, 627), (677, 631), (681, 635), (685, 639), (689, 643), (693, 647), (697, 651), (701, 655), (705, 659),
    (709, 663), (713, 667)]

def body3_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(721, 2)]

def body3_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 721)]

def body3_127 : WordLangProgHOL (BitVec 64) :=
.seq body3_126 body3_17

def body3_128 : WordLangProgHOL (BitVec 64) :=
.seq body3_125 body3_127

def body3_129 : WordLangProgHOL (BitVec 64) :=
.seq body3_124 body3_128

def body3_130 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body3_124, 336, 10)) (some 89) ([2, 4]) (some (2, body3_129, 336, 11))

def body3_131 : WordLangProgHOL (BitVec 64) :=
.seq body3_123 body3_130

def body3_132 : WordLangProgHOL (BitVec 64) :=
.seq body3_122 body3_131

def body3_133 : WordLangProgHOL (BitVec 64) :=
.seq body3_121 body3_132

def body3_134 : WordLangProgHOL (BitVec 64) :=
.seq body3_133 body3_27

def body3_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 733 0#64)

def body3_136 : WordLangProgHOL (BitVec 64) :=
.seq body3_134 body3_135

def body3_137 : WordLangProgHOL (BitVec 64) :=
.seq body3_136 body3_27

def body3_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(737, 673), (741, 733), (745, 677), (749, 681), (753, 685), (757, 689), (761, 693), (765, 697), (769, 701),
    (773, 705), (777, 709), (781, 713)]

def body3_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(785, 741)]

def body3_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 789 32#64)

def body3_141 : WordLangProgHOL (BitVec 64) :=
.seq body3_139 body3_140

def body3_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(801, 785)]

def body3_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 805 Flapjack.WordStore.heapLength

def body3_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 809 805 (Flapjack.WordRegImm.imm 1#64)))

def body3_145 : WordLangProgHOL (BitVec 64) :=
.seq body3_143 body3_144

def body3_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 813 809

def body3_147 : WordLangProgHOL (BitVec 64) :=
.seq body3_145 body3_146

def body3_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 817 (Flapjack.WordLangAddr.addr 813 18446744073709551464#64))

def body3_149 : WordLangProgHOL (BitVec 64) :=
.seq body3_147 body3_148

def body3_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 821 801 (Flapjack.WordRegImm.reg 817)))

def body3_151 : WordLangProgHOL (BitVec 64) :=
.seq body3_149 body3_150

def body3_152 : WordLangProgHOL (BitVec 64) :=
.seq body3_142 body3_151

def body3_153 : WordLangProgHOL (BitVec 64) :=
.seq body3_27 body3_152

def body3_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 825 (Flapjack.WordLangAddr.addr 821 0#64))

def body3_155 : WordLangProgHOL (BitVec 64) :=
.seq body3_153 body3_154

def body3_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(829, 825)]

def body3_157 : WordLangProgHOL (BitVec 64) :=
.seq body3_155 body3_156

def body3_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 833 0#64)

def body3_159 : WordLangProgHOL (BitVec 64) :=
.seq body3_157 body3_158

def body3_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(741, 801)]

def body3_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body3_162 : WordLangProgHOL (BitVec 64) :=
.seq body3_160 body3_161

def body3_163 : WordLangProgHOL (BitVec 64) :=
.seq body3_27 body3_162

def body3_164 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 829 (Flapjack.WordRegImm.reg 833) body3_163 body3_27

def body3_165 : WordLangProgHOL (BitVec 64) :=
.seq body3_159 body3_164

def body3_166 : WordLangProgHOL (BitVec 64) :=
.seq body3_165 body3_27

def body3_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(861, 801)]

def body3_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 865 861 (Flapjack.WordRegImm.imm 1#64)))

def body3_169 : WordLangProgHOL (BitVec 64) :=
.seq body3_167 body3_168

def body3_170 : WordLangProgHOL (BitVec 64) :=
.seq body3_166 body3_169

def body3_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(869, 865)]

def body3_172 : WordLangProgHOL (BitVec 64) :=
.seq body3_170 body3_171

def body3_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(741, 869)]

def body3_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body3_175 : WordLangProgHOL (BitVec 64) :=
.seq body3_173 body3_174

def body3_176 : WordLangProgHOL (BitVec 64) :=
.seq body3_172 body3_175

def body3_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(893, 869)]

def body3_178 : WordLangProgHOL (BitVec 64) :=
.seq body3_176 body3_177

def body3_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(741, 785)]

def body3_180 : WordLangProgHOL (BitVec 64) :=
.seq body3_179 body3_161

def body3_181 : WordLangProgHOL (BitVec 64) :=
.seq body3_27 body3_180

def body3_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(893, 785)]

def body3_183 : WordLangProgHOL (BitVec 64) :=
.seq body3_181 body3_182

def body3_184 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 785 (Flapjack.WordRegImm.reg 789) body3_178 body3_183

def body3_185 : WordLangProgHOL (BitVec 64) :=
.seq body3_141 body3_184

def body3_186 : WordLangProgHOL (BitVec 64) :=
.seq body3_185 body3_27

def body3_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(741, 893)]

def body3_188 : WordLangProgHOL (BitVec 64) :=
.seq body3_186 body3_187

def body3_189 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)) body3_188 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln))

def body3_190 : WordLangProgHOL (BitVec 64) :=
.seq body3_138 body3_189

def body3_191 : WordLangProgHOL (BitVec 64) :=
.seq body3_137 body3_190

def body3_192 : WordLangProgHOL (BitVec 64) :=
.seq body3_191 body3_27

def body3_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(913, 761)]

def body3_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(917, 745)]

def body3_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 921 913 (Flapjack.WordRegImm.reg 917)))

def body3_196 : WordLangProgHOL (BitVec 64) :=
.seq body3_194 body3_195

def body3_197 : WordLangProgHOL (BitVec 64) :=
.seq body3_193 body3_196

def body3_198 : WordLangProgHOL (BitVec 64) :=
.seq body3_192 body3_197

def body3_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(925, 741)]

def body3_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 929 Flapjack.WordStore.heapLength

def body3_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 933 929 (Flapjack.WordRegImm.imm 1#64)))

def body3_202 : WordLangProgHOL (BitVec 64) :=
.seq body3_200 body3_201

def body3_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 937 933

def body3_204 : WordLangProgHOL (BitVec 64) :=
.seq body3_202 body3_203

def body3_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 941 (Flapjack.WordLangAddr.addr 937 18446744073709551464#64))

def body3_206 : WordLangProgHOL (BitVec 64) :=
.seq body3_204 body3_205

def body3_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 945 925 (Flapjack.WordRegImm.reg 941)))

def body3_208 : WordLangProgHOL (BitVec 64) :=
.seq body3_206 body3_207

def body3_209 : WordLangProgHOL (BitVec 64) :=
.seq body3_199 body3_208

def body3_210 : WordLangProgHOL (BitVec 64) :=
.seq body3_198 body3_209

def body3_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 949 32#64)

def body3_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(953, 925)]

def body3_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 957 949 (Flapjack.WordRegImm.reg 953)))

def body3_214 : WordLangProgHOL (BitVec 64) :=
.seq body3_212 body3_213

def body3_215 : WordLangProgHOL (BitVec 64) :=
.seq body3_211 body3_214

def body3_216 : WordLangProgHOL (BitVec 64) :=
.seq body3_210 body3_215

def body3_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(963, 737), (967, 917), (971, 757), (975, 913), (979, 781)]

def body3_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 921), (4, 945), (6, 957)]

def body3_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(985, 963), (989, 967), (993, 971), (997, 975), (1001, 979)]

def body3_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1005, 2)]

def body3_221 : WordLangProgHOL (BitVec 64) :=
.seq body3_219 body3_220

def body3_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1017, 1005)]

def body3_223 : WordLangProgHOL (BitVec 64) :=
.seq body3_221 body3_222

def body3_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1009, 2)]

def body3_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1009)]

def body3_226 : WordLangProgHOL (BitVec 64) :=
.seq body3_225 body3_17

def body3_227 : WordLangProgHOL (BitVec 64) :=
.seq body3_224 body3_226

def body3_228 : WordLangProgHOL (BitVec 64) :=
.seq body3_219 body3_227

def body3_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1017 0#64)

def body3_230 : WordLangProgHOL (BitVec 64) :=
.seq body3_228 body3_229

def body3_231 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body3_223, 336, 12)) (some 176) ([2, 4, 6]) (some (2, body3_230, 336, 13))

def body3_232 : WordLangProgHOL (BitVec 64) :=
.seq body3_218 body3_231

def body3_233 : WordLangProgHOL (BitVec 64) :=
.seq body3_217 body3_232

def body3_234 : WordLangProgHOL (BitVec 64) :=
.seq body3_216 body3_233

def body3_235 : WordLangProgHOL (BitVec 64) :=
.seq body3_234 body3_27

def body3_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1021, 1017)]

def body3_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1025, 997)]

def body3_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1029 1021 (Flapjack.WordRegImm.reg 1025)))

def body3_239 : WordLangProgHOL (BitVec 64) :=
.seq body3_237 body3_238

def body3_240 : WordLangProgHOL (BitVec 64) :=
.seq body3_236 body3_239

def body3_241 : WordLangProgHOL (BitVec 64) :=
.seq body3_235 body3_240

def body3_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1033, 1029)]

def body3_243 : WordLangProgHOL (BitVec 64) :=
.seq body3_241 body3_242

def body3_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1037, 1033)]

def body3_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1041, 989)]

def body3_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1045 1037 (Flapjack.WordRegImm.reg 1041)))

def body3_247 : WordLangProgHOL (BitVec 64) :=
.seq body3_245 body3_246

def body3_248 : WordLangProgHOL (BitVec 64) :=
.seq body3_244 body3_247

def body3_249 : WordLangProgHOL (BitVec 64) :=
.seq body3_243 body3_248

def body3_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1049, 993)]

def body3_251 : WordLangProgHOL (BitVec 64) :=
.seq body3_249 body3_250

def body3_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1057 32#64)

def body3_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1063, 985), (1067, 1041), (1071, 1037), (1075, 1001)]

def body3_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1045), (4, 1049), (6, 1057)]

def body3_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1081, 1063), (1085, 1067), (1089, 1071), (1093, 1075)]

def body3_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1097, 2)]

def body3_257 : WordLangProgHOL (BitVec 64) :=
.seq body3_255 body3_256

def body3_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1105, 1097)]

def body3_259 : WordLangProgHOL (BitVec 64) :=
.seq body3_257 body3_258

def body3_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1101, 2)]

def body3_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1101)]

def body3_262 : WordLangProgHOL (BitVec 64) :=
.seq body3_261 body3_17

def body3_263 : WordLangProgHOL (BitVec 64) :=
.seq body3_260 body3_262

def body3_264 : WordLangProgHOL (BitVec 64) :=
.seq body3_255 body3_263

def body3_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1105 0#64)

def body3_266 : WordLangProgHOL (BitVec 64) :=
.seq body3_264 body3_265

def body3_267 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body3_259, 336, 14)) (some 176) ([2, 4, 6]) (some (2, body3_266, 336, 15))

def body3_268 : WordLangProgHOL (BitVec 64) :=
.seq body3_254 body3_267

def body3_269 : WordLangProgHOL (BitVec 64) :=
.seq body3_253 body3_268

def body3_270 : WordLangProgHOL (BitVec 64) :=
.seq body3_252 body3_269

def body3_271 : WordLangProgHOL (BitVec 64) :=
.seq body3_251 body3_270

def body3_272 : WordLangProgHOL (BitVec 64) :=
.seq body3_271 body3_27

def body3_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1113, 1105)]

def body3_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1117, 1089)]

def body3_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1121 1113 (Flapjack.WordRegImm.reg 1117)))

def body3_276 : WordLangProgHOL (BitVec 64) :=
.seq body3_274 body3_275

def body3_277 : WordLangProgHOL (BitVec 64) :=
.seq body3_273 body3_276

def body3_278 : WordLangProgHOL (BitVec 64) :=
.seq body3_272 body3_277

def body3_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1125, 1121)]

def body3_280 : WordLangProgHOL (BitVec 64) :=
.seq body3_278 body3_279

def body3_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1129, 1125)]

def body3_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1133, 1085)]

def body3_283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1137 1129 (Flapjack.WordRegImm.reg 1133)))

def body3_284 : WordLangProgHOL (BitVec 64) :=
.seq body3_282 body3_283

def body3_285 : WordLangProgHOL (BitVec 64) :=
.seq body3_281 body3_284

def body3_286 : WordLangProgHOL (BitVec 64) :=
.seq body3_280 body3_285

def body3_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1141, 1093)]

def body3_288 : WordLangProgHOL (BitVec 64) :=
.seq body3_286 body3_287

def body3_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1149 32#64)

def body3_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1155, 1081), (1159, 1133), (1163, 1129)]

def body3_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1137), (4, 1141), (6, 1149)]

def body3_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1169, 1155), (1173, 1159), (1177, 1163)]

def body3_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1181, 2)]

def body3_294 : WordLangProgHOL (BitVec 64) :=
.seq body3_292 body3_293

def body3_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1193, 1181)]

def body3_296 : WordLangProgHOL (BitVec 64) :=
.seq body3_294 body3_295

def body3_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1185, 2)]

def body3_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1185)]

def body3_299 : WordLangProgHOL (BitVec 64) :=
.seq body3_298 body3_17

def body3_300 : WordLangProgHOL (BitVec 64) :=
.seq body3_297 body3_299

def body3_301 : WordLangProgHOL (BitVec 64) :=
.seq body3_292 body3_300

def body3_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1193 0#64)

def body3_303 : WordLangProgHOL (BitVec 64) :=
.seq body3_301 body3_302

def body3_304 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body3_296, 336, 16)) (some 176) ([2, 4, 6]) (some (2, body3_303, 336, 17))

def body3_305 : WordLangProgHOL (BitVec 64) :=
.seq body3_291 body3_304

def body3_306 : WordLangProgHOL (BitVec 64) :=
.seq body3_290 body3_305

def body3_307 : WordLangProgHOL (BitVec 64) :=
.seq body3_289 body3_306

def body3_308 : WordLangProgHOL (BitVec 64) :=
.seq body3_288 body3_307

def body3_309 : WordLangProgHOL (BitVec 64) :=
.seq body3_308 body3_27

def body3_310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1197, 1193)]

def body3_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1201, 1177)]

def body3_312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1205 1197 (Flapjack.WordRegImm.reg 1201)))

def body3_313 : WordLangProgHOL (BitVec 64) :=
.seq body3_311 body3_312

def body3_314 : WordLangProgHOL (BitVec 64) :=
.seq body3_310 body3_313

def body3_315 : WordLangProgHOL (BitVec 64) :=
.seq body3_309 body3_314

def body3_316 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1209, 1205)]

def body3_317 : WordLangProgHOL (BitVec 64) :=
.seq body3_315 body3_316

def body3_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1213, 1173)]

def body3_319 : WordLangProgHOL (BitVec 64) :=
.seq body3_317 body3_318

def body3_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1217 248#64)

def body3_321 : WordLangProgHOL (BitVec 64) :=
.seq body3_319 body3_320

def body3_322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 1217 (Flapjack.WordLangAddr.addr 1213 0#64))

def body3_323 : WordLangProgHOL (BitVec 64) :=
.seq body3_321 body3_322

def body3_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1221, 1213)]

def body3_325 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1225 1221 (Flapjack.WordRegImm.imm 1#64)))

def body3_326 : WordLangProgHOL (BitVec 64) :=
.seq body3_324 body3_325

def body3_327 : WordLangProgHOL (BitVec 64) :=
.seq body3_323 body3_326

def body3_328 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1229, 1209)]

def body3_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1233 1229 (Flapjack.WordRegImm.imm 18446744073709551614#64)))

def body3_330 : WordLangProgHOL (BitVec 64) :=
.seq body3_328 body3_329

def body3_331 : WordLangProgHOL (BitVec 64) :=
.seq body3_327 body3_330

def body3_332 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 1233 (Flapjack.WordLangAddr.addr 1225 0#64))

def body3_333 : WordLangProgHOL (BitVec 64) :=
.seq body3_331 body3_332

def body3_334 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1237, 1229)]

def body3_335 : WordLangProgHOL (BitVec 64) :=
.seq body3_333 body3_334

def body3_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 1237)]

def body3_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 1169 [2]

def body3_338 : WordLangProgHOL (BitVec 64) :=
.seq body3_336 body3_337

def body3_339 : WordLangProgHOL (BitVec 64) :=
.seq body3_335 body3_338

def body3_340 : WordLangProgHOL (BitVec 64) :=
.seq body3_0 body3_339

def pass3 : WordLangProgHOL (BitVec 64) := body3_340
def body4_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(41, 0), (45, 2), (49, 4), (53, 6), (57, 8), (61, 10), (65, 12), (69, 14), (73, 16)]

def body4_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 2#64)

def body4_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 73)]

def body4_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 85 81 (Flapjack.WordRegImm.imm 2#64)))

def body4_4 : WordLangProgHOL (BitVec 64) :=
.seq body4_2 body4_3

def body4_5 : WordLangProgHOL (BitVec 64) :=
.seq body4_1 body4_4

def body4_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 45)]

def body4_7 : WordLangProgHOL (BitVec 64) :=
.seq body4_5 body4_6

def body4_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(95, 41), (99, 81), (103, 57), (107, 49), (111, 65), (115, 77), (119, 89), (123, 61), (127, 53), (131, 69)]

def body4_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85), (4, 89)]

def body4_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(137, 95), (141, 99), (145, 103), (149, 107), (153, 111), (157, 115), (161, 119), (165, 123), (169, 127), (173, 131)]

def body4_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(177, 2)]

def body4_12 : WordLangProgHOL (BitVec 64) :=
.seq body4_10 body4_11

def body4_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(185, 177)]

def body4_14 : WordLangProgHOL (BitVec 64) :=
.seq body4_12 body4_13

def body4_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(181, 2)]

def body4_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 181)]

def body4_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body4_18 : WordLangProgHOL (BitVec 64) :=
.seq body4_16 body4_17

def body4_19 : WordLangProgHOL (BitVec 64) :=
.seq body4_15 body4_18

def body4_20 : WordLangProgHOL (BitVec 64) :=
.seq body4_10 body4_19

def body4_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 185 0#64)

def body4_22 : WordLangProgHOL (BitVec 64) :=
.seq body4_20 body4_21

def body4_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))),
  Flapjack.Spt.ln)), body4_14, 336, 2)) (some 177) ([2, 4]) (some (2, body4_22, 336, 3))

def body4_24 : WordLangProgHOL (BitVec 64) :=
.seq body4_9 body4_23

def body4_25 : WordLangProgHOL (BitVec 64) :=
.seq body4_8 body4_24

def body4_26 : WordLangProgHOL (BitVec 64) :=
.seq body4_7 body4_25

def body4_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body4_28 : WordLangProgHOL (BitVec 64) :=
.seq body4_26 body4_27

def body4_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(193, 185)]

def body4_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(197, 157)]

def body4_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 201 193 (Flapjack.WordRegImm.reg 197)))

def body4_32 : WordLangProgHOL (BitVec 64) :=
.seq body4_30 body4_31

def body4_33 : WordLangProgHOL (BitVec 64) :=
.seq body4_29 body4_32

def body4_34 : WordLangProgHOL (BitVec 64) :=
.seq body4_28 body4_33

def body4_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 201)]

def body4_36 : WordLangProgHOL (BitVec 64) :=
.seq body4_34 body4_35

def body4_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 209 Flapjack.WordStore.heapLength

def body4_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 213 209 (Flapjack.WordRegImm.imm 1#64)))

def body4_39 : WordLangProgHOL (BitVec 64) :=
.seq body4_37 body4_38

def body4_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 217 213

def body4_41 : WordLangProgHOL (BitVec 64) :=
.seq body4_39 body4_40

def body4_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 221 (Flapjack.WordLangAddr.addr 217 18446744073709551464#64))

def body4_43 : WordLangProgHOL (BitVec 64) :=
.seq body4_41 body4_42

def body4_44 : WordLangProgHOL (BitVec 64) :=
.seq body4_36 body4_43

def body4_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(225, 165)]

def body4_46 : WordLangProgHOL (BitVec 64) :=
.seq body4_44 body4_45

def body4_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(231, 137), (235, 141), (239, 145), (243, 149), (247, 153), (251, 205), (255, 161), (259, 225), (263, 169),
    (267, 193), (271, 173)]

def body4_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 221), (4, 225)]

def body4_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(277, 231), (281, 235), (285, 239), (289, 243), (293, 247), (297, 251), (301, 255), (305, 259), (309, 263),
    (313, 267), (317, 271)]

def body4_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(325, 2)]

def body4_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 325)]

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
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))))),
  Flapjack.Spt.ln)), body4_49, 336, 4)) (some 89) ([2, 4]) (some (2, body4_54, 336, 5))

def body4_56 : WordLangProgHOL (BitVec 64) :=
.seq body4_48 body4_55

def body4_57 : WordLangProgHOL (BitVec 64) :=
.seq body4_47 body4_56

def body4_58 : WordLangProgHOL (BitVec 64) :=
.seq body4_46 body4_57

def body4_59 : WordLangProgHOL (BitVec 64) :=
.seq body4_58 body4_27

def body4_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 337 Flapjack.WordStore.heapLength

def body4_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 341 337 (Flapjack.WordRegImm.imm 1#64)))

def body4_62 : WordLangProgHOL (BitVec 64) :=
.seq body4_60 body4_61

def body4_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 345 341

def body4_64 : WordLangProgHOL (BitVec 64) :=
.seq body4_62 body4_63

def body4_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 349 (Flapjack.WordLangAddr.addr 345 18446744073709551464#64))

def body4_66 : WordLangProgHOL (BitVec 64) :=
.seq body4_64 body4_65

def body4_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 353 349 (Flapjack.WordRegImm.imm 8#64)))

def body4_68 : WordLangProgHOL (BitVec 64) :=
.seq body4_66 body4_67

def body4_69 : WordLangProgHOL (BitVec 64) :=
.seq body4_59 body4_68

def body4_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(357, 285)]

def body4_71 : WordLangProgHOL (BitVec 64) :=
.seq body4_69 body4_70

def body4_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(363, 277), (367, 281), (371, 357), (375, 289), (379, 293), (383, 297), (387, 301), (391, 305), (395, 309),
    (399, 313), (403, 317)]

def body4_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 353), (4, 357)]

def body4_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(409, 363), (413, 367), (417, 371), (421, 375), (425, 379), (429, 383), (433, 387), (437, 391), (441, 395),
    (445, 399), (449, 403)]

def body4_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(457, 2)]

def body4_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 457)]

def body4_77 : WordLangProgHOL (BitVec 64) :=
.seq body4_76 body4_17

def body4_78 : WordLangProgHOL (BitVec 64) :=
.seq body4_75 body4_77

def body4_79 : WordLangProgHOL (BitVec 64) :=
.seq body4_74 body4_78

def body4_80 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body4_74, 336, 6)) (some 89) ([2, 4]) (some (2, body4_79, 336, 7))

def body4_81 : WordLangProgHOL (BitVec 64) :=
.seq body4_73 body4_80

def body4_82 : WordLangProgHOL (BitVec 64) :=
.seq body4_72 body4_81

def body4_83 : WordLangProgHOL (BitVec 64) :=
.seq body4_71 body4_82

def body4_84 : WordLangProgHOL (BitVec 64) :=
.seq body4_83 body4_27

def body4_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 469 Flapjack.WordStore.heapLength

def body4_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 473 469 (Flapjack.WordRegImm.imm 1#64)))

def body4_87 : WordLangProgHOL (BitVec 64) :=
.seq body4_85 body4_86

def body4_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 477 473

def body4_89 : WordLangProgHOL (BitVec 64) :=
.seq body4_87 body4_88

def body4_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 481 (Flapjack.WordLangAddr.addr 477 18446744073709551464#64))

def body4_91 : WordLangProgHOL (BitVec 64) :=
.seq body4_89 body4_90

def body4_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 485 481 (Flapjack.WordRegImm.imm 16#64)))

def body4_93 : WordLangProgHOL (BitVec 64) :=
.seq body4_91 body4_92

def body4_94 : WordLangProgHOL (BitVec 64) :=
.seq body4_84 body4_93

def body4_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(489, 441)]

def body4_96 : WordLangProgHOL (BitVec 64) :=
.seq body4_94 body4_95

def body4_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(495, 409), (499, 413), (503, 417), (507, 421), (511, 425), (515, 429), (519, 433), (523, 437), (527, 489),
    (531, 445), (535, 449)]

def body4_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 485), (4, 489)]

def body4_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(541, 495), (545, 499), (549, 503), (553, 507), (557, 511), (561, 515), (565, 519), (569, 523), (573, 527),
    (577, 531), (581, 535)]

def body4_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(589, 2)]

def body4_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 589)]

def body4_102 : WordLangProgHOL (BitVec 64) :=
.seq body4_101 body4_17

def body4_103 : WordLangProgHOL (BitVec 64) :=
.seq body4_100 body4_102

def body4_104 : WordLangProgHOL (BitVec 64) :=
.seq body4_99 body4_103

def body4_105 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))))),
  Flapjack.Spt.ln)), body4_99, 336, 8)) (some 89) ([2, 4]) (some (2, body4_104, 336, 9))

def body4_106 : WordLangProgHOL (BitVec 64) :=
.seq body4_98 body4_105

def body4_107 : WordLangProgHOL (BitVec 64) :=
.seq body4_97 body4_106

def body4_108 : WordLangProgHOL (BitVec 64) :=
.seq body4_96 body4_107

def body4_109 : WordLangProgHOL (BitVec 64) :=
.seq body4_108 body4_27

def body4_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 601 Flapjack.WordStore.heapLength

def body4_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 605 601 (Flapjack.WordRegImm.imm 1#64)))

def body4_112 : WordLangProgHOL (BitVec 64) :=
.seq body4_110 body4_111

def body4_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 609 605

def body4_114 : WordLangProgHOL (BitVec 64) :=
.seq body4_112 body4_113

def body4_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 613 (Flapjack.WordLangAddr.addr 609 18446744073709551464#64))

def body4_116 : WordLangProgHOL (BitVec 64) :=
.seq body4_114 body4_115

def body4_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 617 613 (Flapjack.WordRegImm.imm 24#64)))

def body4_118 : WordLangProgHOL (BitVec 64) :=
.seq body4_116 body4_117

def body4_119 : WordLangProgHOL (BitVec 64) :=
.seq body4_109 body4_118

def body4_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(621, 553)]

def body4_121 : WordLangProgHOL (BitVec 64) :=
.seq body4_119 body4_120

def body4_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(627, 541), (631, 545), (635, 549), (639, 621), (643, 557), (647, 561), (651, 565), (655, 569), (659, 573),
    (663, 577), (667, 581)]

def body4_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 617), (4, 621)]

def body4_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(673, 627), (677, 631), (681, 635), (685, 639), (689, 643), (693, 647), (697, 651), (701, 655), (705, 659),
    (709, 663), (713, 667)]

def body4_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(721, 2)]

def body4_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 721)]

def body4_127 : WordLangProgHOL (BitVec 64) :=
.seq body4_126 body4_17

def body4_128 : WordLangProgHOL (BitVec 64) :=
.seq body4_125 body4_127

def body4_129 : WordLangProgHOL (BitVec 64) :=
.seq body4_124 body4_128

def body4_130 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body4_124, 336, 10)) (some 89) ([2, 4]) (some (2, body4_129, 336, 11))

def body4_131 : WordLangProgHOL (BitVec 64) :=
.seq body4_123 body4_130

def body4_132 : WordLangProgHOL (BitVec 64) :=
.seq body4_122 body4_131

def body4_133 : WordLangProgHOL (BitVec 64) :=
.seq body4_121 body4_132

def body4_134 : WordLangProgHOL (BitVec 64) :=
.seq body4_133 body4_27

def body4_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 733 0#64)

def body4_136 : WordLangProgHOL (BitVec 64) :=
.seq body4_134 body4_135

def body4_137 : WordLangProgHOL (BitVec 64) :=
.seq body4_136 body4_27

def body4_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(737, 673), (741, 733), (745, 677), (749, 681), (753, 685), (757, 689), (761, 693), (765, 697), (769, 701),
    (773, 705), (777, 709), (781, 713)]

def body4_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(785, 741)]

def body4_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 789 32#64)

def body4_141 : WordLangProgHOL (BitVec 64) :=
.seq body4_139 body4_140

def body4_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(801, 785)]

def body4_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 805 Flapjack.WordStore.heapLength

def body4_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 809 805 (Flapjack.WordRegImm.imm 1#64)))

def body4_145 : WordLangProgHOL (BitVec 64) :=
.seq body4_143 body4_144

def body4_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 813 809

def body4_147 : WordLangProgHOL (BitVec 64) :=
.seq body4_145 body4_146

def body4_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 817 (Flapjack.WordLangAddr.addr 813 18446744073709551464#64))

def body4_149 : WordLangProgHOL (BitVec 64) :=
.seq body4_147 body4_148

def body4_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 821 801 (Flapjack.WordRegImm.reg 817)))

def body4_151 : WordLangProgHOL (BitVec 64) :=
.seq body4_149 body4_150

def body4_152 : WordLangProgHOL (BitVec 64) :=
.seq body4_142 body4_151

def body4_153 : WordLangProgHOL (BitVec 64) :=
.seq body4_27 body4_152

def body4_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 825 (Flapjack.WordLangAddr.addr 821 0#64))

def body4_155 : WordLangProgHOL (BitVec 64) :=
.seq body4_153 body4_154

def body4_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(829, 825)]

def body4_157 : WordLangProgHOL (BitVec 64) :=
.seq body4_155 body4_156

def body4_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 833 0#64)

def body4_159 : WordLangProgHOL (BitVec 64) :=
.seq body4_157 body4_158

def body4_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(741, 801)]

def body4_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body4_162 : WordLangProgHOL (BitVec 64) :=
.seq body4_160 body4_161

def body4_163 : WordLangProgHOL (BitVec 64) :=
.seq body4_27 body4_162

def body4_164 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 829 (Flapjack.WordRegImm.reg 833) body4_163 body4_27

def body4_165 : WordLangProgHOL (BitVec 64) :=
.seq body4_159 body4_164

def body4_166 : WordLangProgHOL (BitVec 64) :=
.seq body4_165 body4_27

def body4_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(861, 801)]

def body4_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 865 861 (Flapjack.WordRegImm.imm 1#64)))

def body4_169 : WordLangProgHOL (BitVec 64) :=
.seq body4_167 body4_168

def body4_170 : WordLangProgHOL (BitVec 64) :=
.seq body4_166 body4_169

def body4_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(869, 865)]

def body4_172 : WordLangProgHOL (BitVec 64) :=
.seq body4_170 body4_171

def body4_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(741, 869)]

def body4_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body4_175 : WordLangProgHOL (BitVec 64) :=
.seq body4_173 body4_174

def body4_176 : WordLangProgHOL (BitVec 64) :=
.seq body4_172 body4_175

def body4_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(893, 869)]

def body4_178 : WordLangProgHOL (BitVec 64) :=
.seq body4_176 body4_177

def body4_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(741, 785)]

def body4_180 : WordLangProgHOL (BitVec 64) :=
.seq body4_179 body4_161

def body4_181 : WordLangProgHOL (BitVec 64) :=
.seq body4_27 body4_180

def body4_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(893, 785)]

def body4_183 : WordLangProgHOL (BitVec 64) :=
.seq body4_181 body4_182

def body4_184 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 785 (Flapjack.WordRegImm.reg 789) body4_178 body4_183

def body4_185 : WordLangProgHOL (BitVec 64) :=
.seq body4_141 body4_184

def body4_186 : WordLangProgHOL (BitVec 64) :=
.seq body4_185 body4_27

def body4_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(741, 893)]

def body4_188 : WordLangProgHOL (BitVec 64) :=
.seq body4_186 body4_187

def body4_189 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)) body4_188 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln))

def body4_190 : WordLangProgHOL (BitVec 64) :=
.seq body4_138 body4_189

def body4_191 : WordLangProgHOL (BitVec 64) :=
.seq body4_137 body4_190

def body4_192 : WordLangProgHOL (BitVec 64) :=
.seq body4_191 body4_27

def body4_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(913, 761)]

def body4_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(917, 745)]

def body4_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 921 913 (Flapjack.WordRegImm.reg 917)))

def body4_196 : WordLangProgHOL (BitVec 64) :=
.seq body4_194 body4_195

def body4_197 : WordLangProgHOL (BitVec 64) :=
.seq body4_193 body4_196

def body4_198 : WordLangProgHOL (BitVec 64) :=
.seq body4_192 body4_197

def body4_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(925, 741)]

def body4_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 929 Flapjack.WordStore.heapLength

def body4_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 933 929 (Flapjack.WordRegImm.imm 1#64)))

def body4_202 : WordLangProgHOL (BitVec 64) :=
.seq body4_200 body4_201

def body4_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 937 933

def body4_204 : WordLangProgHOL (BitVec 64) :=
.seq body4_202 body4_203

def body4_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 941 (Flapjack.WordLangAddr.addr 937 18446744073709551464#64))

def body4_206 : WordLangProgHOL (BitVec 64) :=
.seq body4_204 body4_205

def body4_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 945 925 (Flapjack.WordRegImm.reg 941)))

def body4_208 : WordLangProgHOL (BitVec 64) :=
.seq body4_206 body4_207

def body4_209 : WordLangProgHOL (BitVec 64) :=
.seq body4_199 body4_208

def body4_210 : WordLangProgHOL (BitVec 64) :=
.seq body4_198 body4_209

def body4_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 949 32#64)

def body4_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(953, 925)]

def body4_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 957 949 (Flapjack.WordRegImm.reg 953)))

def body4_214 : WordLangProgHOL (BitVec 64) :=
.seq body4_212 body4_213

def body4_215 : WordLangProgHOL (BitVec 64) :=
.seq body4_211 body4_214

def body4_216 : WordLangProgHOL (BitVec 64) :=
.seq body4_210 body4_215

def body4_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(963, 737), (967, 917), (971, 757), (975, 913), (979, 781)]

def body4_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 921), (4, 945), (6, 957)]

def body4_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(985, 963), (989, 967), (993, 971), (997, 975), (1001, 979)]

def body4_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1005, 2)]

def body4_221 : WordLangProgHOL (BitVec 64) :=
.seq body4_219 body4_220

def body4_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1017, 1005)]

def body4_223 : WordLangProgHOL (BitVec 64) :=
.seq body4_221 body4_222

def body4_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1009, 2)]

def body4_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1009)]

def body4_226 : WordLangProgHOL (BitVec 64) :=
.seq body4_225 body4_17

def body4_227 : WordLangProgHOL (BitVec 64) :=
.seq body4_224 body4_226

def body4_228 : WordLangProgHOL (BitVec 64) :=
.seq body4_219 body4_227

def body4_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1017 0#64)

def body4_230 : WordLangProgHOL (BitVec 64) :=
.seq body4_228 body4_229

def body4_231 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body4_223, 336, 12)) (some 176) ([2, 4, 6]) (some (2, body4_230, 336, 13))

def body4_232 : WordLangProgHOL (BitVec 64) :=
.seq body4_218 body4_231

def body4_233 : WordLangProgHOL (BitVec 64) :=
.seq body4_217 body4_232

def body4_234 : WordLangProgHOL (BitVec 64) :=
.seq body4_216 body4_233

def body4_235 : WordLangProgHOL (BitVec 64) :=
.seq body4_234 body4_27

def body4_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1021, 1017)]

def body4_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1025, 997)]

def body4_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1029 1021 (Flapjack.WordRegImm.reg 1025)))

def body4_239 : WordLangProgHOL (BitVec 64) :=
.seq body4_237 body4_238

def body4_240 : WordLangProgHOL (BitVec 64) :=
.seq body4_236 body4_239

def body4_241 : WordLangProgHOL (BitVec 64) :=
.seq body4_235 body4_240

def body4_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1033, 1029)]

def body4_243 : WordLangProgHOL (BitVec 64) :=
.seq body4_241 body4_242

def body4_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1037, 1033)]

def body4_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1041, 989)]

def body4_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1045 1037 (Flapjack.WordRegImm.reg 1041)))

def body4_247 : WordLangProgHOL (BitVec 64) :=
.seq body4_245 body4_246

def body4_248 : WordLangProgHOL (BitVec 64) :=
.seq body4_244 body4_247

def body4_249 : WordLangProgHOL (BitVec 64) :=
.seq body4_243 body4_248

def body4_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1049, 993)]

def body4_251 : WordLangProgHOL (BitVec 64) :=
.seq body4_249 body4_250

def body4_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1057 32#64)

def body4_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1063, 985), (1067, 1041), (1071, 1037), (1075, 1001)]

def body4_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1045), (4, 1049), (6, 1057)]

def body4_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1081, 1063), (1085, 1067), (1089, 1071), (1093, 1075)]

def body4_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1097, 2)]

def body4_257 : WordLangProgHOL (BitVec 64) :=
.seq body4_255 body4_256

def body4_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1105, 1097)]

def body4_259 : WordLangProgHOL (BitVec 64) :=
.seq body4_257 body4_258

def body4_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1101, 2)]

def body4_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1101)]

def body4_262 : WordLangProgHOL (BitVec 64) :=
.seq body4_261 body4_17

def body4_263 : WordLangProgHOL (BitVec 64) :=
.seq body4_260 body4_262

def body4_264 : WordLangProgHOL (BitVec 64) :=
.seq body4_255 body4_263

def body4_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1105 0#64)

def body4_266 : WordLangProgHOL (BitVec 64) :=
.seq body4_264 body4_265

def body4_267 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body4_259, 336, 14)) (some 176) ([2, 4, 6]) (some (2, body4_266, 336, 15))

def body4_268 : WordLangProgHOL (BitVec 64) :=
.seq body4_254 body4_267

def body4_269 : WordLangProgHOL (BitVec 64) :=
.seq body4_253 body4_268

def body4_270 : WordLangProgHOL (BitVec 64) :=
.seq body4_252 body4_269

def body4_271 : WordLangProgHOL (BitVec 64) :=
.seq body4_251 body4_270

def body4_272 : WordLangProgHOL (BitVec 64) :=
.seq body4_271 body4_27

def body4_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1113, 1105)]

def body4_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1117, 1089)]

def body4_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1121 1113 (Flapjack.WordRegImm.reg 1117)))

def body4_276 : WordLangProgHOL (BitVec 64) :=
.seq body4_274 body4_275

def body4_277 : WordLangProgHOL (BitVec 64) :=
.seq body4_273 body4_276

def body4_278 : WordLangProgHOL (BitVec 64) :=
.seq body4_272 body4_277

def body4_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1125, 1121)]

def body4_280 : WordLangProgHOL (BitVec 64) :=
.seq body4_278 body4_279

def body4_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1129, 1125)]

def body4_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1133, 1085)]

def body4_283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1137 1129 (Flapjack.WordRegImm.reg 1133)))

def body4_284 : WordLangProgHOL (BitVec 64) :=
.seq body4_282 body4_283

def body4_285 : WordLangProgHOL (BitVec 64) :=
.seq body4_281 body4_284

def body4_286 : WordLangProgHOL (BitVec 64) :=
.seq body4_280 body4_285

def body4_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1141, 1093)]

def body4_288 : WordLangProgHOL (BitVec 64) :=
.seq body4_286 body4_287

def body4_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1149 32#64)

def body4_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1155, 1081), (1159, 1133), (1163, 1129)]

def body4_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1137), (4, 1141), (6, 1149)]

def body4_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1169, 1155), (1173, 1159), (1177, 1163)]

def body4_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1181, 2)]

def body4_294 : WordLangProgHOL (BitVec 64) :=
.seq body4_292 body4_293

def body4_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1193, 1181)]

def body4_296 : WordLangProgHOL (BitVec 64) :=
.seq body4_294 body4_295

def body4_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1185, 2)]

def body4_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1185)]

def body4_299 : WordLangProgHOL (BitVec 64) :=
.seq body4_298 body4_17

def body4_300 : WordLangProgHOL (BitVec 64) :=
.seq body4_297 body4_299

def body4_301 : WordLangProgHOL (BitVec 64) :=
.seq body4_292 body4_300

def body4_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1193 0#64)

def body4_303 : WordLangProgHOL (BitVec 64) :=
.seq body4_301 body4_302

def body4_304 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body4_296, 336, 16)) (some 176) ([2, 4, 6]) (some (2, body4_303, 336, 17))

def body4_305 : WordLangProgHOL (BitVec 64) :=
.seq body4_291 body4_304

def body4_306 : WordLangProgHOL (BitVec 64) :=
.seq body4_290 body4_305

def body4_307 : WordLangProgHOL (BitVec 64) :=
.seq body4_289 body4_306

def body4_308 : WordLangProgHOL (BitVec 64) :=
.seq body4_288 body4_307

def body4_309 : WordLangProgHOL (BitVec 64) :=
.seq body4_308 body4_27

def body4_310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1197, 1193)]

def body4_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1201, 1177)]

def body4_312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1205 1197 (Flapjack.WordRegImm.reg 1201)))

def body4_313 : WordLangProgHOL (BitVec 64) :=
.seq body4_311 body4_312

def body4_314 : WordLangProgHOL (BitVec 64) :=
.seq body4_310 body4_313

def body4_315 : WordLangProgHOL (BitVec 64) :=
.seq body4_309 body4_314

def body4_316 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1209, 1205)]

def body4_317 : WordLangProgHOL (BitVec 64) :=
.seq body4_315 body4_316

def body4_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1213, 1173)]

def body4_319 : WordLangProgHOL (BitVec 64) :=
.seq body4_317 body4_318

def body4_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1217 248#64)

def body4_321 : WordLangProgHOL (BitVec 64) :=
.seq body4_319 body4_320

def body4_322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 1217 (Flapjack.WordLangAddr.addr 1213 0#64))

def body4_323 : WordLangProgHOL (BitVec 64) :=
.seq body4_321 body4_322

def body4_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1221, 1213)]

def body4_325 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1225 1221 (Flapjack.WordRegImm.imm 1#64)))

def body4_326 : WordLangProgHOL (BitVec 64) :=
.seq body4_324 body4_325

def body4_327 : WordLangProgHOL (BitVec 64) :=
.seq body4_323 body4_326

def body4_328 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1229, 1209)]

def body4_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1233 1229 (Flapjack.WordRegImm.imm 18446744073709551614#64)))

def body4_330 : WordLangProgHOL (BitVec 64) :=
.seq body4_328 body4_329

def body4_331 : WordLangProgHOL (BitVec 64) :=
.seq body4_327 body4_330

def body4_332 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 1233 (Flapjack.WordLangAddr.addr 1225 0#64))

def body4_333 : WordLangProgHOL (BitVec 64) :=
.seq body4_331 body4_332

def body4_334 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1237, 1229)]

def body4_335 : WordLangProgHOL (BitVec 64) :=
.seq body4_333 body4_334

def body4_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 1237)]

def body4_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 1169 [2]

def body4_338 : WordLangProgHOL (BitVec 64) :=
.seq body4_336 body4_337

def body4_339 : WordLangProgHOL (BitVec 64) :=
.seq body4_335 body4_338

def body4_340 : WordLangProgHOL (BitVec 64) :=
.seq body4_0 body4_339

def pass4 : WordLangProgHOL (BitVec 64) := body4_340
def body5_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(41, 0), (45, 2), (49, 4), (53, 6), (57, 8), (61, 10), (65, 12), (69, 14), (73, 16)]

def body5_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 2#64)

def body5_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 73)]

def body5_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 85 81 (Flapjack.WordRegImm.imm 2#64)))

def body5_4 : WordLangProgHOL (BitVec 64) :=
.seq body5_2 body5_3

def body5_5 : WordLangProgHOL (BitVec 64) :=
.seq body5_1 body5_4

def body5_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 45)]

def body5_7 : WordLangProgHOL (BitVec 64) :=
.seq body5_5 body5_6

def body5_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(95, 41), (99, 81), (103, 57), (107, 49), (111, 65), (115, 77), (119, 89), (123, 61), (127, 53), (131, 69)]

def body5_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85), (4, 89)]

def body5_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(137, 95), (141, 99), (145, 103), (149, 107), (153, 111), (157, 115), (161, 119), (165, 123), (169, 127), (173, 131)]

def body5_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(177, 2)]

def body5_12 : WordLangProgHOL (BitVec 64) :=
.seq body5_10 body5_11

def body5_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(185, 177)]

def body5_14 : WordLangProgHOL (BitVec 64) :=
.seq body5_12 body5_13

def body5_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(181, 2)]

def body5_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 181)]

def body5_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body5_18 : WordLangProgHOL (BitVec 64) :=
.seq body5_16 body5_17

def body5_19 : WordLangProgHOL (BitVec 64) :=
.seq body5_15 body5_18

def body5_20 : WordLangProgHOL (BitVec 64) :=
.seq body5_10 body5_19

def body5_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 185 0#64)

def body5_22 : WordLangProgHOL (BitVec 64) :=
.seq body5_20 body5_21

def body5_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))),
  Flapjack.Spt.ln)), body5_14, 336, 2)) (some 177) ([2, 4]) (some (2, body5_22, 336, 3))

def body5_24 : WordLangProgHOL (BitVec 64) :=
.seq body5_9 body5_23

def body5_25 : WordLangProgHOL (BitVec 64) :=
.seq body5_8 body5_24

def body5_26 : WordLangProgHOL (BitVec 64) :=
.seq body5_7 body5_25

def body5_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body5_28 : WordLangProgHOL (BitVec 64) :=
.seq body5_26 body5_27

def body5_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(193, 185)]

def body5_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(197, 157)]

def body5_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 201 193 (Flapjack.WordRegImm.reg 197)))

def body5_32 : WordLangProgHOL (BitVec 64) :=
.seq body5_30 body5_31

def body5_33 : WordLangProgHOL (BitVec 64) :=
.seq body5_29 body5_32

def body5_34 : WordLangProgHOL (BitVec 64) :=
.seq body5_28 body5_33

def body5_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 201)]

def body5_36 : WordLangProgHOL (BitVec 64) :=
.seq body5_34 body5_35

def body5_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 209 Flapjack.WordStore.heapLength

def body5_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 213 209 (Flapjack.WordRegImm.imm 1#64)))

def body5_39 : WordLangProgHOL (BitVec 64) :=
.seq body5_37 body5_38

def body5_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 217 213

def body5_41 : WordLangProgHOL (BitVec 64) :=
.seq body5_39 body5_40

def body5_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 221 (Flapjack.WordLangAddr.addr 217 18446744073709551464#64))

def body5_43 : WordLangProgHOL (BitVec 64) :=
.seq body5_41 body5_42

def body5_44 : WordLangProgHOL (BitVec 64) :=
.seq body5_36 body5_43

def body5_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(225, 165)]

def body5_46 : WordLangProgHOL (BitVec 64) :=
.seq body5_44 body5_45

def body5_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(231, 137), (235, 141), (239, 145), (243, 149), (247, 153), (251, 205), (255, 161), (259, 225), (263, 169),
    (267, 193), (271, 173)]

def body5_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 221), (4, 225)]

def body5_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(277, 231), (281, 235), (285, 239), (289, 243), (293, 247), (297, 251), (301, 255), (305, 259), (309, 263),
    (313, 267), (317, 271)]

def body5_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(325, 2)]

def body5_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 325)]

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
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))))),
  Flapjack.Spt.ln)), body5_49, 336, 4)) (some 89) ([2, 4]) (some (2, body5_54, 336, 5))

def body5_56 : WordLangProgHOL (BitVec 64) :=
.seq body5_48 body5_55

def body5_57 : WordLangProgHOL (BitVec 64) :=
.seq body5_47 body5_56

def body5_58 : WordLangProgHOL (BitVec 64) :=
.seq body5_46 body5_57

def body5_59 : WordLangProgHOL (BitVec 64) :=
.seq body5_58 body5_27

def body5_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 337 Flapjack.WordStore.heapLength

def body5_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 341 337 (Flapjack.WordRegImm.imm 1#64)))

def body5_62 : WordLangProgHOL (BitVec 64) :=
.seq body5_60 body5_61

def body5_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 345 341

def body5_64 : WordLangProgHOL (BitVec 64) :=
.seq body5_62 body5_63

def body5_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 349 (Flapjack.WordLangAddr.addr 345 18446744073709551464#64))

def body5_66 : WordLangProgHOL (BitVec 64) :=
.seq body5_64 body5_65

def body5_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 353 349 (Flapjack.WordRegImm.imm 8#64)))

def body5_68 : WordLangProgHOL (BitVec 64) :=
.seq body5_66 body5_67

def body5_69 : WordLangProgHOL (BitVec 64) :=
.seq body5_59 body5_68

def body5_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(357, 285)]

def body5_71 : WordLangProgHOL (BitVec 64) :=
.seq body5_69 body5_70

def body5_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(363, 277), (367, 281), (371, 357), (375, 289), (379, 293), (383, 297), (387, 301), (391, 305), (395, 309),
    (399, 313), (403, 317)]

def body5_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 353), (4, 357)]

def body5_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(409, 363), (413, 367), (417, 371), (421, 375), (425, 379), (429, 383), (433, 387), (437, 391), (441, 395),
    (445, 399), (449, 403)]

def body5_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(457, 2)]

def body5_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 457)]

def body5_77 : WordLangProgHOL (BitVec 64) :=
.seq body5_76 body5_17

def body5_78 : WordLangProgHOL (BitVec 64) :=
.seq body5_75 body5_77

def body5_79 : WordLangProgHOL (BitVec 64) :=
.seq body5_74 body5_78

def body5_80 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body5_74, 336, 6)) (some 89) ([2, 4]) (some (2, body5_79, 336, 7))

def body5_81 : WordLangProgHOL (BitVec 64) :=
.seq body5_73 body5_80

def body5_82 : WordLangProgHOL (BitVec 64) :=
.seq body5_72 body5_81

def body5_83 : WordLangProgHOL (BitVec 64) :=
.seq body5_71 body5_82

def body5_84 : WordLangProgHOL (BitVec 64) :=
.seq body5_83 body5_27

def body5_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 469 Flapjack.WordStore.heapLength

def body5_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 473 469 (Flapjack.WordRegImm.imm 1#64)))

def body5_87 : WordLangProgHOL (BitVec 64) :=
.seq body5_85 body5_86

def body5_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 477 473

def body5_89 : WordLangProgHOL (BitVec 64) :=
.seq body5_87 body5_88

def body5_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 481 (Flapjack.WordLangAddr.addr 477 18446744073709551464#64))

def body5_91 : WordLangProgHOL (BitVec 64) :=
.seq body5_89 body5_90

def body5_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 485 481 (Flapjack.WordRegImm.imm 16#64)))

def body5_93 : WordLangProgHOL (BitVec 64) :=
.seq body5_91 body5_92

def body5_94 : WordLangProgHOL (BitVec 64) :=
.seq body5_84 body5_93

def body5_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(489, 441)]

def body5_96 : WordLangProgHOL (BitVec 64) :=
.seq body5_94 body5_95

def body5_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(495, 409), (499, 413), (503, 417), (507, 421), (511, 425), (515, 429), (519, 433), (523, 437), (527, 489),
    (531, 445), (535, 449)]

def body5_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 485), (4, 489)]

def body5_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(541, 495), (545, 499), (549, 503), (553, 507), (557, 511), (561, 515), (565, 519), (569, 523), (573, 527),
    (577, 531), (581, 535)]

def body5_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(589, 2)]

def body5_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 589)]

def body5_102 : WordLangProgHOL (BitVec 64) :=
.seq body5_101 body5_17

def body5_103 : WordLangProgHOL (BitVec 64) :=
.seq body5_100 body5_102

def body5_104 : WordLangProgHOL (BitVec 64) :=
.seq body5_99 body5_103

def body5_105 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))))),
  Flapjack.Spt.ln)), body5_99, 336, 8)) (some 89) ([2, 4]) (some (2, body5_104, 336, 9))

def body5_106 : WordLangProgHOL (BitVec 64) :=
.seq body5_98 body5_105

def body5_107 : WordLangProgHOL (BitVec 64) :=
.seq body5_97 body5_106

def body5_108 : WordLangProgHOL (BitVec 64) :=
.seq body5_96 body5_107

def body5_109 : WordLangProgHOL (BitVec 64) :=
.seq body5_108 body5_27

def body5_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 601 Flapjack.WordStore.heapLength

def body5_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 605 601 (Flapjack.WordRegImm.imm 1#64)))

def body5_112 : WordLangProgHOL (BitVec 64) :=
.seq body5_110 body5_111

def body5_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 609 605

def body5_114 : WordLangProgHOL (BitVec 64) :=
.seq body5_112 body5_113

def body5_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 613 (Flapjack.WordLangAddr.addr 609 18446744073709551464#64))

def body5_116 : WordLangProgHOL (BitVec 64) :=
.seq body5_114 body5_115

def body5_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 617 613 (Flapjack.WordRegImm.imm 24#64)))

def body5_118 : WordLangProgHOL (BitVec 64) :=
.seq body5_116 body5_117

def body5_119 : WordLangProgHOL (BitVec 64) :=
.seq body5_109 body5_118

def body5_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(621, 553)]

def body5_121 : WordLangProgHOL (BitVec 64) :=
.seq body5_119 body5_120

def body5_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(627, 541), (631, 545), (635, 549), (639, 621), (643, 557), (647, 561), (651, 565), (655, 569), (659, 573),
    (663, 577), (667, 581)]

def body5_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 617), (4, 621)]

def body5_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(673, 627), (677, 631), (681, 635), (685, 639), (689, 643), (693, 647), (697, 651), (701, 655), (705, 659),
    (709, 663), (713, 667)]

def body5_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(721, 2)]

def body5_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 721)]

def body5_127 : WordLangProgHOL (BitVec 64) :=
.seq body5_126 body5_17

def body5_128 : WordLangProgHOL (BitVec 64) :=
.seq body5_125 body5_127

def body5_129 : WordLangProgHOL (BitVec 64) :=
.seq body5_124 body5_128

def body5_130 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body5_124, 336, 10)) (some 89) ([2, 4]) (some (2, body5_129, 336, 11))

def body5_131 : WordLangProgHOL (BitVec 64) :=
.seq body5_123 body5_130

def body5_132 : WordLangProgHOL (BitVec 64) :=
.seq body5_122 body5_131

def body5_133 : WordLangProgHOL (BitVec 64) :=
.seq body5_121 body5_132

def body5_134 : WordLangProgHOL (BitVec 64) :=
.seq body5_133 body5_27

def body5_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 733 0#64)

def body5_136 : WordLangProgHOL (BitVec 64) :=
.seq body5_134 body5_135

def body5_137 : WordLangProgHOL (BitVec 64) :=
.seq body5_136 body5_27

def body5_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(737, 673), (741, 733), (745, 677), (749, 681), (753, 685), (757, 689), (761, 693), (765, 697), (769, 701),
    (773, 705), (777, 709), (781, 713)]

def body5_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(785, 741)]

def body5_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 789 32#64)

def body5_141 : WordLangProgHOL (BitVec 64) :=
.seq body5_139 body5_140

def body5_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(801, 785)]

def body5_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 805 Flapjack.WordStore.heapLength

def body5_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 809 805 (Flapjack.WordRegImm.imm 1#64)))

def body5_145 : WordLangProgHOL (BitVec 64) :=
.seq body5_143 body5_144

def body5_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 813 809

def body5_147 : WordLangProgHOL (BitVec 64) :=
.seq body5_145 body5_146

def body5_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 817 (Flapjack.WordLangAddr.addr 813 18446744073709551464#64))

def body5_149 : WordLangProgHOL (BitVec 64) :=
.seq body5_147 body5_148

def body5_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 821 801 (Flapjack.WordRegImm.reg 817)))

def body5_151 : WordLangProgHOL (BitVec 64) :=
.seq body5_149 body5_150

def body5_152 : WordLangProgHOL (BitVec 64) :=
.seq body5_142 body5_151

def body5_153 : WordLangProgHOL (BitVec 64) :=
.seq body5_27 body5_152

def body5_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 825 (Flapjack.WordLangAddr.addr 821 0#64))

def body5_155 : WordLangProgHOL (BitVec 64) :=
.seq body5_153 body5_154

def body5_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(829, 825)]

def body5_157 : WordLangProgHOL (BitVec 64) :=
.seq body5_155 body5_156

def body5_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 833 0#64)

def body5_159 : WordLangProgHOL (BitVec 64) :=
.seq body5_157 body5_158

def body5_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(741, 801)]

def body5_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body5_162 : WordLangProgHOL (BitVec 64) :=
.seq body5_160 body5_161

def body5_163 : WordLangProgHOL (BitVec 64) :=
.seq body5_27 body5_162

def body5_164 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 829 (Flapjack.WordRegImm.reg 833) body5_163 body5_27

def body5_165 : WordLangProgHOL (BitVec 64) :=
.seq body5_159 body5_164

def body5_166 : WordLangProgHOL (BitVec 64) :=
.seq body5_165 body5_27

def body5_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(861, 801)]

def body5_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 865 861 (Flapjack.WordRegImm.imm 1#64)))

def body5_169 : WordLangProgHOL (BitVec 64) :=
.seq body5_167 body5_168

def body5_170 : WordLangProgHOL (BitVec 64) :=
.seq body5_166 body5_169

def body5_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(869, 865)]

def body5_172 : WordLangProgHOL (BitVec 64) :=
.seq body5_170 body5_171

def body5_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(741, 869)]

def body5_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body5_175 : WordLangProgHOL (BitVec 64) :=
.seq body5_173 body5_174

def body5_176 : WordLangProgHOL (BitVec 64) :=
.seq body5_172 body5_175

def body5_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(893, 741)]

def body5_178 : WordLangProgHOL (BitVec 64) :=
.seq body5_176 body5_177

def body5_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(741, 785)]

def body5_180 : WordLangProgHOL (BitVec 64) :=
.seq body5_179 body5_161

def body5_181 : WordLangProgHOL (BitVec 64) :=
.seq body5_27 body5_180

def body5_182 : WordLangProgHOL (BitVec 64) :=
.seq body5_181 body5_177

def body5_183 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 785 (Flapjack.WordRegImm.reg 789) body5_178 body5_182

def body5_184 : WordLangProgHOL (BitVec 64) :=
.seq body5_141 body5_183

def body5_185 : WordLangProgHOL (BitVec 64) :=
.seq body5_184 body5_27

def body5_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(741, 893)]

def body5_187 : WordLangProgHOL (BitVec 64) :=
.seq body5_185 body5_186

def body5_188 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)) body5_187 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln))

def body5_189 : WordLangProgHOL (BitVec 64) :=
.seq body5_138 body5_188

def body5_190 : WordLangProgHOL (BitVec 64) :=
.seq body5_137 body5_189

def body5_191 : WordLangProgHOL (BitVec 64) :=
.seq body5_190 body5_27

def body5_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(913, 761)]

def body5_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(917, 745)]

def body5_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 921 913 (Flapjack.WordRegImm.reg 917)))

def body5_195 : WordLangProgHOL (BitVec 64) :=
.seq body5_193 body5_194

def body5_196 : WordLangProgHOL (BitVec 64) :=
.seq body5_192 body5_195

def body5_197 : WordLangProgHOL (BitVec 64) :=
.seq body5_191 body5_196

def body5_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(925, 741)]

def body5_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 929 Flapjack.WordStore.heapLength

def body5_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 933 929 (Flapjack.WordRegImm.imm 1#64)))

def body5_201 : WordLangProgHOL (BitVec 64) :=
.seq body5_199 body5_200

def body5_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 937 933

def body5_203 : WordLangProgHOL (BitVec 64) :=
.seq body5_201 body5_202

def body5_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 941 (Flapjack.WordLangAddr.addr 937 18446744073709551464#64))

def body5_205 : WordLangProgHOL (BitVec 64) :=
.seq body5_203 body5_204

def body5_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 945 925 (Flapjack.WordRegImm.reg 941)))

def body5_207 : WordLangProgHOL (BitVec 64) :=
.seq body5_205 body5_206

def body5_208 : WordLangProgHOL (BitVec 64) :=
.seq body5_198 body5_207

def body5_209 : WordLangProgHOL (BitVec 64) :=
.seq body5_197 body5_208

def body5_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 949 32#64)

def body5_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(953, 925)]

def body5_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 957 949 (Flapjack.WordRegImm.reg 953)))

def body5_213 : WordLangProgHOL (BitVec 64) :=
.seq body5_211 body5_212

def body5_214 : WordLangProgHOL (BitVec 64) :=
.seq body5_210 body5_213

def body5_215 : WordLangProgHOL (BitVec 64) :=
.seq body5_209 body5_214

def body5_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(963, 737), (967, 917), (971, 757), (975, 913), (979, 781)]

def body5_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 921), (4, 945), (6, 957)]

def body5_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(985, 963), (989, 967), (993, 971), (997, 975), (1001, 979)]

def body5_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1005, 2)]

def body5_220 : WordLangProgHOL (BitVec 64) :=
.seq body5_218 body5_219

def body5_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1017, 1005)]

def body5_222 : WordLangProgHOL (BitVec 64) :=
.seq body5_220 body5_221

def body5_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1009, 2)]

def body5_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1009)]

def body5_225 : WordLangProgHOL (BitVec 64) :=
.seq body5_224 body5_17

def body5_226 : WordLangProgHOL (BitVec 64) :=
.seq body5_223 body5_225

def body5_227 : WordLangProgHOL (BitVec 64) :=
.seq body5_218 body5_226

def body5_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1017 0#64)

def body5_229 : WordLangProgHOL (BitVec 64) :=
.seq body5_227 body5_228

def body5_230 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body5_222, 336, 12)) (some 176) ([2, 4, 6]) (some (2, body5_229, 336, 13))

def body5_231 : WordLangProgHOL (BitVec 64) :=
.seq body5_217 body5_230

def body5_232 : WordLangProgHOL (BitVec 64) :=
.seq body5_216 body5_231

def body5_233 : WordLangProgHOL (BitVec 64) :=
.seq body5_215 body5_232

def body5_234 : WordLangProgHOL (BitVec 64) :=
.seq body5_233 body5_27

def body5_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1021, 1017)]

def body5_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1025, 997)]

def body5_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1029 1021 (Flapjack.WordRegImm.reg 1025)))

def body5_238 : WordLangProgHOL (BitVec 64) :=
.seq body5_236 body5_237

def body5_239 : WordLangProgHOL (BitVec 64) :=
.seq body5_235 body5_238

def body5_240 : WordLangProgHOL (BitVec 64) :=
.seq body5_234 body5_239

def body5_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1033, 1029)]

def body5_242 : WordLangProgHOL (BitVec 64) :=
.seq body5_240 body5_241

def body5_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1037, 1033)]

def body5_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1041, 989)]

def body5_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1045 1037 (Flapjack.WordRegImm.reg 1041)))

def body5_246 : WordLangProgHOL (BitVec 64) :=
.seq body5_244 body5_245

def body5_247 : WordLangProgHOL (BitVec 64) :=
.seq body5_243 body5_246

def body5_248 : WordLangProgHOL (BitVec 64) :=
.seq body5_242 body5_247

def body5_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1049, 993)]

def body5_250 : WordLangProgHOL (BitVec 64) :=
.seq body5_248 body5_249

def body5_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1057 32#64)

def body5_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1063, 985), (1067, 1041), (1071, 1037), (1075, 1001)]

def body5_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1045), (4, 1049), (6, 1057)]

def body5_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1081, 1063), (1085, 1067), (1089, 1071), (1093, 1075)]

def body5_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1097, 2)]

def body5_256 : WordLangProgHOL (BitVec 64) :=
.seq body5_254 body5_255

def body5_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1105, 1097)]

def body5_258 : WordLangProgHOL (BitVec 64) :=
.seq body5_256 body5_257

def body5_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1101, 2)]

def body5_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1101)]

def body5_261 : WordLangProgHOL (BitVec 64) :=
.seq body5_260 body5_17

def body5_262 : WordLangProgHOL (BitVec 64) :=
.seq body5_259 body5_261

def body5_263 : WordLangProgHOL (BitVec 64) :=
.seq body5_254 body5_262

def body5_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1105 0#64)

def body5_265 : WordLangProgHOL (BitVec 64) :=
.seq body5_263 body5_264

def body5_266 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body5_258, 336, 14)) (some 176) ([2, 4, 6]) (some (2, body5_265, 336, 15))

def body5_267 : WordLangProgHOL (BitVec 64) :=
.seq body5_253 body5_266

def body5_268 : WordLangProgHOL (BitVec 64) :=
.seq body5_252 body5_267

def body5_269 : WordLangProgHOL (BitVec 64) :=
.seq body5_251 body5_268

def body5_270 : WordLangProgHOL (BitVec 64) :=
.seq body5_250 body5_269

def body5_271 : WordLangProgHOL (BitVec 64) :=
.seq body5_270 body5_27

def body5_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1113, 1105)]

def body5_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1117, 1089)]

def body5_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1121 1113 (Flapjack.WordRegImm.reg 1117)))

def body5_275 : WordLangProgHOL (BitVec 64) :=
.seq body5_273 body5_274

def body5_276 : WordLangProgHOL (BitVec 64) :=
.seq body5_272 body5_275

def body5_277 : WordLangProgHOL (BitVec 64) :=
.seq body5_271 body5_276

def body5_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1125, 1121)]

def body5_279 : WordLangProgHOL (BitVec 64) :=
.seq body5_277 body5_278

def body5_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1129, 1125)]

def body5_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1133, 1085)]

def body5_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1137 1129 (Flapjack.WordRegImm.reg 1133)))

def body5_283 : WordLangProgHOL (BitVec 64) :=
.seq body5_281 body5_282

def body5_284 : WordLangProgHOL (BitVec 64) :=
.seq body5_280 body5_283

def body5_285 : WordLangProgHOL (BitVec 64) :=
.seq body5_279 body5_284

def body5_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1141, 1093)]

def body5_287 : WordLangProgHOL (BitVec 64) :=
.seq body5_285 body5_286

def body5_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1149 32#64)

def body5_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1155, 1081), (1159, 1133), (1163, 1129)]

def body5_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1137), (4, 1141), (6, 1149)]

def body5_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1169, 1155), (1173, 1159), (1177, 1163)]

def body5_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1181, 2)]

def body5_293 : WordLangProgHOL (BitVec 64) :=
.seq body5_291 body5_292

def body5_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1193, 1181)]

def body5_295 : WordLangProgHOL (BitVec 64) :=
.seq body5_293 body5_294

def body5_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1185, 2)]

def body5_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1185)]

def body5_298 : WordLangProgHOL (BitVec 64) :=
.seq body5_297 body5_17

def body5_299 : WordLangProgHOL (BitVec 64) :=
.seq body5_296 body5_298

def body5_300 : WordLangProgHOL (BitVec 64) :=
.seq body5_291 body5_299

def body5_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1193 0#64)

def body5_302 : WordLangProgHOL (BitVec 64) :=
.seq body5_300 body5_301

def body5_303 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body5_295, 336, 16)) (some 176) ([2, 4, 6]) (some (2, body5_302, 336, 17))

def body5_304 : WordLangProgHOL (BitVec 64) :=
.seq body5_290 body5_303

def body5_305 : WordLangProgHOL (BitVec 64) :=
.seq body5_289 body5_304

def body5_306 : WordLangProgHOL (BitVec 64) :=
.seq body5_288 body5_305

def body5_307 : WordLangProgHOL (BitVec 64) :=
.seq body5_287 body5_306

def body5_308 : WordLangProgHOL (BitVec 64) :=
.seq body5_307 body5_27

def body5_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1197, 1193)]

def body5_310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1201, 1177)]

def body5_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1205 1197 (Flapjack.WordRegImm.reg 1201)))

def body5_312 : WordLangProgHOL (BitVec 64) :=
.seq body5_310 body5_311

def body5_313 : WordLangProgHOL (BitVec 64) :=
.seq body5_309 body5_312

def body5_314 : WordLangProgHOL (BitVec 64) :=
.seq body5_308 body5_313

def body5_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1209, 1205)]

def body5_316 : WordLangProgHOL (BitVec 64) :=
.seq body5_314 body5_315

def body5_317 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1213, 1173)]

def body5_318 : WordLangProgHOL (BitVec 64) :=
.seq body5_316 body5_317

def body5_319 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1217 248#64)

def body5_320 : WordLangProgHOL (BitVec 64) :=
.seq body5_318 body5_319

def body5_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 1217 (Flapjack.WordLangAddr.addr 1213 0#64))

def body5_322 : WordLangProgHOL (BitVec 64) :=
.seq body5_320 body5_321

def body5_323 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1221, 1213)]

def body5_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1225 1221 (Flapjack.WordRegImm.imm 1#64)))

def body5_325 : WordLangProgHOL (BitVec 64) :=
.seq body5_323 body5_324

def body5_326 : WordLangProgHOL (BitVec 64) :=
.seq body5_322 body5_325

def body5_327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1229, 1209)]

def body5_328 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1233 1229 (Flapjack.WordRegImm.imm 18446744073709551614#64)))

def body5_329 : WordLangProgHOL (BitVec 64) :=
.seq body5_327 body5_328

def body5_330 : WordLangProgHOL (BitVec 64) :=
.seq body5_326 body5_329

def body5_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 1233 (Flapjack.WordLangAddr.addr 1225 0#64))

def body5_332 : WordLangProgHOL (BitVec 64) :=
.seq body5_330 body5_331

def body5_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1237, 1229)]

def body5_334 : WordLangProgHOL (BitVec 64) :=
.seq body5_332 body5_333

def body5_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 1237)]

def body5_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 1169 [2]

def body5_337 : WordLangProgHOL (BitVec 64) :=
.seq body5_335 body5_336

def body5_338 : WordLangProgHOL (BitVec 64) :=
.seq body5_334 body5_337

def body5_339 : WordLangProgHOL (BitVec 64) :=
.seq body5_0 body5_338

def pass5 : WordLangProgHOL (BitVec 64) := body5_339
def body6_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(41, 0), (45, 2), (49, 4), (53, 6), (57, 8), (61, 10), (65, 12), (69, 14), (73, 16)]

def body6_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 2#64)

def body6_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 73)]

def body6_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 85 81 (Flapjack.WordRegImm.imm 2#64)))

def body6_4 : WordLangProgHOL (BitVec 64) :=
.seq body6_2 body6_3

def body6_5 : WordLangProgHOL (BitVec 64) :=
.seq body6_1 body6_4

def body6_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(89, 45)]

def body6_7 : WordLangProgHOL (BitVec 64) :=
.seq body6_5 body6_6

def body6_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(95, 41), (99, 81), (103, 57), (107, 49), (111, 65), (115, 77), (119, 89), (123, 61), (127, 53), (131, 69)]

def body6_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 85), (4, 89)]

def body6_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(137, 95), (141, 99), (145, 103), (149, 107), (153, 111), (157, 115), (161, 119), (165, 123), (169, 127), (173, 131)]

def body6_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(177, 2)]

def body6_12 : WordLangProgHOL (BitVec 64) :=
.seq body6_10 body6_11

def body6_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(185, 177)]

def body6_14 : WordLangProgHOL (BitVec 64) :=
.seq body6_12 body6_13

def body6_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(181, 2)]

def body6_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 181)]

def body6_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body6_18 : WordLangProgHOL (BitVec 64) :=
.seq body6_16 body6_17

def body6_19 : WordLangProgHOL (BitVec 64) :=
.seq body6_15 body6_18

def body6_20 : WordLangProgHOL (BitVec 64) :=
.seq body6_10 body6_19

def body6_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 185 0#64)

def body6_22 : WordLangProgHOL (BitVec 64) :=
.seq body6_20 body6_21

def body6_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))),
  Flapjack.Spt.ln)), body6_14, 336, 2)) (some 177) ([2, 4]) (some (2, body6_22, 336, 3))

def body6_24 : WordLangProgHOL (BitVec 64) :=
.seq body6_9 body6_23

def body6_25 : WordLangProgHOL (BitVec 64) :=
.seq body6_8 body6_24

def body6_26 : WordLangProgHOL (BitVec 64) :=
.seq body6_7 body6_25

def body6_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body6_28 : WordLangProgHOL (BitVec 64) :=
.seq body6_26 body6_27

def body6_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(193, 185)]

def body6_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(197, 157)]

def body6_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 201 193 (Flapjack.WordRegImm.reg 197)))

def body6_32 : WordLangProgHOL (BitVec 64) :=
.seq body6_30 body6_31

def body6_33 : WordLangProgHOL (BitVec 64) :=
.seq body6_29 body6_32

def body6_34 : WordLangProgHOL (BitVec 64) :=
.seq body6_28 body6_33

def body6_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 201)]

def body6_36 : WordLangProgHOL (BitVec 64) :=
.seq body6_34 body6_35

def body6_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 209 Flapjack.WordStore.heapLength

def body6_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 213 209 (Flapjack.WordRegImm.imm 1#64)))

def body6_39 : WordLangProgHOL (BitVec 64) :=
.seq body6_37 body6_38

def body6_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 217 213

def body6_41 : WordLangProgHOL (BitVec 64) :=
.seq body6_39 body6_40

def body6_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 221 (Flapjack.WordLangAddr.addr 217 18446744073709551464#64))

def body6_43 : WordLangProgHOL (BitVec 64) :=
.seq body6_41 body6_42

def body6_44 : WordLangProgHOL (BitVec 64) :=
.seq body6_36 body6_43

def body6_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(225, 165)]

def body6_46 : WordLangProgHOL (BitVec 64) :=
.seq body6_44 body6_45

def body6_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(231, 137), (235, 141), (239, 145), (243, 149), (247, 153), (251, 205), (255, 161), (259, 225), (263, 169),
    (267, 193), (271, 173)]

def body6_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 221), (4, 225)]

def body6_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(277, 231), (281, 235), (285, 239), (289, 243), (293, 247), (297, 251), (301, 255), (305, 259), (309, 263),
    (313, 267), (317, 271)]

def body6_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(325, 2)]

def body6_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 325)]

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
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))))),
  Flapjack.Spt.ln)), body6_49, 336, 4)) (some 89) ([2, 4]) (some (2, body6_54, 336, 5))

def body6_56 : WordLangProgHOL (BitVec 64) :=
.seq body6_48 body6_55

def body6_57 : WordLangProgHOL (BitVec 64) :=
.seq body6_47 body6_56

def body6_58 : WordLangProgHOL (BitVec 64) :=
.seq body6_46 body6_57

def body6_59 : WordLangProgHOL (BitVec 64) :=
.seq body6_58 body6_27

def body6_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 337 Flapjack.WordStore.heapLength

def body6_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 341 337 (Flapjack.WordRegImm.imm 1#64)))

def body6_62 : WordLangProgHOL (BitVec 64) :=
.seq body6_60 body6_61

def body6_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 345 341

def body6_64 : WordLangProgHOL (BitVec 64) :=
.seq body6_62 body6_63

def body6_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 349 (Flapjack.WordLangAddr.addr 345 18446744073709551464#64))

def body6_66 : WordLangProgHOL (BitVec 64) :=
.seq body6_64 body6_65

def body6_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 353 349 (Flapjack.WordRegImm.imm 8#64)))

def body6_68 : WordLangProgHOL (BitVec 64) :=
.seq body6_66 body6_67

def body6_69 : WordLangProgHOL (BitVec 64) :=
.seq body6_59 body6_68

def body6_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(357, 285)]

def body6_71 : WordLangProgHOL (BitVec 64) :=
.seq body6_69 body6_70

def body6_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(363, 277), (367, 281), (371, 357), (375, 289), (379, 293), (383, 297), (387, 301), (391, 305), (395, 309),
    (399, 313), (403, 317)]

def body6_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 353), (4, 357)]

def body6_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(409, 363), (413, 367), (417, 371), (421, 375), (425, 379), (429, 383), (433, 387), (437, 391), (441, 395),
    (445, 399), (449, 403)]

def body6_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(457, 2)]

def body6_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 457)]

def body6_77 : WordLangProgHOL (BitVec 64) :=
.seq body6_76 body6_17

def body6_78 : WordLangProgHOL (BitVec 64) :=
.seq body6_75 body6_77

def body6_79 : WordLangProgHOL (BitVec 64) :=
.seq body6_74 body6_78

def body6_80 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body6_74, 336, 6)) (some 89) ([2, 4]) (some (2, body6_79, 336, 7))

def body6_81 : WordLangProgHOL (BitVec 64) :=
.seq body6_73 body6_80

def body6_82 : WordLangProgHOL (BitVec 64) :=
.seq body6_72 body6_81

def body6_83 : WordLangProgHOL (BitVec 64) :=
.seq body6_71 body6_82

def body6_84 : WordLangProgHOL (BitVec 64) :=
.seq body6_83 body6_27

def body6_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 469 Flapjack.WordStore.heapLength

def body6_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 473 469 (Flapjack.WordRegImm.imm 1#64)))

def body6_87 : WordLangProgHOL (BitVec 64) :=
.seq body6_85 body6_86

def body6_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 477 473

def body6_89 : WordLangProgHOL (BitVec 64) :=
.seq body6_87 body6_88

def body6_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 481 (Flapjack.WordLangAddr.addr 477 18446744073709551464#64))

def body6_91 : WordLangProgHOL (BitVec 64) :=
.seq body6_89 body6_90

def body6_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 485 481 (Flapjack.WordRegImm.imm 16#64)))

def body6_93 : WordLangProgHOL (BitVec 64) :=
.seq body6_91 body6_92

def body6_94 : WordLangProgHOL (BitVec 64) :=
.seq body6_84 body6_93

def body6_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(489, 441)]

def body6_96 : WordLangProgHOL (BitVec 64) :=
.seq body6_94 body6_95

def body6_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(495, 409), (499, 413), (503, 417), (507, 421), (511, 425), (515, 429), (519, 433), (523, 437), (527, 489),
    (531, 445), (535, 449)]

def body6_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 485), (4, 489)]

def body6_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(541, 495), (545, 499), (549, 503), (553, 507), (557, 511), (561, 515), (565, 519), (569, 523), (573, 527),
    (577, 531), (581, 535)]

def body6_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(589, 2)]

def body6_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 589)]

def body6_102 : WordLangProgHOL (BitVec 64) :=
.seq body6_101 body6_17

def body6_103 : WordLangProgHOL (BitVec 64) :=
.seq body6_100 body6_102

def body6_104 : WordLangProgHOL (BitVec 64) :=
.seq body6_99 body6_103

def body6_105 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))))),
  Flapjack.Spt.ln)), body6_99, 336, 8)) (some 89) ([2, 4]) (some (2, body6_104, 336, 9))

def body6_106 : WordLangProgHOL (BitVec 64) :=
.seq body6_98 body6_105

def body6_107 : WordLangProgHOL (BitVec 64) :=
.seq body6_97 body6_106

def body6_108 : WordLangProgHOL (BitVec 64) :=
.seq body6_96 body6_107

def body6_109 : WordLangProgHOL (BitVec 64) :=
.seq body6_108 body6_27

def body6_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 601 Flapjack.WordStore.heapLength

def body6_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 605 601 (Flapjack.WordRegImm.imm 1#64)))

def body6_112 : WordLangProgHOL (BitVec 64) :=
.seq body6_110 body6_111

def body6_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 609 605

def body6_114 : WordLangProgHOL (BitVec 64) :=
.seq body6_112 body6_113

def body6_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 613 (Flapjack.WordLangAddr.addr 609 18446744073709551464#64))

def body6_116 : WordLangProgHOL (BitVec 64) :=
.seq body6_114 body6_115

def body6_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 617 613 (Flapjack.WordRegImm.imm 24#64)))

def body6_118 : WordLangProgHOL (BitVec 64) :=
.seq body6_116 body6_117

def body6_119 : WordLangProgHOL (BitVec 64) :=
.seq body6_109 body6_118

def body6_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(621, 553)]

def body6_121 : WordLangProgHOL (BitVec 64) :=
.seq body6_119 body6_120

def body6_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(627, 541), (631, 545), (635, 549), (639, 621), (643, 557), (647, 561), (651, 565), (655, 569), (659, 573),
    (663, 577), (667, 581)]

def body6_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 617), (4, 621)]

def body6_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(673, 627), (677, 631), (681, 635), (685, 639), (689, 643), (693, 647), (697, 651), (701, 655), (705, 659),
    (709, 663), (713, 667)]

def body6_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(721, 2)]

def body6_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 721)]

def body6_127 : WordLangProgHOL (BitVec 64) :=
.seq body6_126 body6_17

def body6_128 : WordLangProgHOL (BitVec 64) :=
.seq body6_125 body6_127

def body6_129 : WordLangProgHOL (BitVec 64) :=
.seq body6_124 body6_128

def body6_130 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body6_124, 336, 10)) (some 89) ([2, 4]) (some (2, body6_129, 336, 11))

def body6_131 : WordLangProgHOL (BitVec 64) :=
.seq body6_123 body6_130

def body6_132 : WordLangProgHOL (BitVec 64) :=
.seq body6_122 body6_131

def body6_133 : WordLangProgHOL (BitVec 64) :=
.seq body6_121 body6_132

def body6_134 : WordLangProgHOL (BitVec 64) :=
.seq body6_133 body6_27

def body6_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 733 0#64)

def body6_136 : WordLangProgHOL (BitVec 64) :=
.seq body6_134 body6_135

def body6_137 : WordLangProgHOL (BitVec 64) :=
.seq body6_136 body6_27

def body6_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(737, 673), (741, 733), (745, 677), (749, 681), (753, 685), (757, 689), (761, 693), (765, 697), (769, 701),
    (773, 705), (777, 709), (781, 713)]

def body6_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(785, 741)]

def body6_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 789 32#64)

def body6_141 : WordLangProgHOL (BitVec 64) :=
.seq body6_139 body6_140

def body6_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(801, 785)]

def body6_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 805 Flapjack.WordStore.heapLength

def body6_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 809 805 (Flapjack.WordRegImm.imm 1#64)))

def body6_145 : WordLangProgHOL (BitVec 64) :=
.seq body6_143 body6_144

def body6_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 813 809

def body6_147 : WordLangProgHOL (BitVec 64) :=
.seq body6_145 body6_146

def body6_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 817 (Flapjack.WordLangAddr.addr 813 18446744073709551464#64))

def body6_149 : WordLangProgHOL (BitVec 64) :=
.seq body6_147 body6_148

def body6_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 821 801 (Flapjack.WordRegImm.reg 817)))

def body6_151 : WordLangProgHOL (BitVec 64) :=
.seq body6_149 body6_150

def body6_152 : WordLangProgHOL (BitVec 64) :=
.seq body6_142 body6_151

def body6_153 : WordLangProgHOL (BitVec 64) :=
.seq body6_27 body6_152

def body6_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 825 (Flapjack.WordLangAddr.addr 821 0#64))

def body6_155 : WordLangProgHOL (BitVec 64) :=
.seq body6_153 body6_154

def body6_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(829, 825)]

def body6_157 : WordLangProgHOL (BitVec 64) :=
.seq body6_155 body6_156

def body6_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 833 0#64)

def body6_159 : WordLangProgHOL (BitVec 64) :=
.seq body6_157 body6_158

def body6_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(741, 801)]

def body6_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body6_162 : WordLangProgHOL (BitVec 64) :=
.seq body6_160 body6_161

def body6_163 : WordLangProgHOL (BitVec 64) :=
.seq body6_27 body6_162

def body6_164 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 829 (Flapjack.WordRegImm.reg 833) body6_163 body6_27

def body6_165 : WordLangProgHOL (BitVec 64) :=
.seq body6_159 body6_164

def body6_166 : WordLangProgHOL (BitVec 64) :=
.seq body6_165 body6_27

def body6_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(861, 801)]

def body6_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 865 861 (Flapjack.WordRegImm.imm 1#64)))

def body6_169 : WordLangProgHOL (BitVec 64) :=
.seq body6_167 body6_168

def body6_170 : WordLangProgHOL (BitVec 64) :=
.seq body6_166 body6_169

def body6_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(869, 865)]

def body6_172 : WordLangProgHOL (BitVec 64) :=
.seq body6_170 body6_171

def body6_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(741, 869)]

def body6_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body6_175 : WordLangProgHOL (BitVec 64) :=
.seq body6_173 body6_174

def body6_176 : WordLangProgHOL (BitVec 64) :=
.seq body6_172 body6_175

def body6_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(893, 741)]

def body6_178 : WordLangProgHOL (BitVec 64) :=
.seq body6_176 body6_177

def body6_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(741, 785)]

def body6_180 : WordLangProgHOL (BitVec 64) :=
.seq body6_179 body6_161

def body6_181 : WordLangProgHOL (BitVec 64) :=
.seq body6_27 body6_180

def body6_182 : WordLangProgHOL (BitVec 64) :=
.seq body6_181 body6_177

def body6_183 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 785 (Flapjack.WordRegImm.reg 789) body6_178 body6_182

def body6_184 : WordLangProgHOL (BitVec 64) :=
.seq body6_141 body6_183

def body6_185 : WordLangProgHOL (BitVec 64) :=
.seq body6_184 body6_27

def body6_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(741, 893)]

def body6_187 : WordLangProgHOL (BitVec 64) :=
.seq body6_185 body6_186

def body6_188 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)) body6_187 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln))

def body6_189 : WordLangProgHOL (BitVec 64) :=
.seq body6_138 body6_188

def body6_190 : WordLangProgHOL (BitVec 64) :=
.seq body6_137 body6_189

def body6_191 : WordLangProgHOL (BitVec 64) :=
.seq body6_190 body6_27

def body6_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(913, 761)]

def body6_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(917, 745)]

def body6_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 921 913 (Flapjack.WordRegImm.reg 917)))

def body6_195 : WordLangProgHOL (BitVec 64) :=
.seq body6_193 body6_194

def body6_196 : WordLangProgHOL (BitVec 64) :=
.seq body6_192 body6_195

def body6_197 : WordLangProgHOL (BitVec 64) :=
.seq body6_191 body6_196

def body6_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(925, 741)]

def body6_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 929 Flapjack.WordStore.heapLength

def body6_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 933 929 (Flapjack.WordRegImm.imm 1#64)))

def body6_201 : WordLangProgHOL (BitVec 64) :=
.seq body6_199 body6_200

def body6_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 937 933

def body6_203 : WordLangProgHOL (BitVec 64) :=
.seq body6_201 body6_202

def body6_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 941 (Flapjack.WordLangAddr.addr 937 18446744073709551464#64))

def body6_205 : WordLangProgHOL (BitVec 64) :=
.seq body6_203 body6_204

def body6_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 945 925 (Flapjack.WordRegImm.reg 941)))

def body6_207 : WordLangProgHOL (BitVec 64) :=
.seq body6_205 body6_206

def body6_208 : WordLangProgHOL (BitVec 64) :=
.seq body6_198 body6_207

def body6_209 : WordLangProgHOL (BitVec 64) :=
.seq body6_197 body6_208

def body6_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 949 32#64)

def body6_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(953, 925)]

def body6_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 957 949 (Flapjack.WordRegImm.reg 953)))

def body6_213 : WordLangProgHOL (BitVec 64) :=
.seq body6_211 body6_212

def body6_214 : WordLangProgHOL (BitVec 64) :=
.seq body6_210 body6_213

def body6_215 : WordLangProgHOL (BitVec 64) :=
.seq body6_209 body6_214

def body6_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(963, 737), (967, 917), (971, 757), (975, 913), (979, 781)]

def body6_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 921), (4, 945), (6, 957)]

def body6_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(985, 963), (989, 967), (993, 971), (997, 975), (1001, 979)]

def body6_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1005, 2)]

def body6_220 : WordLangProgHOL (BitVec 64) :=
.seq body6_218 body6_219

def body6_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1017, 1005)]

def body6_222 : WordLangProgHOL (BitVec 64) :=
.seq body6_220 body6_221

def body6_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1009, 2)]

def body6_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1009)]

def body6_225 : WordLangProgHOL (BitVec 64) :=
.seq body6_224 body6_17

def body6_226 : WordLangProgHOL (BitVec 64) :=
.seq body6_223 body6_225

def body6_227 : WordLangProgHOL (BitVec 64) :=
.seq body6_218 body6_226

def body6_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1017 0#64)

def body6_229 : WordLangProgHOL (BitVec 64) :=
.seq body6_227 body6_228

def body6_230 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body6_222, 336, 12)) (some 176) ([2, 4, 6]) (some (2, body6_229, 336, 13))

def body6_231 : WordLangProgHOL (BitVec 64) :=
.seq body6_217 body6_230

def body6_232 : WordLangProgHOL (BitVec 64) :=
.seq body6_216 body6_231

def body6_233 : WordLangProgHOL (BitVec 64) :=
.seq body6_215 body6_232

def body6_234 : WordLangProgHOL (BitVec 64) :=
.seq body6_233 body6_27

def body6_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1021, 1017)]

def body6_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1025, 997)]

def body6_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1029 1021 (Flapjack.WordRegImm.reg 1025)))

def body6_238 : WordLangProgHOL (BitVec 64) :=
.seq body6_236 body6_237

def body6_239 : WordLangProgHOL (BitVec 64) :=
.seq body6_235 body6_238

def body6_240 : WordLangProgHOL (BitVec 64) :=
.seq body6_234 body6_239

def body6_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1033, 1029)]

def body6_242 : WordLangProgHOL (BitVec 64) :=
.seq body6_240 body6_241

def body6_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1037, 1033)]

def body6_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1041, 989)]

def body6_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1045 1037 (Flapjack.WordRegImm.reg 1041)))

def body6_246 : WordLangProgHOL (BitVec 64) :=
.seq body6_244 body6_245

def body6_247 : WordLangProgHOL (BitVec 64) :=
.seq body6_243 body6_246

def body6_248 : WordLangProgHOL (BitVec 64) :=
.seq body6_242 body6_247

def body6_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1049, 993)]

def body6_250 : WordLangProgHOL (BitVec 64) :=
.seq body6_248 body6_249

def body6_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1057 32#64)

def body6_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1063, 985), (1067, 1041), (1071, 1037), (1075, 1001)]

def body6_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1045), (4, 1049), (6, 1057)]

def body6_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1081, 1063), (1085, 1067), (1089, 1071), (1093, 1075)]

def body6_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1097, 2)]

def body6_256 : WordLangProgHOL (BitVec 64) :=
.seq body6_254 body6_255

def body6_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1105, 1097)]

def body6_258 : WordLangProgHOL (BitVec 64) :=
.seq body6_256 body6_257

def body6_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1101, 2)]

def body6_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1101)]

def body6_261 : WordLangProgHOL (BitVec 64) :=
.seq body6_260 body6_17

def body6_262 : WordLangProgHOL (BitVec 64) :=
.seq body6_259 body6_261

def body6_263 : WordLangProgHOL (BitVec 64) :=
.seq body6_254 body6_262

def body6_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1105 0#64)

def body6_265 : WordLangProgHOL (BitVec 64) :=
.seq body6_263 body6_264

def body6_266 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body6_258, 336, 14)) (some 176) ([2, 4, 6]) (some (2, body6_265, 336, 15))

def body6_267 : WordLangProgHOL (BitVec 64) :=
.seq body6_253 body6_266

def body6_268 : WordLangProgHOL (BitVec 64) :=
.seq body6_252 body6_267

def body6_269 : WordLangProgHOL (BitVec 64) :=
.seq body6_251 body6_268

def body6_270 : WordLangProgHOL (BitVec 64) :=
.seq body6_250 body6_269

def body6_271 : WordLangProgHOL (BitVec 64) :=
.seq body6_270 body6_27

def body6_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1113, 1105)]

def body6_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1117, 1089)]

def body6_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1121 1113 (Flapjack.WordRegImm.reg 1117)))

def body6_275 : WordLangProgHOL (BitVec 64) :=
.seq body6_273 body6_274

def body6_276 : WordLangProgHOL (BitVec 64) :=
.seq body6_272 body6_275

def body6_277 : WordLangProgHOL (BitVec 64) :=
.seq body6_271 body6_276

def body6_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1125, 1121)]

def body6_279 : WordLangProgHOL (BitVec 64) :=
.seq body6_277 body6_278

def body6_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1129, 1125)]

def body6_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1133, 1085)]

def body6_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1137 1129 (Flapjack.WordRegImm.reg 1133)))

def body6_283 : WordLangProgHOL (BitVec 64) :=
.seq body6_281 body6_282

def body6_284 : WordLangProgHOL (BitVec 64) :=
.seq body6_280 body6_283

def body6_285 : WordLangProgHOL (BitVec 64) :=
.seq body6_279 body6_284

def body6_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1141, 1093)]

def body6_287 : WordLangProgHOL (BitVec 64) :=
.seq body6_285 body6_286

def body6_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1149 32#64)

def body6_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1155, 1081), (1159, 1133), (1163, 1129)]

def body6_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1137), (4, 1141), (6, 1149)]

def body6_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1169, 1155), (1173, 1159), (1177, 1163)]

def body6_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1181, 2)]

def body6_293 : WordLangProgHOL (BitVec 64) :=
.seq body6_291 body6_292

def body6_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1193, 1181)]

def body6_295 : WordLangProgHOL (BitVec 64) :=
.seq body6_293 body6_294

def body6_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1185, 2)]

def body6_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1185)]

def body6_298 : WordLangProgHOL (BitVec 64) :=
.seq body6_297 body6_17

def body6_299 : WordLangProgHOL (BitVec 64) :=
.seq body6_296 body6_298

def body6_300 : WordLangProgHOL (BitVec 64) :=
.seq body6_291 body6_299

def body6_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1193 0#64)

def body6_302 : WordLangProgHOL (BitVec 64) :=
.seq body6_300 body6_301

def body6_303 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body6_295, 336, 16)) (some 176) ([2, 4, 6]) (some (2, body6_302, 336, 17))

def body6_304 : WordLangProgHOL (BitVec 64) :=
.seq body6_290 body6_303

def body6_305 : WordLangProgHOL (BitVec 64) :=
.seq body6_289 body6_304

def body6_306 : WordLangProgHOL (BitVec 64) :=
.seq body6_288 body6_305

def body6_307 : WordLangProgHOL (BitVec 64) :=
.seq body6_287 body6_306

def body6_308 : WordLangProgHOL (BitVec 64) :=
.seq body6_307 body6_27

def body6_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1197, 1193)]

def body6_310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1201, 1177)]

def body6_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1205 1197 (Flapjack.WordRegImm.reg 1201)))

def body6_312 : WordLangProgHOL (BitVec 64) :=
.seq body6_310 body6_311

def body6_313 : WordLangProgHOL (BitVec 64) :=
.seq body6_309 body6_312

def body6_314 : WordLangProgHOL (BitVec 64) :=
.seq body6_308 body6_313

def body6_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1209, 1205)]

def body6_316 : WordLangProgHOL (BitVec 64) :=
.seq body6_314 body6_315

def body6_317 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1213, 1173)]

def body6_318 : WordLangProgHOL (BitVec 64) :=
.seq body6_316 body6_317

def body6_319 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1217 248#64)

def body6_320 : WordLangProgHOL (BitVec 64) :=
.seq body6_318 body6_319

def body6_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 1217 (Flapjack.WordLangAddr.addr 1213 0#64))

def body6_322 : WordLangProgHOL (BitVec 64) :=
.seq body6_320 body6_321

def body6_323 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1221, 1213)]

def body6_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1225 1221 (Flapjack.WordRegImm.imm 1#64)))

def body6_325 : WordLangProgHOL (BitVec 64) :=
.seq body6_323 body6_324

def body6_326 : WordLangProgHOL (BitVec 64) :=
.seq body6_322 body6_325

def body6_327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1229, 1209)]

def body6_328 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1233 1229 (Flapjack.WordRegImm.imm 18446744073709551614#64)))

def body6_329 : WordLangProgHOL (BitVec 64) :=
.seq body6_327 body6_328

def body6_330 : WordLangProgHOL (BitVec 64) :=
.seq body6_326 body6_329

def body6_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 1233 (Flapjack.WordLangAddr.addr 1225 0#64))

def body6_332 : WordLangProgHOL (BitVec 64) :=
.seq body6_330 body6_331

def body6_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1237, 1229)]

def body6_334 : WordLangProgHOL (BitVec 64) :=
.seq body6_332 body6_333

def body6_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 1237)]

def body6_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 1169 [2]

def body6_337 : WordLangProgHOL (BitVec 64) :=
.seq body6_335 body6_336

def body6_338 : WordLangProgHOL (BitVec 64) :=
.seq body6_334 body6_337

def body6_339 : WordLangProgHOL (BitVec 64) :=
.seq body6_0 body6_338

def pass6 : WordLangProgHOL (BitVec 64) := body6_339
def body7_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(41, 0), (45, 2), (49, 4), (53, 6), (57, 8), (61, 10), (65, 12), (69, 14), (73, 16)]

def body7_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 2#64)

def body7_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 73)]

def body7_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 85 81 (Flapjack.WordRegImm.imm 2#64)))

def body7_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 85), (4, 45), (95, 41), (99, 81), (103, 57), (107, 49), (111, 65), (115, 77), (119, 45), (123, 61), (127, 53),
    (131, 69), (89, 45)]

def body7_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(185, 2), (177, 2), (137, 95), (141, 99), (145, 103), (149, 107), (153, 111), (157, 115), (161, 119), (165, 123),
    (169, 127), (173, 131)]

def body7_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (181, 2), (137, 95), (141, 99), (145, 103), (149, 107), (153, 111), (157, 115), (161, 119), (165, 123),
    (169, 127), (173, 131)]

def body7_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body7_8 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_7

def body7_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))),
  Flapjack.Spt.ln)), body7_5, 336, 2)) (some 177) ([2, 4]) (some (2, body7_8, 336, 3))

def body7_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body7_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(197, 157), (193, 185)]

def body7_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 201 193 (Flapjack.WordRegImm.reg 197)))

def body7_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 201)]

def body7_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 209 Flapjack.WordStore.heapLength

def body7_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 213 209 (Flapjack.WordRegImm.imm 1#64)))

def body7_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 217 213

def body7_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 221 (Flapjack.WordLangAddr.addr 217 18446744073709551464#64))

def body7_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 221), (4, 165), (231, 137), (235, 141), (239, 145), (243, 149), (247, 153), (251, 205), (255, 161), (259, 165),
    (263, 169), (267, 193), (271, 173), (225, 165)]

def body7_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(277, 231), (281, 235), (285, 239), (289, 243), (293, 247), (297, 251), (301, 255), (305, 259), (309, 263),
    (313, 267), (317, 271)]

def body7_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (325, 2), (277, 231), (281, 235), (285, 239), (289, 243), (293, 247), (297, 251), (301, 255), (305, 259),
    (309, 263), (313, 267), (317, 271)]

def body7_21 : WordLangProgHOL (BitVec 64) :=
.seq body7_20 body7_7

def body7_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))))),
  Flapjack.Spt.ln)), body7_19, 336, 4)) (some 89) ([2, 4]) (some (2, body7_21, 336, 5))

def body7_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 337 Flapjack.WordStore.heapLength

def body7_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 341 337 (Flapjack.WordRegImm.imm 1#64)))

def body7_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 345 341

def body7_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 349 (Flapjack.WordLangAddr.addr 345 18446744073709551464#64))

def body7_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 353 349 (Flapjack.WordRegImm.imm 8#64)))

def body7_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 353), (4, 285), (363, 277), (367, 281), (371, 285), (375, 289), (379, 293), (383, 297), (387, 301), (391, 305),
    (395, 309), (399, 313), (403, 317), (357, 285)]

def body7_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(409, 363), (413, 367), (417, 371), (421, 375), (425, 379), (429, 383), (433, 387), (437, 391), (441, 395),
    (445, 399), (449, 403)]

def body7_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (457, 2), (409, 363), (413, 367), (417, 371), (421, 375), (425, 379), (429, 383), (433, 387), (437, 391),
    (441, 395), (445, 399), (449, 403)]

def body7_31 : WordLangProgHOL (BitVec 64) :=
.seq body7_30 body7_7

def body7_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body7_29, 336, 6)) (some 89) ([2, 4]) (some (2, body7_31, 336, 7))

def body7_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 469 Flapjack.WordStore.heapLength

def body7_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 473 469 (Flapjack.WordRegImm.imm 1#64)))

def body7_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 477 473

def body7_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 481 (Flapjack.WordLangAddr.addr 477 18446744073709551464#64))

def body7_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 485 481 (Flapjack.WordRegImm.imm 16#64)))

def body7_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 485), (4, 441), (495, 409), (499, 413), (503, 417), (507, 421), (511, 425), (515, 429), (519, 433), (523, 437),
    (527, 441), (531, 445), (535, 449), (489, 441)]

def body7_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(541, 495), (545, 499), (549, 503), (553, 507), (557, 511), (561, 515), (565, 519), (569, 523), (573, 527),
    (577, 531), (581, 535)]

def body7_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (589, 2), (541, 495), (545, 499), (549, 503), (553, 507), (557, 511), (561, 515), (565, 519), (569, 523),
    (573, 527), (577, 531), (581, 535)]

def body7_41 : WordLangProgHOL (BitVec 64) :=
.seq body7_40 body7_7

def body7_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))))),
  Flapjack.Spt.ln)), body7_39, 336, 8)) (some 89) ([2, 4]) (some (2, body7_41, 336, 9))

def body7_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 601 Flapjack.WordStore.heapLength

def body7_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 605 601 (Flapjack.WordRegImm.imm 1#64)))

def body7_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 609 605

def body7_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 613 (Flapjack.WordLangAddr.addr 609 18446744073709551464#64))

def body7_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 617 613 (Flapjack.WordRegImm.imm 24#64)))

def body7_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 617), (4, 553), (627, 541), (631, 545), (635, 549), (639, 553), (643, 557), (647, 561), (651, 565), (655, 569),
    (659, 573), (663, 577), (667, 581), (621, 553)]

def body7_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(673, 627), (677, 631), (681, 635), (685, 639), (689, 643), (693, 647), (697, 651), (701, 655), (705, 659),
    (709, 663), (713, 667)]

def body7_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (721, 2), (673, 627), (677, 631), (681, 635), (685, 639), (689, 643), (693, 647), (697, 651), (701, 655),
    (705, 659), (709, 663), (713, 667)]

def body7_51 : WordLangProgHOL (BitVec 64) :=
.seq body7_50 body7_7

def body7_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body7_49, 336, 10)) (some 89) ([2, 4]) (some (2, body7_51, 336, 11))

def body7_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 733 0#64)

def body7_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(737, 673), (741, 733), (745, 677), (749, 681), (753, 685), (757, 689), (761, 693), (765, 697), (769, 701),
    (773, 705), (777, 709), (781, 713)]

def body7_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(785, 741)]

def body7_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 789 32#64)

def body7_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(801, 785)]

def body7_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 805 Flapjack.WordStore.heapLength

def body7_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 809 805 (Flapjack.WordRegImm.imm 1#64)))

def body7_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 813 809

def body7_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 817 (Flapjack.WordLangAddr.addr 813 18446744073709551464#64))

def body7_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 821 801 (Flapjack.WordRegImm.reg 817)))

def body7_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 825 (Flapjack.WordLangAddr.addr 821 0#64))

def body7_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(829, 825)]

def body7_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 833 0#64)

def body7_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(741, 801)]

def body7_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body7_68 : WordLangProgHOL (BitVec 64) :=
.seq body7_66 body7_67

def body7_69 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_68

def body7_70 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 829 (Flapjack.WordRegImm.reg 833) body7_69 body7_10

def body7_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(861, 801)]

def body7_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 865 861 (Flapjack.WordRegImm.imm 1#64)))

def body7_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(741, 865), (869, 865)]

def body7_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body7_75 : WordLangProgHOL (BitVec 64) :=
.seq body7_73 body7_74

def body7_76 : WordLangProgHOL (BitVec 64) :=
.seq body7_72 body7_75

def body7_77 : WordLangProgHOL (BitVec 64) :=
.seq body7_71 body7_76

def body7_78 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_77

def body7_79 : WordLangProgHOL (BitVec 64) :=
.seq body7_70 body7_78

def body7_80 : WordLangProgHOL (BitVec 64) :=
.seq body7_65 body7_79

def body7_81 : WordLangProgHOL (BitVec 64) :=
.seq body7_64 body7_80

def body7_82 : WordLangProgHOL (BitVec 64) :=
.seq body7_63 body7_81

def body7_83 : WordLangProgHOL (BitVec 64) :=
.seq body7_62 body7_82

def body7_84 : WordLangProgHOL (BitVec 64) :=
.seq body7_61 body7_83

def body7_85 : WordLangProgHOL (BitVec 64) :=
.seq body7_60 body7_84

def body7_86 : WordLangProgHOL (BitVec 64) :=
.seq body7_59 body7_85

def body7_87 : WordLangProgHOL (BitVec 64) :=
.seq body7_58 body7_86

def body7_88 : WordLangProgHOL (BitVec 64) :=
.seq body7_57 body7_87

def body7_89 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_88

def body7_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(741, 785)]

def body7_91 : WordLangProgHOL (BitVec 64) :=
.seq body7_90 body7_67

def body7_92 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_91

def body7_93 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 785 (Flapjack.WordRegImm.reg 789) body7_89 body7_92

def body7_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(741, 893)]

def body7_95 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_94

def body7_96 : WordLangProgHOL (BitVec 64) :=
.seq body7_93 body7_95

def body7_97 : WordLangProgHOL (BitVec 64) :=
.seq body7_56 body7_96

def body7_98 : WordLangProgHOL (BitVec 64) :=
.seq body7_55 body7_97

def body7_99 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)) body7_98 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln))

def body7_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(917, 745), (913, 761)]

def body7_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 921 913 (Flapjack.WordRegImm.reg 917)))

def body7_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(925, 741)]

def body7_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 929 Flapjack.WordStore.heapLength

def body7_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 933 929 (Flapjack.WordRegImm.imm 1#64)))

def body7_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 937 933

def body7_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 941 (Flapjack.WordLangAddr.addr 937 18446744073709551464#64))

def body7_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 945 925 (Flapjack.WordRegImm.reg 941)))

def body7_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 949 32#64)

def body7_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(953, 925)]

def body7_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 957 949 (Flapjack.WordRegImm.reg 953)))

def body7_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 921), (4, 945), (6, 957), (963, 737), (967, 917), (971, 757), (975, 913), (979, 781)]

def body7_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1017, 2), (1005, 2), (985, 963), (989, 967), (993, 971), (997, 975), (1001, 979)]

def body7_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (1009, 2), (985, 963), (989, 967), (993, 971), (997, 975), (1001, 979)]

def body7_114 : WordLangProgHOL (BitVec 64) :=
.seq body7_113 body7_7

def body7_115 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body7_112, 336, 12)) (some 176) ([2, 4, 6]) (some (2, body7_114, 336, 13))

def body7_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1025, 997), (1021, 1017)]

def body7_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1029 1021 (Flapjack.WordRegImm.reg 1025)))

def body7_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1041, 989), (1037, 1029), (1033, 1029)]

def body7_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1045 1037 (Flapjack.WordRegImm.reg 1041)))

def body7_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1049, 993)]

def body7_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1057 32#64)

def body7_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1045), (4, 1049), (6, 1057), (1063, 985), (1067, 1041), (1071, 1037), (1075, 1001)]

def body7_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1105, 2), (1097, 2), (1081, 1063), (1085, 1067), (1089, 1071), (1093, 1075)]

def body7_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (1101, 2), (1081, 1063), (1085, 1067), (1089, 1071), (1093, 1075)]

def body7_125 : WordLangProgHOL (BitVec 64) :=
.seq body7_124 body7_7

def body7_126 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body7_123, 336, 14)) (some 176) ([2, 4, 6]) (some (2, body7_125, 336, 15))

def body7_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1117, 1089), (1113, 1105)]

def body7_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1121 1113 (Flapjack.WordRegImm.reg 1117)))

def body7_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1133, 1085), (1129, 1121), (1125, 1121)]

def body7_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1137 1129 (Flapjack.WordRegImm.reg 1133)))

def body7_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1141, 1093)]

def body7_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1149 32#64)

def body7_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1137), (4, 1141), (6, 1149), (1155, 1081), (1159, 1133), (1163, 1129)]

def body7_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1193, 2), (1181, 2), (1169, 1155), (1173, 1159), (1177, 1163)]

def body7_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (1185, 2), (1169, 1155), (1173, 1159), (1177, 1163)]

def body7_136 : WordLangProgHOL (BitVec 64) :=
.seq body7_135 body7_7

def body7_137 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body7_134, 336, 16)) (some 176) ([2, 4, 6]) (some (2, body7_136, 336, 17))

def body7_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1201, 1177), (1197, 1193)]

def body7_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1205 1197 (Flapjack.WordRegImm.reg 1201)))

def body7_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1213, 1173), (1209, 1205)]

def body7_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1217 248#64)

def body7_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 1217 (Flapjack.WordLangAddr.addr 1213 0#64))

def body7_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1221, 1213)]

def body7_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1225 1221 (Flapjack.WordRegImm.imm 1#64)))

def body7_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1229, 1209)]

def body7_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1233 1229 (Flapjack.WordRegImm.imm 18446744073709551614#64)))

def body7_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 1233 (Flapjack.WordLangAddr.addr 1225 0#64))

def body7_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 1229), (1237, 1229)]

def body7_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 1169 [2]

def body7_150 : WordLangProgHOL (BitVec 64) :=
.seq body7_148 body7_149

def body7_151 : WordLangProgHOL (BitVec 64) :=
.seq body7_147 body7_150

def body7_152 : WordLangProgHOL (BitVec 64) :=
.seq body7_146 body7_151

def body7_153 : WordLangProgHOL (BitVec 64) :=
.seq body7_145 body7_152

def body7_154 : WordLangProgHOL (BitVec 64) :=
.seq body7_144 body7_153

def body7_155 : WordLangProgHOL (BitVec 64) :=
.seq body7_143 body7_154

def body7_156 : WordLangProgHOL (BitVec 64) :=
.seq body7_142 body7_155

def body7_157 : WordLangProgHOL (BitVec 64) :=
.seq body7_141 body7_156

def body7_158 : WordLangProgHOL (BitVec 64) :=
.seq body7_140 body7_157

def body7_159 : WordLangProgHOL (BitVec 64) :=
.seq body7_139 body7_158

def body7_160 : WordLangProgHOL (BitVec 64) :=
.seq body7_138 body7_159

def body7_161 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_160

def body7_162 : WordLangProgHOL (BitVec 64) :=
.seq body7_137 body7_161

def body7_163 : WordLangProgHOL (BitVec 64) :=
.seq body7_133 body7_162

def body7_164 : WordLangProgHOL (BitVec 64) :=
.seq body7_132 body7_163

def body7_165 : WordLangProgHOL (BitVec 64) :=
.seq body7_131 body7_164

def body7_166 : WordLangProgHOL (BitVec 64) :=
.seq body7_130 body7_165

def body7_167 : WordLangProgHOL (BitVec 64) :=
.seq body7_129 body7_166

def body7_168 : WordLangProgHOL (BitVec 64) :=
.seq body7_128 body7_167

def body7_169 : WordLangProgHOL (BitVec 64) :=
.seq body7_127 body7_168

def body7_170 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_169

def body7_171 : WordLangProgHOL (BitVec 64) :=
.seq body7_126 body7_170

def body7_172 : WordLangProgHOL (BitVec 64) :=
.seq body7_122 body7_171

def body7_173 : WordLangProgHOL (BitVec 64) :=
.seq body7_121 body7_172

def body7_174 : WordLangProgHOL (BitVec 64) :=
.seq body7_120 body7_173

def body7_175 : WordLangProgHOL (BitVec 64) :=
.seq body7_119 body7_174

def body7_176 : WordLangProgHOL (BitVec 64) :=
.seq body7_118 body7_175

def body7_177 : WordLangProgHOL (BitVec 64) :=
.seq body7_117 body7_176

def body7_178 : WordLangProgHOL (BitVec 64) :=
.seq body7_116 body7_177

def body7_179 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_178

def body7_180 : WordLangProgHOL (BitVec 64) :=
.seq body7_115 body7_179

def body7_181 : WordLangProgHOL (BitVec 64) :=
.seq body7_111 body7_180

def body7_182 : WordLangProgHOL (BitVec 64) :=
.seq body7_110 body7_181

def body7_183 : WordLangProgHOL (BitVec 64) :=
.seq body7_109 body7_182

def body7_184 : WordLangProgHOL (BitVec 64) :=
.seq body7_108 body7_183

def body7_185 : WordLangProgHOL (BitVec 64) :=
.seq body7_107 body7_184

def body7_186 : WordLangProgHOL (BitVec 64) :=
.seq body7_106 body7_185

def body7_187 : WordLangProgHOL (BitVec 64) :=
.seq body7_105 body7_186

def body7_188 : WordLangProgHOL (BitVec 64) :=
.seq body7_104 body7_187

def body7_189 : WordLangProgHOL (BitVec 64) :=
.seq body7_103 body7_188

def body7_190 : WordLangProgHOL (BitVec 64) :=
.seq body7_102 body7_189

def body7_191 : WordLangProgHOL (BitVec 64) :=
.seq body7_101 body7_190

def body7_192 : WordLangProgHOL (BitVec 64) :=
.seq body7_100 body7_191

def body7_193 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_192

def body7_194 : WordLangProgHOL (BitVec 64) :=
.seq body7_99 body7_193

def body7_195 : WordLangProgHOL (BitVec 64) :=
.seq body7_54 body7_194

def body7_196 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_195

def body7_197 : WordLangProgHOL (BitVec 64) :=
.seq body7_53 body7_196

def body7_198 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_197

def body7_199 : WordLangProgHOL (BitVec 64) :=
.seq body7_52 body7_198

def body7_200 : WordLangProgHOL (BitVec 64) :=
.seq body7_48 body7_199

def body7_201 : WordLangProgHOL (BitVec 64) :=
.seq body7_47 body7_200

def body7_202 : WordLangProgHOL (BitVec 64) :=
.seq body7_46 body7_201

def body7_203 : WordLangProgHOL (BitVec 64) :=
.seq body7_45 body7_202

def body7_204 : WordLangProgHOL (BitVec 64) :=
.seq body7_44 body7_203

def body7_205 : WordLangProgHOL (BitVec 64) :=
.seq body7_43 body7_204

def body7_206 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_205

def body7_207 : WordLangProgHOL (BitVec 64) :=
.seq body7_42 body7_206

def body7_208 : WordLangProgHOL (BitVec 64) :=
.seq body7_38 body7_207

def body7_209 : WordLangProgHOL (BitVec 64) :=
.seq body7_37 body7_208

def body7_210 : WordLangProgHOL (BitVec 64) :=
.seq body7_36 body7_209

def body7_211 : WordLangProgHOL (BitVec 64) :=
.seq body7_35 body7_210

def body7_212 : WordLangProgHOL (BitVec 64) :=
.seq body7_34 body7_211

def body7_213 : WordLangProgHOL (BitVec 64) :=
.seq body7_33 body7_212

def body7_214 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_213

def body7_215 : WordLangProgHOL (BitVec 64) :=
.seq body7_32 body7_214

def body7_216 : WordLangProgHOL (BitVec 64) :=
.seq body7_28 body7_215

def body7_217 : WordLangProgHOL (BitVec 64) :=
.seq body7_27 body7_216

def body7_218 : WordLangProgHOL (BitVec 64) :=
.seq body7_26 body7_217

def body7_219 : WordLangProgHOL (BitVec 64) :=
.seq body7_25 body7_218

def body7_220 : WordLangProgHOL (BitVec 64) :=
.seq body7_24 body7_219

def body7_221 : WordLangProgHOL (BitVec 64) :=
.seq body7_23 body7_220

def body7_222 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_221

def body7_223 : WordLangProgHOL (BitVec 64) :=
.seq body7_22 body7_222

def body7_224 : WordLangProgHOL (BitVec 64) :=
.seq body7_18 body7_223

def body7_225 : WordLangProgHOL (BitVec 64) :=
.seq body7_17 body7_224

def body7_226 : WordLangProgHOL (BitVec 64) :=
.seq body7_16 body7_225

def body7_227 : WordLangProgHOL (BitVec 64) :=
.seq body7_15 body7_226

def body7_228 : WordLangProgHOL (BitVec 64) :=
.seq body7_14 body7_227

def body7_229 : WordLangProgHOL (BitVec 64) :=
.seq body7_13 body7_228

def body7_230 : WordLangProgHOL (BitVec 64) :=
.seq body7_12 body7_229

def body7_231 : WordLangProgHOL (BitVec 64) :=
.seq body7_11 body7_230

def body7_232 : WordLangProgHOL (BitVec 64) :=
.seq body7_10 body7_231

def body7_233 : WordLangProgHOL (BitVec 64) :=
.seq body7_9 body7_232

def body7_234 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_233

def body7_235 : WordLangProgHOL (BitVec 64) :=
.seq body7_3 body7_234

def body7_236 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_235

def body7_237 : WordLangProgHOL (BitVec 64) :=
.seq body7_1 body7_236

def body7_238 : WordLangProgHOL (BitVec 64) :=
.seq body7_0 body7_237

def pass7 : WordLangProgHOL (BitVec 64) := body7_238
def body8_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(41, 0), (45, 2), (49, 4), (53, 6), (57, 8), (61, 10), (65, 12), (69, 14), (73, 16)]

def body8_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 2#64)

def body8_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 73)]

def body8_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 85 81 (Flapjack.WordRegImm.imm 2#64)))

def body8_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 85), (4, 45), (95, 41), (99, 81), (103, 57), (107, 49), (111, 65), (115, 77), (119, 45), (123, 61), (127, 53),
    (131, 69)]

def body8_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(185, 2), (137, 95), (141, 99), (145, 103), (149, 107), (153, 111), (157, 115), (161, 119), (165, 123), (169, 127),
    (173, 131)]

def body8_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (137, 95), (141, 99), (145, 103), (149, 107), (153, 111), (157, 115), (161, 119), (165, 123), (169, 127),
    (173, 131)]

def body8_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body8_8 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_7

def body8_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls ()) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))),
  Flapjack.Spt.ln)), body8_5, 336, 2)) (some 177) ([2, 4]) (some (2, body8_8, 336, 3))

def body8_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body8_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(197, 157), (193, 185)]

def body8_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 201 193 (Flapjack.WordRegImm.reg 197)))

def body8_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(205, 201)]

def body8_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 209 Flapjack.WordStore.heapLength

def body8_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 213 209 (Flapjack.WordRegImm.imm 1#64)))

def body8_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 217 213

def body8_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 221 (Flapjack.WordLangAddr.addr 217 18446744073709551464#64))

def body8_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 221), (4, 165), (231, 137), (235, 141), (239, 145), (243, 149), (247, 153), (251, 205), (255, 161), (259, 165),
    (263, 169), (267, 193), (271, 173)]

def body8_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(277, 231), (281, 235), (285, 239), (289, 243), (293, 247), (297, 251), (301, 255), (305, 259), (309, 263),
    (313, 267), (317, 271)]

def body8_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (277, 231), (281, 235), (285, 239), (289, 243), (293, 247), (297, 251), (301, 255), (305, 259), (309, 263),
    (313, 267), (317, 271)]

def body8_21 : WordLangProgHOL (BitVec 64) :=
.seq body8_20 body8_7

def body8_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))))),
  Flapjack.Spt.ln)), body8_19, 336, 4)) (some 89) ([2, 4]) (some (2, body8_21, 336, 5))

def body8_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 337 Flapjack.WordStore.heapLength

def body8_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 341 337 (Flapjack.WordRegImm.imm 1#64)))

def body8_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 345 341

def body8_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 349 (Flapjack.WordLangAddr.addr 345 18446744073709551464#64))

def body8_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 353 349 (Flapjack.WordRegImm.imm 8#64)))

def body8_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 353), (4, 285), (363, 277), (367, 281), (371, 285), (375, 289), (379, 293), (383, 297), (387, 301), (391, 305),
    (395, 309), (399, 313), (403, 317)]

def body8_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(409, 363), (413, 367), (417, 371), (421, 375), (425, 379), (429, 383), (433, 387), (437, 391), (441, 395),
    (445, 399), (449, 403)]

def body8_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (409, 363), (413, 367), (417, 371), (421, 375), (425, 379), (429, 383), (433, 387), (437, 391), (441, 395),
    (445, 399), (449, 403)]

def body8_31 : WordLangProgHOL (BitVec 64) :=
.seq body8_30 body8_7

def body8_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body8_29, 336, 6)) (some 89) ([2, 4]) (some (2, body8_31, 336, 7))

def body8_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 469 Flapjack.WordStore.heapLength

def body8_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 473 469 (Flapjack.WordRegImm.imm 1#64)))

def body8_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 477 473

def body8_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 481 (Flapjack.WordLangAddr.addr 477 18446744073709551464#64))

def body8_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 485 481 (Flapjack.WordRegImm.imm 16#64)))

def body8_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 485), (4, 441), (495, 409), (499, 413), (503, 417), (507, 421), (511, 425), (515, 429), (519, 433), (523, 437),
    (527, 441), (531, 445), (535, 449)]

def body8_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(541, 495), (545, 499), (549, 503), (553, 507), (557, 511), (561, 515), (565, 519), (569, 523), (573, 527),
    (577, 531), (581, 535)]

def body8_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (541, 495), (545, 499), (549, 503), (553, 507), (557, 511), (561, 515), (565, 519), (569, 523), (573, 527),
    (577, 531), (581, 535)]

def body8_41 : WordLangProgHOL (BitVec 64) :=
.seq body8_40 body8_7

def body8_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))))),
  Flapjack.Spt.ln)), body8_39, 336, 8)) (some 89) ([2, 4]) (some (2, body8_41, 336, 9))

def body8_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 601 Flapjack.WordStore.heapLength

def body8_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 605 601 (Flapjack.WordRegImm.imm 1#64)))

def body8_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 609 605

def body8_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 613 (Flapjack.WordLangAddr.addr 609 18446744073709551464#64))

def body8_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 617 613 (Flapjack.WordRegImm.imm 24#64)))

def body8_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 617), (4, 553), (627, 541), (631, 545), (635, 549), (639, 553), (643, 557), (647, 561), (651, 565), (655, 569),
    (659, 573), (663, 577), (667, 581)]

def body8_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(673, 627), (677, 631), (681, 635), (685, 639), (689, 643), (693, 647), (697, 651), (701, 655), (705, 659),
    (709, 663), (713, 667)]

def body8_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (673, 627), (677, 631), (681, 635), (685, 639), (689, 643), (693, 647), (697, 651), (701, 655), (705, 659),
    (709, 663), (713, 667)]

def body8_51 : WordLangProgHOL (BitVec 64) :=
.seq body8_50 body8_7

def body8_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body8_49, 336, 10)) (some 89) ([2, 4]) (some (2, body8_51, 336, 11))

def body8_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 733 0#64)

def body8_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(737, 673), (741, 733), (745, 677), (749, 681), (753, 685), (757, 689), (761, 693), (765, 697), (769, 701),
    (773, 705), (777, 709), (781, 713)]

def body8_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(785, 741)]

def body8_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 789 32#64)

def body8_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(801, 785)]

def body8_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 805 Flapjack.WordStore.heapLength

def body8_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 809 805 (Flapjack.WordRegImm.imm 1#64)))

def body8_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 813 809

def body8_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 817 (Flapjack.WordLangAddr.addr 813 18446744073709551464#64))

def body8_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 821 801 (Flapjack.WordRegImm.reg 817)))

def body8_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 825 (Flapjack.WordLangAddr.addr 821 0#64))

def body8_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(829, 825)]

def body8_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 833 0#64)

def body8_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(741, 801)]

def body8_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body8_68 : WordLangProgHOL (BitVec 64) :=
.seq body8_66 body8_67

def body8_69 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_68

def body8_70 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 829 (Flapjack.WordRegImm.reg 833) body8_69 body8_10

def body8_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(861, 801)]

def body8_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 865 861 (Flapjack.WordRegImm.imm 1#64)))

def body8_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(741, 865)]

def body8_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body8_75 : WordLangProgHOL (BitVec 64) :=
.seq body8_73 body8_74

def body8_76 : WordLangProgHOL (BitVec 64) :=
.seq body8_72 body8_75

def body8_77 : WordLangProgHOL (BitVec 64) :=
.seq body8_71 body8_76

def body8_78 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_77

def body8_79 : WordLangProgHOL (BitVec 64) :=
.seq body8_70 body8_78

def body8_80 : WordLangProgHOL (BitVec 64) :=
.seq body8_65 body8_79

def body8_81 : WordLangProgHOL (BitVec 64) :=
.seq body8_64 body8_80

def body8_82 : WordLangProgHOL (BitVec 64) :=
.seq body8_63 body8_81

def body8_83 : WordLangProgHOL (BitVec 64) :=
.seq body8_62 body8_82

def body8_84 : WordLangProgHOL (BitVec 64) :=
.seq body8_61 body8_83

def body8_85 : WordLangProgHOL (BitVec 64) :=
.seq body8_60 body8_84

def body8_86 : WordLangProgHOL (BitVec 64) :=
.seq body8_59 body8_85

def body8_87 : WordLangProgHOL (BitVec 64) :=
.seq body8_58 body8_86

def body8_88 : WordLangProgHOL (BitVec 64) :=
.seq body8_57 body8_87

def body8_89 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_88

def body8_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(741, 785)]

def body8_91 : WordLangProgHOL (BitVec 64) :=
.seq body8_90 body8_67

def body8_92 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_91

def body8_93 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 785 (Flapjack.WordRegImm.reg 789) body8_89 body8_92

def body8_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(741, 893)]

def body8_95 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_94

def body8_96 : WordLangProgHOL (BitVec 64) :=
.seq body8_93 body8_95

def body8_97 : WordLangProgHOL (BitVec 64) :=
.seq body8_56 body8_96

def body8_98 : WordLangProgHOL (BitVec 64) :=
.seq body8_55 body8_97

def body8_99 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)) body8_98 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln))

def body8_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(917, 745), (913, 761)]

def body8_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 921 913 (Flapjack.WordRegImm.reg 917)))

def body8_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(925, 741)]

def body8_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 929 Flapjack.WordStore.heapLength

def body8_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 933 929 (Flapjack.WordRegImm.imm 1#64)))

def body8_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 937 933

def body8_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 941 (Flapjack.WordLangAddr.addr 937 18446744073709551464#64))

def body8_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 945 925 (Flapjack.WordRegImm.reg 941)))

def body8_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 949 32#64)

def body8_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(953, 925)]

def body8_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 957 949 (Flapjack.WordRegImm.reg 953)))

def body8_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 921), (4, 945), (6, 957), (963, 737), (967, 917), (971, 757), (975, 913), (979, 781)]

def body8_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1017, 2), (985, 963), (989, 967), (993, 971), (997, 975), (1001, 979)]

def body8_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (985, 963), (989, 967), (993, 971), (997, 975), (1001, 979)]

def body8_114 : WordLangProgHOL (BitVec 64) :=
.seq body8_113 body8_7

def body8_115 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body8_112, 336, 12)) (some 176) ([2, 4, 6]) (some (2, body8_114, 336, 13))

def body8_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1025, 997), (1021, 1017)]

def body8_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1029 1021 (Flapjack.WordRegImm.reg 1025)))

def body8_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1041, 989), (1037, 1029)]

def body8_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1045 1037 (Flapjack.WordRegImm.reg 1041)))

def body8_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1049, 993)]

def body8_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1057 32#64)

def body8_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1045), (4, 1049), (6, 1057), (1063, 985), (1067, 1041), (1071, 1037), (1075, 1001)]

def body8_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1105, 2), (1081, 1063), (1085, 1067), (1089, 1071), (1093, 1075)]

def body8_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (1081, 1063), (1085, 1067), (1089, 1071), (1093, 1075)]

def body8_125 : WordLangProgHOL (BitVec 64) :=
.seq body8_124 body8_7

def body8_126 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body8_123, 336, 14)) (some 176) ([2, 4, 6]) (some (2, body8_125, 336, 15))

def body8_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1117, 1089), (1113, 1105)]

def body8_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1121 1113 (Flapjack.WordRegImm.reg 1117)))

def body8_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1133, 1085), (1129, 1121)]

def body8_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1137 1129 (Flapjack.WordRegImm.reg 1133)))

def body8_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1141, 1093)]

def body8_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1149 32#64)

def body8_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1137), (4, 1141), (6, 1149), (1155, 1081), (1159, 1133), (1163, 1129)]

def body8_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1193, 2), (1169, 1155), (1173, 1159), (1177, 1163)]

def body8_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (1169, 1155), (1173, 1159), (1177, 1163)]

def body8_136 : WordLangProgHOL (BitVec 64) :=
.seq body8_135 body8_7

def body8_137 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body8_134, 336, 16)) (some 176) ([2, 4, 6]) (some (2, body8_136, 336, 17))

def body8_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1201, 1177), (1197, 1193)]

def body8_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1205 1197 (Flapjack.WordRegImm.reg 1201)))

def body8_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1213, 1173), (1209, 1205)]

def body8_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1217 248#64)

def body8_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 1217 (Flapjack.WordLangAddr.addr 1213 0#64))

def body8_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1221, 1213)]

def body8_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1225 1221 (Flapjack.WordRegImm.imm 1#64)))

def body8_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1229, 1209)]

def body8_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1233 1229 (Flapjack.WordRegImm.imm 18446744073709551614#64)))

def body8_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 1233 (Flapjack.WordLangAddr.addr 1225 0#64))

def body8_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 1229)]

def body8_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 1169 [2]

def body8_150 : WordLangProgHOL (BitVec 64) :=
.seq body8_148 body8_149

def body8_151 : WordLangProgHOL (BitVec 64) :=
.seq body8_147 body8_150

def body8_152 : WordLangProgHOL (BitVec 64) :=
.seq body8_146 body8_151

def body8_153 : WordLangProgHOL (BitVec 64) :=
.seq body8_145 body8_152

def body8_154 : WordLangProgHOL (BitVec 64) :=
.seq body8_144 body8_153

def body8_155 : WordLangProgHOL (BitVec 64) :=
.seq body8_143 body8_154

def body8_156 : WordLangProgHOL (BitVec 64) :=
.seq body8_142 body8_155

def body8_157 : WordLangProgHOL (BitVec 64) :=
.seq body8_141 body8_156

def body8_158 : WordLangProgHOL (BitVec 64) :=
.seq body8_140 body8_157

def body8_159 : WordLangProgHOL (BitVec 64) :=
.seq body8_139 body8_158

def body8_160 : WordLangProgHOL (BitVec 64) :=
.seq body8_138 body8_159

def body8_161 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_160

def body8_162 : WordLangProgHOL (BitVec 64) :=
.seq body8_137 body8_161

def body8_163 : WordLangProgHOL (BitVec 64) :=
.seq body8_133 body8_162

def body8_164 : WordLangProgHOL (BitVec 64) :=
.seq body8_132 body8_163

def body8_165 : WordLangProgHOL (BitVec 64) :=
.seq body8_131 body8_164

def body8_166 : WordLangProgHOL (BitVec 64) :=
.seq body8_130 body8_165

def body8_167 : WordLangProgHOL (BitVec 64) :=
.seq body8_129 body8_166

def body8_168 : WordLangProgHOL (BitVec 64) :=
.seq body8_128 body8_167

def body8_169 : WordLangProgHOL (BitVec 64) :=
.seq body8_127 body8_168

def body8_170 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_169

def body8_171 : WordLangProgHOL (BitVec 64) :=
.seq body8_126 body8_170

def body8_172 : WordLangProgHOL (BitVec 64) :=
.seq body8_122 body8_171

def body8_173 : WordLangProgHOL (BitVec 64) :=
.seq body8_121 body8_172

def body8_174 : WordLangProgHOL (BitVec 64) :=
.seq body8_120 body8_173

def body8_175 : WordLangProgHOL (BitVec 64) :=
.seq body8_119 body8_174

def body8_176 : WordLangProgHOL (BitVec 64) :=
.seq body8_118 body8_175

def body8_177 : WordLangProgHOL (BitVec 64) :=
.seq body8_117 body8_176

def body8_178 : WordLangProgHOL (BitVec 64) :=
.seq body8_116 body8_177

def body8_179 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_178

def body8_180 : WordLangProgHOL (BitVec 64) :=
.seq body8_115 body8_179

def body8_181 : WordLangProgHOL (BitVec 64) :=
.seq body8_111 body8_180

def body8_182 : WordLangProgHOL (BitVec 64) :=
.seq body8_110 body8_181

def body8_183 : WordLangProgHOL (BitVec 64) :=
.seq body8_109 body8_182

def body8_184 : WordLangProgHOL (BitVec 64) :=
.seq body8_108 body8_183

def body8_185 : WordLangProgHOL (BitVec 64) :=
.seq body8_107 body8_184

def body8_186 : WordLangProgHOL (BitVec 64) :=
.seq body8_106 body8_185

def body8_187 : WordLangProgHOL (BitVec 64) :=
.seq body8_105 body8_186

def body8_188 : WordLangProgHOL (BitVec 64) :=
.seq body8_104 body8_187

def body8_189 : WordLangProgHOL (BitVec 64) :=
.seq body8_103 body8_188

def body8_190 : WordLangProgHOL (BitVec 64) :=
.seq body8_102 body8_189

def body8_191 : WordLangProgHOL (BitVec 64) :=
.seq body8_101 body8_190

def body8_192 : WordLangProgHOL (BitVec 64) :=
.seq body8_100 body8_191

def body8_193 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_192

def body8_194 : WordLangProgHOL (BitVec 64) :=
.seq body8_99 body8_193

def body8_195 : WordLangProgHOL (BitVec 64) :=
.seq body8_54 body8_194

def body8_196 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_195

def body8_197 : WordLangProgHOL (BitVec 64) :=
.seq body8_53 body8_196

def body8_198 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_197

def body8_199 : WordLangProgHOL (BitVec 64) :=
.seq body8_52 body8_198

def body8_200 : WordLangProgHOL (BitVec 64) :=
.seq body8_48 body8_199

def body8_201 : WordLangProgHOL (BitVec 64) :=
.seq body8_47 body8_200

def body8_202 : WordLangProgHOL (BitVec 64) :=
.seq body8_46 body8_201

def body8_203 : WordLangProgHOL (BitVec 64) :=
.seq body8_45 body8_202

def body8_204 : WordLangProgHOL (BitVec 64) :=
.seq body8_44 body8_203

def body8_205 : WordLangProgHOL (BitVec 64) :=
.seq body8_43 body8_204

def body8_206 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_205

def body8_207 : WordLangProgHOL (BitVec 64) :=
.seq body8_42 body8_206

def body8_208 : WordLangProgHOL (BitVec 64) :=
.seq body8_38 body8_207

def body8_209 : WordLangProgHOL (BitVec 64) :=
.seq body8_37 body8_208

def body8_210 : WordLangProgHOL (BitVec 64) :=
.seq body8_36 body8_209

def body8_211 : WordLangProgHOL (BitVec 64) :=
.seq body8_35 body8_210

def body8_212 : WordLangProgHOL (BitVec 64) :=
.seq body8_34 body8_211

def body8_213 : WordLangProgHOL (BitVec 64) :=
.seq body8_33 body8_212

def body8_214 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_213

def body8_215 : WordLangProgHOL (BitVec 64) :=
.seq body8_32 body8_214

def body8_216 : WordLangProgHOL (BitVec 64) :=
.seq body8_28 body8_215

def body8_217 : WordLangProgHOL (BitVec 64) :=
.seq body8_27 body8_216

def body8_218 : WordLangProgHOL (BitVec 64) :=
.seq body8_26 body8_217

def body8_219 : WordLangProgHOL (BitVec 64) :=
.seq body8_25 body8_218

def body8_220 : WordLangProgHOL (BitVec 64) :=
.seq body8_24 body8_219

def body8_221 : WordLangProgHOL (BitVec 64) :=
.seq body8_23 body8_220

def body8_222 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_221

def body8_223 : WordLangProgHOL (BitVec 64) :=
.seq body8_22 body8_222

def body8_224 : WordLangProgHOL (BitVec 64) :=
.seq body8_18 body8_223

def body8_225 : WordLangProgHOL (BitVec 64) :=
.seq body8_17 body8_224

def body8_226 : WordLangProgHOL (BitVec 64) :=
.seq body8_16 body8_225

def body8_227 : WordLangProgHOL (BitVec 64) :=
.seq body8_15 body8_226

def body8_228 : WordLangProgHOL (BitVec 64) :=
.seq body8_14 body8_227

def body8_229 : WordLangProgHOL (BitVec 64) :=
.seq body8_13 body8_228

def body8_230 : WordLangProgHOL (BitVec 64) :=
.seq body8_12 body8_229

def body8_231 : WordLangProgHOL (BitVec 64) :=
.seq body8_11 body8_230

def body8_232 : WordLangProgHOL (BitVec 64) :=
.seq body8_10 body8_231

def body8_233 : WordLangProgHOL (BitVec 64) :=
.seq body8_9 body8_232

def body8_234 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_233

def body8_235 : WordLangProgHOL (BitVec 64) :=
.seq body8_3 body8_234

def body8_236 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_235

def body8_237 : WordLangProgHOL (BitVec 64) :=
.seq body8_1 body8_236

def body8_238 : WordLangProgHOL (BitVec 64) :=
.seq body8_0 body8_237

def pass8 : WordLangProgHOL (BitVec 64) := body8_238
def body10_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (18, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16)]

def body10_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 2#64)

def body10_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def body10_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 16 (Flapjack.WordRegImm.imm 2#64)))

def body10_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 18), (44, 0), (46, 16), (48, 8), (50, 4), (52, 12), (54, 20), (56, 18), (58, 10), (60, 6), (64, 14)]

def body10_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (6, 54), (56, 56), (4, 58), (60, 60), (64, 64)]

def body10_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (6, 54), (56, 56), (4, 58), (60, 60), (64, 64)]

def body10_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body10_8 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_7

def body10_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_5, 336, 2)) (some 177) ([2, 4]) (some (2, body10_8, 336, 3))

def body10_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body10_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def body10_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 6)))

def body10_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(54, 2)]

def body10_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def body10_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def body10_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def body10_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551464#64))

def body10_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 4), (60, 60), (62, 0),
    (64, 64)]

def body10_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (4, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64)]

def body10_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (4, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64)]

def body10_21 : WordLangProgHOL (BitVec 64) :=
.seq body10_20 body10_7

def body10_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_19, 336, 4)) (some 89) ([2, 4]) (some (2, body10_21, 336, 5))

def body10_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def body10_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def body10_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def body10_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551464#64))

def body10_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 8#64)))

def body10_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 4), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62),
    (64, 64)]

def body10_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (4, 60), (62, 62), (64, 64)]

def body10_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (4, 60), (62, 62), (64, 64)]

def body10_31 : WordLangProgHOL (BitVec 64) :=
.seq body10_30 body10_7

def body10_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_29, 336, 6)) (some 89) ([2, 4]) (some (2, body10_31, 336, 7))

def body10_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 16#64)))

def body10_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 4), (62, 62),
    (64, 64)]

def body10_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (4, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64)]

def body10_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (4, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64)]

def body10_37 : WordLangProgHOL (BitVec 64) :=
.seq body10_36 body10_7

def body10_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_35, 336, 8)) (some 89) ([2, 4]) (some (2, body10_37, 336, 9))

def body10_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 24#64)))

def body10_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 4), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62),
    (64, 64)]

def body10_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (8, 46), (10, 48), (16, 50), (48, 52), (0, 54), (4, 56), (18, 58), (12, 60), (14, 62), (52, 64)]

def body10_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (8, 46), (10, 48), (16, 50), (48, 52), (0, 54), (4, 56), (18, 58), (12, 60), (14, 62), (52, 64)]

def body10_43 : WordLangProgHOL (BitVec 64) :=
.seq body10_42 body10_7

def body10_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_41, 336, 10)) (some 89) ([2, 4]) (some (2, body10_43, 336, 11))

def body10_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def body10_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (6, 6), (8, 8), (10, 10), (16, 16), (48, 48), (0, 0), (4, 4), (18, 18), (12, 12), (14, 14), (52, 52)]

def body10_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def body10_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def body10_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.reg 2)))

def body10_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 2 0#64))

def body10_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def body10_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 0#64)

def body10_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def body10_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def body10_55 : WordLangProgHOL (BitVec 64) :=
.seq body10_53 body10_54

def body10_56 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_55

def body10_57 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 20) body10_56 body10_10

def body10_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 1#64)))

def body10_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def body10_60 : WordLangProgHOL (BitVec 64) :=
.seq body10_53 body10_59

def body10_61 : WordLangProgHOL (BitVec 64) :=
.seq body10_58 body10_60

def body10_62 : WordLangProgHOL (BitVec 64) :=
.seq body10_47 body10_61

def body10_63 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_62

def body10_64 : WordLangProgHOL (BitVec 64) :=
.seq body10_57 body10_63

def body10_65 : WordLangProgHOL (BitVec 64) :=
.seq body10_52 body10_64

def body10_66 : WordLangProgHOL (BitVec 64) :=
.seq body10_51 body10_65

def body10_67 : WordLangProgHOL (BitVec 64) :=
.seq body10_50 body10_66

def body10_68 : WordLangProgHOL (BitVec 64) :=
.seq body10_49 body10_67

def body10_69 : WordLangProgHOL (BitVec 64) :=
.seq body10_17 body10_68

def body10_70 : WordLangProgHOL (BitVec 64) :=
.seq body10_16 body10_69

def body10_71 : WordLangProgHOL (BitVec 64) :=
.seq body10_15 body10_70

def body10_72 : WordLangProgHOL (BitVec 64) :=
.seq body10_14 body10_71

def body10_73 : WordLangProgHOL (BitVec 64) :=
.seq body10_47 body10_72

def body10_74 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_73

def body10_75 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 2) body10_74 body10_56

def body10_76 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_53

def body10_77 : WordLangProgHOL (BitVec 64) :=
.seq body10_75 body10_76

def body10_78 : WordLangProgHOL (BitVec 64) :=
.seq body10_48 body10_77

def body10_79 : WordLangProgHOL (BitVec 64) :=
.seq body10_47 body10_78

def body10_80 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls ()) () (Flapjack.Spt.bs Flapjack.Spt.ln () (Flapjack.Spt.ls ())))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) ()
        (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
      () (Flapjack.Spt.bs Flapjack.Spt.ln () (Flapjack.Spt.bs (Flapjack.Spt.ls ()) () Flapjack.Spt.ln))))
  () Flapjack.Spt.ln) body10_79 (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.ls ())
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
        (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
      (Flapjack.Spt.bs Flapjack.Spt.ln () (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
  () Flapjack.Spt.ln)

def body10_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (0, 0)]

def body10_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 8)))

def body10_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def body10_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def body10_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def body10_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551464#64))

def body10_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 6 (Flapjack.WordRegImm.reg 4)))

def body10_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 32#64)

def body10_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 6 10 (Flapjack.WordRegImm.reg 6)))

def body10_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 8), (48, 48), (50, 0), (52, 52)]

def body10_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46), (4, 48), (8, 50), (50, 52)]

def body10_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48), (8, 50), (50, 52)]

def body10_93 : WordLangProgHOL (BitVec 64) :=
.seq body10_92 body10_7

def body10_94 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_91, 336, 12)) (some 176) ([2, 4, 6]) (some (2, body10_93, 336, 13))

def body10_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6)]

def body10_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.reg 8)))

def body10_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def body10_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.reg 0)))

def body10_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def body10_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def body10_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 8), (50, 50)]

def body10_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46), (8, 48), (4, 50)]

def body10_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (8, 48), (4, 50)]

def body10_104 : WordLangProgHOL (BitVec 64) :=
.seq body10_103 body10_7

def body10_105 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_102, 336, 14)) (some 176) ([2, 4, 6]) (some (2, body10_104, 336, 15))

def body10_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 8)]

def body10_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (8, 44), (0, 46), (6, 48)]

def body10_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (0, 46), (6, 48)]

def body10_109 : WordLangProgHOL (BitVec 64) :=
.seq body10_108 body10_7

def body10_110 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_107, 336, 16)) (some 176) ([2, 4, 6]) (some (2, body10_109, 336, 17))

def body10_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def body10_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 6)))

def body10_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 2)]

def body10_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 248#64)

def body10_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 4 (Flapjack.WordLangAddr.addr 0 0#64))

def body10_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def body10_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 1#64)))

def body10_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 2 (Flapjack.WordRegImm.imm 18446744073709551614#64)))

def body10_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 0 (Flapjack.WordLangAddr.addr 4 0#64))

def body10_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def body10_121 : WordLangProgHOL (BitVec 64) :=
.seq body10_51 body10_120

def body10_122 : WordLangProgHOL (BitVec 64) :=
.seq body10_119 body10_121

def body10_123 : WordLangProgHOL (BitVec 64) :=
.seq body10_118 body10_122

def body10_124 : WordLangProgHOL (BitVec 64) :=
.seq body10_51 body10_123

def body10_125 : WordLangProgHOL (BitVec 64) :=
.seq body10_117 body10_124

def body10_126 : WordLangProgHOL (BitVec 64) :=
.seq body10_116 body10_125

def body10_127 : WordLangProgHOL (BitVec 64) :=
.seq body10_115 body10_126

def body10_128 : WordLangProgHOL (BitVec 64) :=
.seq body10_114 body10_127

def body10_129 : WordLangProgHOL (BitVec 64) :=
.seq body10_113 body10_128

def body10_130 : WordLangProgHOL (BitVec 64) :=
.seq body10_112 body10_129

def body10_131 : WordLangProgHOL (BitVec 64) :=
.seq body10_111 body10_130

def body10_132 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_131

def body10_133 : WordLangProgHOL (BitVec 64) :=
.seq body10_110 body10_132

def body10_134 : WordLangProgHOL (BitVec 64) :=
.seq body10_106 body10_133

def body10_135 : WordLangProgHOL (BitVec 64) :=
.seq body10_100 body10_134

def body10_136 : WordLangProgHOL (BitVec 64) :=
.seq body10_99 body10_135

def body10_137 : WordLangProgHOL (BitVec 64) :=
.seq body10_98 body10_136

def body10_138 : WordLangProgHOL (BitVec 64) :=
.seq body10_97 body10_137

def body10_139 : WordLangProgHOL (BitVec 64) :=
.seq body10_96 body10_138

def body10_140 : WordLangProgHOL (BitVec 64) :=
.seq body10_95 body10_139

def body10_141 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_140

def body10_142 : WordLangProgHOL (BitVec 64) :=
.seq body10_105 body10_141

def body10_143 : WordLangProgHOL (BitVec 64) :=
.seq body10_101 body10_142

def body10_144 : WordLangProgHOL (BitVec 64) :=
.seq body10_100 body10_143

def body10_145 : WordLangProgHOL (BitVec 64) :=
.seq body10_99 body10_144

def body10_146 : WordLangProgHOL (BitVec 64) :=
.seq body10_98 body10_145

def body10_147 : WordLangProgHOL (BitVec 64) :=
.seq body10_97 body10_146

def body10_148 : WordLangProgHOL (BitVec 64) :=
.seq body10_96 body10_147

def body10_149 : WordLangProgHOL (BitVec 64) :=
.seq body10_95 body10_148

def body10_150 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_149

def body10_151 : WordLangProgHOL (BitVec 64) :=
.seq body10_94 body10_150

def body10_152 : WordLangProgHOL (BitVec 64) :=
.seq body10_90 body10_151

def body10_153 : WordLangProgHOL (BitVec 64) :=
.seq body10_89 body10_152

def body10_154 : WordLangProgHOL (BitVec 64) :=
.seq body10_47 body10_153

def body10_155 : WordLangProgHOL (BitVec 64) :=
.seq body10_88 body10_154

def body10_156 : WordLangProgHOL (BitVec 64) :=
.seq body10_87 body10_155

def body10_157 : WordLangProgHOL (BitVec 64) :=
.seq body10_86 body10_156

def body10_158 : WordLangProgHOL (BitVec 64) :=
.seq body10_85 body10_157

def body10_159 : WordLangProgHOL (BitVec 64) :=
.seq body10_84 body10_158

def body10_160 : WordLangProgHOL (BitVec 64) :=
.seq body10_83 body10_159

def body10_161 : WordLangProgHOL (BitVec 64) :=
.seq body10_47 body10_160

def body10_162 : WordLangProgHOL (BitVec 64) :=
.seq body10_82 body10_161

def body10_163 : WordLangProgHOL (BitVec 64) :=
.seq body10_81 body10_162

def body10_164 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_163

def body10_165 : WordLangProgHOL (BitVec 64) :=
.seq body10_80 body10_164

def body10_166 : WordLangProgHOL (BitVec 64) :=
.seq body10_46 body10_165

def body10_167 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_166

def body10_168 : WordLangProgHOL (BitVec 64) :=
.seq body10_45 body10_167

def body10_169 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_168

def body10_170 : WordLangProgHOL (BitVec 64) :=
.seq body10_44 body10_169

def body10_171 : WordLangProgHOL (BitVec 64) :=
.seq body10_40 body10_170

def body10_172 : WordLangProgHOL (BitVec 64) :=
.seq body10_39 body10_171

def body10_173 : WordLangProgHOL (BitVec 64) :=
.seq body10_26 body10_172

def body10_174 : WordLangProgHOL (BitVec 64) :=
.seq body10_25 body10_173

def body10_175 : WordLangProgHOL (BitVec 64) :=
.seq body10_24 body10_174

def body10_176 : WordLangProgHOL (BitVec 64) :=
.seq body10_23 body10_175

def body10_177 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_176

def body10_178 : WordLangProgHOL (BitVec 64) :=
.seq body10_38 body10_177

def body10_179 : WordLangProgHOL (BitVec 64) :=
.seq body10_34 body10_178

def body10_180 : WordLangProgHOL (BitVec 64) :=
.seq body10_33 body10_179

def body10_181 : WordLangProgHOL (BitVec 64) :=
.seq body10_26 body10_180

def body10_182 : WordLangProgHOL (BitVec 64) :=
.seq body10_25 body10_181

def body10_183 : WordLangProgHOL (BitVec 64) :=
.seq body10_24 body10_182

def body10_184 : WordLangProgHOL (BitVec 64) :=
.seq body10_23 body10_183

def body10_185 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_184

def body10_186 : WordLangProgHOL (BitVec 64) :=
.seq body10_32 body10_185

def body10_187 : WordLangProgHOL (BitVec 64) :=
.seq body10_28 body10_186

def body10_188 : WordLangProgHOL (BitVec 64) :=
.seq body10_27 body10_187

def body10_189 : WordLangProgHOL (BitVec 64) :=
.seq body10_26 body10_188

def body10_190 : WordLangProgHOL (BitVec 64) :=
.seq body10_25 body10_189

def body10_191 : WordLangProgHOL (BitVec 64) :=
.seq body10_24 body10_190

def body10_192 : WordLangProgHOL (BitVec 64) :=
.seq body10_23 body10_191

def body10_193 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_192

def body10_194 : WordLangProgHOL (BitVec 64) :=
.seq body10_22 body10_193

def body10_195 : WordLangProgHOL (BitVec 64) :=
.seq body10_18 body10_194

def body10_196 : WordLangProgHOL (BitVec 64) :=
.seq body10_17 body10_195

def body10_197 : WordLangProgHOL (BitVec 64) :=
.seq body10_16 body10_196

def body10_198 : WordLangProgHOL (BitVec 64) :=
.seq body10_15 body10_197

def body10_199 : WordLangProgHOL (BitVec 64) :=
.seq body10_14 body10_198

def body10_200 : WordLangProgHOL (BitVec 64) :=
.seq body10_13 body10_199

def body10_201 : WordLangProgHOL (BitVec 64) :=
.seq body10_12 body10_200

def body10_202 : WordLangProgHOL (BitVec 64) :=
.seq body10_11 body10_201

def body10_203 : WordLangProgHOL (BitVec 64) :=
.seq body10_10 body10_202

def body10_204 : WordLangProgHOL (BitVec 64) :=
.seq body10_9 body10_203

def body10_205 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_204

def body10_206 : WordLangProgHOL (BitVec 64) :=
.seq body10_3 body10_205

def body10_207 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_206

def body10_208 : WordLangProgHOL (BitVec 64) :=
.seq body10_1 body10_207

def body10_209 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_208

def pass10 : WordLangProgHOL (BitVec 64) := body10_209
end InitECandidate.Proofs.SmallStages.Compact336
