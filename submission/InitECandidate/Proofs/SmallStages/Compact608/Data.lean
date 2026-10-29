import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source608
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact608
def oracle : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)) 1
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 26))))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))))
                1
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)) 22
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
            0
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 28
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              1
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 28 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 1))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 26
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                1 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 28)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 30 (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 1)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                1 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) 0 Flapjack.Spt.ln))
              3
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 3
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 26 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 22))))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 2
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 23
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
              1
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 31 (Flapjack.Spt.ls 24))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 22
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                4
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 26
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
              2
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 27 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 23))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 23)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 2 (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 1 (Flapjack.Spt.ls 1)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 1))))
                1
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 25)) 28
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 22)))))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1 (Flapjack.Spt.ls 0)) 1
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 24)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) 22 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 23)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 24)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.ls 27)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 23)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 22))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.ls 26)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 27)) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 29)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))))))))
def body2_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 0), (33, 2)]

def body2_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 37 1024#64)

def body2_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(41, 33)]

def body2_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 45 (Flapjack.WordLangAddr.addr 41 128#64))

def body2_4 : WordLangProgHOL (BitVec 64) :=
.seq body2_2 body2_3

def body2_5 : WordLangProgHOL (BitVec 64) :=
.seq body2_1 body2_4

def body2_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 49 1#64)

def body2_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body2_8 : WordLangProgHOL (BitVec 64) :=
.seq body2_6 body2_7

def body2_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 53 1#64)

def body2_10 : WordLangProgHOL (BitVec 64) :=
.seq body2_8 body2_9

def body2_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 57 7#64)

def body2_12 : WordLangProgHOL (BitVec 64) :=
.seq body2_10 body2_11

def body2_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(61, 57)]

def body2_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 61)

def body2_15 : WordLangProgHOL (BitVec 64) :=
.seq body2_13 body2_14

def body2_16 : WordLangProgHOL (BitVec 64) :=
.seq body2_12 body2_15

def body2_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 8#64)

def body2_18 : WordLangProgHOL (BitVec 64) :=
.seq body2_16 body2_17

def body2_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 65)]

def body2_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body2_21 : WordLangProgHOL (BitVec 64) :=
.seq body2_19 body2_20

def body2_22 : WordLangProgHOL (BitVec 64) :=
.seq body2_18 body2_21

def body2_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(73, 61), (69, 49)]

def body2_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body2_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(77, 65)]

def body2_26 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_25

def body2_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(81, 53)]

def body2_28 : WordLangProgHOL (BitVec 64) :=
.seq body2_26 body2_27

def body2_29 : WordLangProgHOL (BitVec 64) :=
.seq body2_23 body2_28

def body2_30 : WordLangProgHOL (BitVec 64) :=
.seq body2_22 body2_29

def body2_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(73, 41), (69, 37)]

def body2_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 77 0#64)

def body2_33 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_32

def body2_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 81 0#64)

def body2_35 : WordLangProgHOL (BitVec 64) :=
.seq body2_33 body2_34

def body2_36 : WordLangProgHOL (BitVec 64) :=
.seq body2_31 body2_35

def body2_37 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_36

def body2_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 37 (Flapjack.WordRegImm.reg 45) body2_30 body2_37

def body2_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 85 0#64)

def body2_40 : WordLangProgHOL (BitVec 64) :=
.seq body2_39 body2_7

def body2_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 89 0#64)

def body2_42 : WordLangProgHOL (BitVec 64) :=
.seq body2_40 body2_41

def body2_43 : WordLangProgHOL (BitVec 64) :=
.seq body2_38 body2_42

def body2_44 : WordLangProgHOL (BitVec 64) :=
.seq body2_5 body2_43

def body2_45 : WordLangProgHOL (BitVec 64) :=
.seq body2_44 body2_7

def body2_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 93 Flapjack.WordStore.heapLength

def body2_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 97 93 (Flapjack.WordRegImm.imm 1#64)))

def body2_48 : WordLangProgHOL (BitVec 64) :=
.seq body2_46 body2_47

def body2_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 101 97

def body2_50 : WordLangProgHOL (BitVec 64) :=
.seq body2_48 body2_49

def body2_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 105 (Flapjack.WordLangAddr.addr 101 18446744073709551360#64))

def body2_52 : WordLangProgHOL (BitVec 64) :=
.seq body2_50 body2_51

def body2_53 : WordLangProgHOL (BitVec 64) :=
.seq body2_45 body2_52

def body2_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 109 Flapjack.WordStore.heapLength

def body2_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 113 109 (Flapjack.WordRegImm.imm 1#64)))

def body2_56 : WordLangProgHOL (BitVec 64) :=
.seq body2_54 body2_55

def body2_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 117 113

def body2_58 : WordLangProgHOL (BitVec 64) :=
.seq body2_56 body2_57

def body2_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 121 (Flapjack.WordLangAddr.addr 117 18446744073709551328#64))

def body2_60 : WordLangProgHOL (BitVec 64) :=
.seq body2_58 body2_59

def body2_61 : WordLangProgHOL (BitVec 64) :=
.seq body2_53 body2_60

def body2_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(125, 41)]

def body2_63 : WordLangProgHOL (BitVec 64) :=
.seq body2_61 body2_62

def body2_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 129 0#64)

def body2_65 : WordLangProgHOL (BitVec 64) :=
.seq body2_63 body2_64

def body2_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 0#64)

def body2_67 : WordLangProgHOL (BitVec 64) :=
.seq body2_65 body2_66

def body2_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(139, 29), (143, 121), (147, 125), (151, 105)]

def body2_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 125), (4, 133)]

def body2_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 139), (161, 143), (165, 147), (169, 151)]

def body2_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(173, 2)]

def body2_72 : WordLangProgHOL (BitVec 64) :=
.seq body2_71 body2_24

def body2_73 : WordLangProgHOL (BitVec 64) :=
.seq body2_70 body2_72

def body2_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 []

def body2_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(181, 173)]

def body2_76 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_75

def body2_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 185 0#64)

def body2_78 : WordLangProgHOL (BitVec 64) :=
.seq body2_76 body2_77

def body2_79 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_78

def body2_80 : WordLangProgHOL (BitVec 64) :=
.seq body2_73 body2_79

def body2_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(177, 2)]

def body2_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 177)]

def body2_83 : WordLangProgHOL (BitVec 64) :=
.seq body2_82 body2_20

def body2_84 : WordLangProgHOL (BitVec 64) :=
.seq body2_81 body2_83

def body2_85 : WordLangProgHOL (BitVec 64) :=
.seq body2_70 body2_84

def body2_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 181 0#64)

def body2_87 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_86

def body2_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(185, 177)]

def body2_89 : WordLangProgHOL (BitVec 64) :=
.seq body2_87 body2_88

def body2_90 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_89

def body2_91 : WordLangProgHOL (BitVec 64) :=
.seq body2_85 body2_90

def body2_92 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body2_80, 608, 2)) (some 598) ([2, 4]) (some (2, body2_91, 608, 3))

def body2_93 : WordLangProgHOL (BitVec 64) :=
.seq body2_69 body2_92

def body2_94 : WordLangProgHOL (BitVec 64) :=
.seq body2_68 body2_93

def body2_95 : WordLangProgHOL (BitVec 64) :=
.seq body2_67 body2_94

def body2_96 : WordLangProgHOL (BitVec 64) :=
.seq body2_95 body2_7

def body2_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 165)]

def body2_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 193 (Flapjack.WordLangAddr.addr 189 128#64))

def body2_99 : WordLangProgHOL (BitVec 64) :=
.seq body2_97 body2_98

def body2_100 : WordLangProgHOL (BitVec 64) :=
.seq body2_96 body2_99

def body2_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 0#64)

def body2_102 : WordLangProgHOL (BitVec 64) :=
.seq body2_100 body2_101

def body2_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 201 1#64)

def body2_104 : WordLangProgHOL (BitVec 64) :=
.seq body2_103 body2_7

def body2_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 205 1#64)

def body2_106 : WordLangProgHOL (BitVec 64) :=
.seq body2_104 body2_105

def body2_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(211, 157), (215, 161), (219, 189), (223, 169), (227, 181)]

def body2_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(233, 211), (237, 215), (241, 219), (245, 223), (249, 227)]

def body2_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(253, 2)]

def body2_110 : WordLangProgHOL (BitVec 64) :=
.seq body2_109 body2_24

def body2_111 : WordLangProgHOL (BitVec 64) :=
.seq body2_108 body2_110

def body2_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 261 0#64)

def body2_113 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_112

def body2_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(265, 253)]

def body2_115 : WordLangProgHOL (BitVec 64) :=
.seq body2_113 body2_114

def body2_116 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_115

def body2_117 : WordLangProgHOL (BitVec 64) :=
.seq body2_111 body2_116

def body2_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(257, 2)]

def body2_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 257)]

def body2_120 : WordLangProgHOL (BitVec 64) :=
.seq body2_119 body2_20

def body2_121 : WordLangProgHOL (BitVec 64) :=
.seq body2_118 body2_120

def body2_122 : WordLangProgHOL (BitVec 64) :=
.seq body2_108 body2_121

def body2_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(261, 257)]

def body2_124 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_123

def body2_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 265 0#64)

def body2_126 : WordLangProgHOL (BitVec 64) :=
.seq body2_124 body2_125

def body2_127 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_126

def body2_128 : WordLangProgHOL (BitVec 64) :=
.seq body2_122 body2_127

def body2_129 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body2_117, 608, 4)) (some 392) ([]) (some (2, body2_128, 608, 5))

def body2_130 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_129

def body2_131 : WordLangProgHOL (BitVec 64) :=
.seq body2_107 body2_130

def body2_132 : WordLangProgHOL (BitVec 64) :=
.seq body2_106 body2_131

def body2_133 : WordLangProgHOL (BitVec 64) :=
.seq body2_132 body2_7

def body2_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(269, 241)]

def body2_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 273 (Flapjack.WordLangAddr.addr 269 48#64))

def body2_136 : WordLangProgHOL (BitVec 64) :=
.seq body2_134 body2_135

def body2_137 : WordLangProgHOL (BitVec 64) :=
.seq body2_133 body2_136

def body2_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(279, 233), (283, 237), (287, 269), (291, 265), (295, 245), (299, 249), (303, 273)]

def body2_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(309, 279), (313, 283), (317, 287), (321, 291), (325, 295), (329, 299), (333, 303)]

def body2_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(337, 2)]

def body2_141 : WordLangProgHOL (BitVec 64) :=
.seq body2_140 body2_24

def body2_142 : WordLangProgHOL (BitVec 64) :=
.seq body2_139 body2_141

def body2_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(997, 309), (993, 313), (989, 317), (985, 321), (981, 325), (977, 329), (973, 333)]

def body2_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1001 0#64)

def body2_145 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_144

def body2_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1005 0#64)

def body2_147 : WordLangProgHOL (BitVec 64) :=
.seq body2_145 body2_146

def body2_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1009, 337)]

def body2_149 : WordLangProgHOL (BitVec 64) :=
.seq body2_147 body2_148

def body2_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1013 0#64)

def body2_151 : WordLangProgHOL (BitVec 64) :=
.seq body2_149 body2_150

def body2_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1017 0#64)

def body2_153 : WordLangProgHOL (BitVec 64) :=
.seq body2_151 body2_152

def body2_154 : WordLangProgHOL (BitVec 64) :=
.seq body2_143 body2_153

def body2_155 : WordLangProgHOL (BitVec 64) :=
.seq body2_142 body2_154

def body2_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(341, 2)]

def body2_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 341)]

def body2_158 : WordLangProgHOL (BitVec 64) :=
.seq body2_157 body2_20

def body2_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(945, 309), (941, 341), (937, 313), (933, 325), (929, 329)]

def body2_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(949, 333)]

def body2_161 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_160

def body2_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 953 0#64)

def body2_163 : WordLangProgHOL (BitVec 64) :=
.seq body2_161 body2_162

def body2_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(957, 321)]

def body2_165 : WordLangProgHOL (BitVec 64) :=
.seq body2_163 body2_164

def body2_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(961, 317)]

def body2_167 : WordLangProgHOL (BitVec 64) :=
.seq body2_165 body2_166

def body2_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 965 0#64)

def body2_169 : WordLangProgHOL (BitVec 64) :=
.seq body2_167 body2_168

def body2_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 969 0#64)

def body2_171 : WordLangProgHOL (BitVec 64) :=
.seq body2_169 body2_170

def body2_172 : WordLangProgHOL (BitVec 64) :=
.seq body2_159 body2_171

def body2_173 : WordLangProgHOL (BitVec 64) :=
.seq body2_158 body2_172

def body2_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 345 (Flapjack.WordStore.temp 0#5)

def body2_175 : WordLangProgHOL (BitVec 64) :=
.seq body2_7 body2_174

def body2_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(349, 345)]

def body2_177 : WordLangProgHOL (BitVec 64) :=
.seq body2_175 body2_176

def body2_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 353 1#64)

def body2_179 : WordLangProgHOL (BitVec 64) :=
.seq body2_177 body2_178

def body2_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 357 1#64)

def body2_181 : WordLangProgHOL (BitVec 64) :=
.seq body2_180 body2_7

def body2_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 361 1#64)

def body2_183 : WordLangProgHOL (BitVec 64) :=
.seq body2_181 body2_182

def body2_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(365, 329)]

def body2_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 369 (Flapjack.WordLangAddr.addr 365 208#64))

def body2_186 : WordLangProgHOL (BitVec 64) :=
.seq body2_184 body2_185

def body2_187 : WordLangProgHOL (BitVec 64) :=
.seq body2_183 body2_186

def body2_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(375, 309), (379, 349), (383, 313), (387, 325), (391, 365)]

def body2_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 369)]

def body2_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(397, 375), (401, 379), (405, 383), (409, 387), (413, 391)]

def body2_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(417, 2)]

def body2_192 : WordLangProgHOL (BitVec 64) :=
.seq body2_191 body2_24

def body2_193 : WordLangProgHOL (BitVec 64) :=
.seq body2_190 body2_192

def body2_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 425 0#64)

def body2_195 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_194

def body2_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(429, 417)]

def body2_197 : WordLangProgHOL (BitVec 64) :=
.seq body2_195 body2_196

def body2_198 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_197

def body2_199 : WordLangProgHOL (BitVec 64) :=
.seq body2_193 body2_198

def body2_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(421, 2)]

def body2_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 421)]

def body2_202 : WordLangProgHOL (BitVec 64) :=
.seq body2_201 body2_20

def body2_203 : WordLangProgHOL (BitVec 64) :=
.seq body2_200 body2_202

def body2_204 : WordLangProgHOL (BitVec 64) :=
.seq body2_190 body2_203

def body2_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(425, 421)]

def body2_206 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_205

def body2_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 429 0#64)

def body2_208 : WordLangProgHOL (BitVec 64) :=
.seq body2_206 body2_207

def body2_209 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_208

def body2_210 : WordLangProgHOL (BitVec 64) :=
.seq body2_204 body2_209

def body2_211 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body2_199, 608, 7)) (some 76) ([2]) (some (2, body2_210, 608, 8))

def body2_212 : WordLangProgHOL (BitVec 64) :=
.seq body2_189 body2_211

def body2_213 : WordLangProgHOL (BitVec 64) :=
.seq body2_188 body2_212

def body2_214 : WordLangProgHOL (BitVec 64) :=
.seq body2_187 body2_213

def body2_215 : WordLangProgHOL (BitVec 64) :=
.seq body2_214 body2_7

def body2_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(433, 413)]

def body2_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 437 (Flapjack.WordLangAddr.addr 433 224#64))

def body2_218 : WordLangProgHOL (BitVec 64) :=
.seq body2_216 body2_217

def body2_219 : WordLangProgHOL (BitVec 64) :=
.seq body2_215 body2_218

def body2_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(443, 397), (447, 401), (451, 405), (455, 409)]

def body2_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 437)]

def body2_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(461, 443), (465, 447), (469, 451), (473, 455)]

def body2_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(477, 2)]

def body2_224 : WordLangProgHOL (BitVec 64) :=
.seq body2_223 body2_24

def body2_225 : WordLangProgHOL (BitVec 64) :=
.seq body2_222 body2_224

def body2_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 485 0#64)

def body2_227 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_226

def body2_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(489, 477)]

def body2_229 : WordLangProgHOL (BitVec 64) :=
.seq body2_227 body2_228

def body2_230 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_229

def body2_231 : WordLangProgHOL (BitVec 64) :=
.seq body2_225 body2_230

def body2_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(481, 2)]

def body2_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 481)]

def body2_234 : WordLangProgHOL (BitVec 64) :=
.seq body2_233 body2_20

def body2_235 : WordLangProgHOL (BitVec 64) :=
.seq body2_232 body2_234

def body2_236 : WordLangProgHOL (BitVec 64) :=
.seq body2_222 body2_235

def body2_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(485, 481)]

def body2_238 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_237

def body2_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 489 0#64)

def body2_240 : WordLangProgHOL (BitVec 64) :=
.seq body2_238 body2_239

def body2_241 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_240

def body2_242 : WordLangProgHOL (BitVec 64) :=
.seq body2_236 body2_241

def body2_243 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body2_231, 608, 9)) (some 73) ([2]) (some (2, body2_242, 608, 10))

def body2_244 : WordLangProgHOL (BitVec 64) :=
.seq body2_221 body2_243

def body2_245 : WordLangProgHOL (BitVec 64) :=
.seq body2_220 body2_244

def body2_246 : WordLangProgHOL (BitVec 64) :=
.seq body2_219 body2_245

def body2_247 : WordLangProgHOL (BitVec 64) :=
.seq body2_246 body2_7

def body2_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 493 Flapjack.WordStore.heapLength

def body2_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 497 493 (Flapjack.WordRegImm.imm 1#64)))

def body2_250 : WordLangProgHOL (BitVec 64) :=
.seq body2_248 body2_249

def body2_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 501 497

def body2_252 : WordLangProgHOL (BitVec 64) :=
.seq body2_250 body2_251

def body2_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 505 501 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def body2_254 : WordLangProgHOL (BitVec 64) :=
.seq body2_252 body2_253

def body2_255 : WordLangProgHOL (BitVec 64) :=
.seq body2_247 body2_254

def body2_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(509, 473)]

def body2_257 : WordLangProgHOL (BitVec 64) :=
.seq body2_255 body2_256

def body2_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(513, 509)]

def body2_259 : WordLangProgHOL (BitVec 64) :=
.seq body2_257 body2_258

def body2_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(517, 505)]

def body2_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 513 (Flapjack.WordLangAddr.addr 517 0#64))

def body2_262 : WordLangProgHOL (BitVec 64) :=
.seq body2_260 body2_261

def body2_263 : WordLangProgHOL (BitVec 64) :=
.seq body2_259 body2_262

def body2_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 521 Flapjack.WordStore.heapLength

def body2_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 525 521 (Flapjack.WordRegImm.imm 1#64)))

def body2_266 : WordLangProgHOL (BitVec 64) :=
.seq body2_264 body2_265

def body2_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 529 525

def body2_268 : WordLangProgHOL (BitVec 64) :=
.seq body2_266 body2_267

def body2_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 533 529 (Flapjack.WordRegImm.imm 18446744073709551328#64)))

def body2_270 : WordLangProgHOL (BitVec 64) :=
.seq body2_268 body2_269

def body2_271 : WordLangProgHOL (BitVec 64) :=
.seq body2_263 body2_270

def body2_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(537, 469)]

def body2_273 : WordLangProgHOL (BitVec 64) :=
.seq body2_271 body2_272

def body2_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(541, 537)]

def body2_275 : WordLangProgHOL (BitVec 64) :=
.seq body2_273 body2_274

def body2_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(545, 533)]

def body2_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 541 (Flapjack.WordLangAddr.addr 545 0#64))

def body2_278 : WordLangProgHOL (BitVec 64) :=
.seq body2_276 body2_277

def body2_279 : WordLangProgHOL (BitVec 64) :=
.seq body2_275 body2_278

def body2_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(549, 465)]

def body2_281 : WordLangProgHOL (BitVec 64) :=
.seq body2_279 body2_280

def body2_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(553, 549)]

def body2_283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 553)

def body2_284 : WordLangProgHOL (BitVec 64) :=
.seq body2_282 body2_283

def body2_285 : WordLangProgHOL (BitVec 64) :=
.seq body2_281 body2_284

def body2_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 557 8#64)

def body2_287 : WordLangProgHOL (BitVec 64) :=
.seq body2_285 body2_286

def body2_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 557)]

def body2_289 : WordLangProgHOL (BitVec 64) :=
.seq body2_288 body2_20

def body2_290 : WordLangProgHOL (BitVec 64) :=
.seq body2_287 body2_289

def body2_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(593, 461), (589, 557), (585, 549), (581, 537), (577, 541), (573, 509), (569, 541)]

def body2_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 597 0#64)

def body2_293 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_292

def body2_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 601 0#64)

def body2_295 : WordLangProgHOL (BitVec 64) :=
.seq body2_293 body2_294

def body2_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 605 0#64)

def body2_297 : WordLangProgHOL (BitVec 64) :=
.seq body2_295 body2_296

def body2_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 609 0#64)

def body2_299 : WordLangProgHOL (BitVec 64) :=
.seq body2_297 body2_298

def body2_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 613 0#64)

def body2_301 : WordLangProgHOL (BitVec 64) :=
.seq body2_299 body2_300

def body2_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(617, 553)]

def body2_303 : WordLangProgHOL (BitVec 64) :=
.seq body2_301 body2_302

def body2_304 : WordLangProgHOL (BitVec 64) :=
.seq body2_291 body2_303

def body2_305 : WordLangProgHOL (BitVec 64) :=
.seq body2_290 body2_304

def body2_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 561 0#64)

def body2_307 : WordLangProgHOL (BitVec 64) :=
.seq body2_306 body2_7

def body2_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 565 0#64)

def body2_309 : WordLangProgHOL (BitVec 64) :=
.seq body2_307 body2_308

def body2_310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(593, 309), (589, 341), (585, 349), (581, 313), (577, 561), (573, 325), (569, 353)]

def body2_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(597, 333)]

def body2_312 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_311

def body2_313 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(601, 329)]

def body2_314 : WordLangProgHOL (BitVec 64) :=
.seq body2_312 body2_313

def body2_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(605, 321)]

def body2_316 : WordLangProgHOL (BitVec 64) :=
.seq body2_314 body2_315

def body2_317 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(609, 317)]

def body2_318 : WordLangProgHOL (BitVec 64) :=
.seq body2_316 body2_317

def body2_319 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(613, 565)]

def body2_320 : WordLangProgHOL (BitVec 64) :=
.seq body2_318 body2_319

def body2_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 617 0#64)

def body2_322 : WordLangProgHOL (BitVec 64) :=
.seq body2_320 body2_321

def body2_323 : WordLangProgHOL (BitVec 64) :=
.seq body2_310 body2_322

def body2_324 : WordLangProgHOL (BitVec 64) :=
.seq body2_309 body2_323

def body2_325 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 349 (Flapjack.WordRegImm.reg 353) body2_305 body2_324

def body2_326 : WordLangProgHOL (BitVec 64) :=
.seq body2_179 body2_325

def body2_327 : WordLangProgHOL (BitVec 64) :=
.seq body2_326 body2_7

def body2_328 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(621, 605)]

def body2_329 : WordLangProgHOL (BitVec 64) :=
.seq body2_327 body2_328

def body2_330 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(627, 593), (631, 585), (635, 581), (639, 609), (643, 573), (647, 601), (651, 597)]

def body2_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 621)]

def body2_332 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(657, 627), (661, 631), (665, 635), (669, 639), (673, 643), (677, 647), (681, 651)]

def body2_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(685, 2)]

def body2_334 : WordLangProgHOL (BitVec 64) :=
.seq body2_333 body2_24

def body2_335 : WordLangProgHOL (BitVec 64) :=
.seq body2_332 body2_334

def body2_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 693 0#64)

def body2_337 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_336

def body2_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(697, 685)]

def body2_339 : WordLangProgHOL (BitVec 64) :=
.seq body2_337 body2_338

def body2_340 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_339

def body2_341 : WordLangProgHOL (BitVec 64) :=
.seq body2_335 body2_340

def body2_342 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(689, 2)]

def body2_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 689)]

def body2_344 : WordLangProgHOL (BitVec 64) :=
.seq body2_343 body2_20

def body2_345 : WordLangProgHOL (BitVec 64) :=
.seq body2_342 body2_344

def body2_346 : WordLangProgHOL (BitVec 64) :=
.seq body2_332 body2_345

def body2_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(693, 689)]

def body2_348 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_347

def body2_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 697 0#64)

def body2_350 : WordLangProgHOL (BitVec 64) :=
.seq body2_348 body2_349

def body2_351 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_350

def body2_352 : WordLangProgHOL (BitVec 64) :=
.seq body2_346 body2_351

def body2_353 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body2_341, 608, 11)) (some 393) ([2]) (some (2, body2_352, 608, 12))

def body2_354 : WordLangProgHOL (BitVec 64) :=
.seq body2_331 body2_353

def body2_355 : WordLangProgHOL (BitVec 64) :=
.seq body2_330 body2_354

def body2_356 : WordLangProgHOL (BitVec 64) :=
.seq body2_329 body2_355

def body2_357 : WordLangProgHOL (BitVec 64) :=
.seq body2_356 body2_7

def body2_358 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(701, 669)]

def body2_359 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 705 701 (Flapjack.WordRegImm.imm 48#64)))

def body2_360 : WordLangProgHOL (BitVec 64) :=
.seq body2_358 body2_359

def body2_361 : WordLangProgHOL (BitVec 64) :=
.seq body2_357 body2_360

def body2_362 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(709, 681)]

def body2_363 : WordLangProgHOL (BitVec 64) :=
.seq body2_361 body2_362

def body2_364 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(713, 709)]

def body2_365 : WordLangProgHOL (BitVec 64) :=
.seq body2_363 body2_364

def body2_366 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(717, 705)]

def body2_367 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 713 (Flapjack.WordLangAddr.addr 717 0#64))

def body2_368 : WordLangProgHOL (BitVec 64) :=
.seq body2_366 body2_367

def body2_369 : WordLangProgHOL (BitVec 64) :=
.seq body2_365 body2_368

def body2_370 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 721 Flapjack.WordStore.heapLength

def body2_371 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 725 721 (Flapjack.WordRegImm.imm 1#64)))

def body2_372 : WordLangProgHOL (BitVec 64) :=
.seq body2_370 body2_371

def body2_373 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 729 725

def body2_374 : WordLangProgHOL (BitVec 64) :=
.seq body2_372 body2_373

def body2_375 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 733 (Flapjack.WordLangAddr.addr 729 18446744073709551360#64))

def body2_376 : WordLangProgHOL (BitVec 64) :=
.seq body2_374 body2_375

def body2_377 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 737 733 (Flapjack.WordRegImm.imm 200#64)))

def body2_378 : WordLangProgHOL (BitVec 64) :=
.seq body2_376 body2_377

def body2_379 : WordLangProgHOL (BitVec 64) :=
.seq body2_369 body2_378

def body2_380 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 741 0#64)

def body2_381 : WordLangProgHOL (BitVec 64) :=
.seq body2_379 body2_380

def body2_382 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(745, 741)]

def body2_383 : WordLangProgHOL (BitVec 64) :=
.seq body2_381 body2_382

def body2_384 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(749, 737)]

def body2_385 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 745 (Flapjack.WordLangAddr.addr 749 0#64))

def body2_386 : WordLangProgHOL (BitVec 64) :=
.seq body2_384 body2_385

def body2_387 : WordLangProgHOL (BitVec 64) :=
.seq body2_383 body2_386

def body2_388 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(755, 657), (759, 661), (763, 665), (767, 673), (771, 677)]

def body2_389 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(777, 755), (781, 759), (785, 763), (789, 767), (793, 771)]

def body2_390 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(797, 2)]

def body2_391 : WordLangProgHOL (BitVec 64) :=
.seq body2_390 body2_24

def body2_392 : WordLangProgHOL (BitVec 64) :=
.seq body2_389 body2_391

def body2_393 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 805 0#64)

def body2_394 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_393

def body2_395 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(809, 797)]

def body2_396 : WordLangProgHOL (BitVec 64) :=
.seq body2_394 body2_395

def body2_397 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_396

def body2_398 : WordLangProgHOL (BitVec 64) :=
.seq body2_392 body2_397

def body2_399 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(801, 2)]

def body2_400 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 801)]

def body2_401 : WordLangProgHOL (BitVec 64) :=
.seq body2_400 body2_20

def body2_402 : WordLangProgHOL (BitVec 64) :=
.seq body2_399 body2_401

def body2_403 : WordLangProgHOL (BitVec 64) :=
.seq body2_389 body2_402

def body2_404 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(805, 801)]

def body2_405 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_404

def body2_406 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 809 0#64)

def body2_407 : WordLangProgHOL (BitVec 64) :=
.seq body2_405 body2_406

def body2_408 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_407

def body2_409 : WordLangProgHOL (BitVec 64) :=
.seq body2_403 body2_408

def body2_410 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))))),
  Flapjack.Spt.ln)), body2_398, 608, 13)) (some 476) ([]) (some (2, body2_409, 608, 14))

def body2_411 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_410

def body2_412 : WordLangProgHOL (BitVec 64) :=
.seq body2_388 body2_411

def body2_413 : WordLangProgHOL (BitVec 64) :=
.seq body2_387 body2_412

def body2_414 : WordLangProgHOL (BitVec 64) :=
.seq body2_413 body2_7

def body2_415 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(813, 781)]

def body2_416 : WordLangProgHOL (BitVec 64) :=
.seq body2_414 body2_415

def body2_417 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(819, 777), (823, 785), (827, 789), (831, 793)]

def body2_418 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 813)]

def body2_419 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(837, 819), (841, 823), (845, 827), (849, 831)]

def body2_420 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(853, 2)]

def body2_421 : WordLangProgHOL (BitVec 64) :=
.seq body2_420 body2_24

def body2_422 : WordLangProgHOL (BitVec 64) :=
.seq body2_419 body2_421

def body2_423 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 861 0#64)

def body2_424 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_423

def body2_425 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(865, 853)]

def body2_426 : WordLangProgHOL (BitVec 64) :=
.seq body2_424 body2_425

def body2_427 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_426

def body2_428 : WordLangProgHOL (BitVec 64) :=
.seq body2_422 body2_427

def body2_429 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(857, 2)]

def body2_430 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 857)]

def body2_431 : WordLangProgHOL (BitVec 64) :=
.seq body2_430 body2_20

def body2_432 : WordLangProgHOL (BitVec 64) :=
.seq body2_429 body2_431

def body2_433 : WordLangProgHOL (BitVec 64) :=
.seq body2_419 body2_432

def body2_434 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(861, 857)]

def body2_435 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_434

def body2_436 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 865 0#64)

def body2_437 : WordLangProgHOL (BitVec 64) :=
.seq body2_435 body2_436

def body2_438 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_437

def body2_439 : WordLangProgHOL (BitVec 64) :=
.seq body2_433 body2_438

def body2_440 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body2_428, 608, 15)) (some 606) ([2]) (some (2, body2_439, 608, 16))

def body2_441 : WordLangProgHOL (BitVec 64) :=
.seq body2_418 body2_440

def body2_442 : WordLangProgHOL (BitVec 64) :=
.seq body2_417 body2_441

def body2_443 : WordLangProgHOL (BitVec 64) :=
.seq body2_416 body2_442

def body2_444 : WordLangProgHOL (BitVec 64) :=
.seq body2_443 body2_7

def body2_445 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 869 Flapjack.WordStore.heapLength

def body2_446 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 873 869 (Flapjack.WordRegImm.imm 1#64)))

def body2_447 : WordLangProgHOL (BitVec 64) :=
.seq body2_445 body2_446

def body2_448 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 877 873

def body2_449 : WordLangProgHOL (BitVec 64) :=
.seq body2_447 body2_448

def body2_450 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 881 877 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def body2_451 : WordLangProgHOL (BitVec 64) :=
.seq body2_449 body2_450

def body2_452 : WordLangProgHOL (BitVec 64) :=
.seq body2_444 body2_451

def body2_453 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(885, 845)]

def body2_454 : WordLangProgHOL (BitVec 64) :=
.seq body2_452 body2_453

def body2_455 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(889, 885)]

def body2_456 : WordLangProgHOL (BitVec 64) :=
.seq body2_454 body2_455

def body2_457 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(893, 881)]

def body2_458 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 889 (Flapjack.WordLangAddr.addr 893 0#64))

def body2_459 : WordLangProgHOL (BitVec 64) :=
.seq body2_457 body2_458

def body2_460 : WordLangProgHOL (BitVec 64) :=
.seq body2_456 body2_459

def body2_461 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 897 Flapjack.WordStore.heapLength

def body2_462 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 901 897 (Flapjack.WordRegImm.imm 1#64)))

def body2_463 : WordLangProgHOL (BitVec 64) :=
.seq body2_461 body2_462

def body2_464 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 905 901

def body2_465 : WordLangProgHOL (BitVec 64) :=
.seq body2_463 body2_464

def body2_466 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 909 905 (Flapjack.WordRegImm.imm 18446744073709551328#64)))

def body2_467 : WordLangProgHOL (BitVec 64) :=
.seq body2_465 body2_466

def body2_468 : WordLangProgHOL (BitVec 64) :=
.seq body2_460 body2_467

def body2_469 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(913, 841)]

def body2_470 : WordLangProgHOL (BitVec 64) :=
.seq body2_468 body2_469

def body2_471 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(917, 913)]

def body2_472 : WordLangProgHOL (BitVec 64) :=
.seq body2_470 body2_471

def body2_473 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(921, 909)]

def body2_474 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 917 (Flapjack.WordLangAddr.addr 921 0#64))

def body2_475 : WordLangProgHOL (BitVec 64) :=
.seq body2_473 body2_474

def body2_476 : WordLangProgHOL (BitVec 64) :=
.seq body2_472 body2_475

def body2_477 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(925, 849)]

def body2_478 : WordLangProgHOL (BitVec 64) :=
.seq body2_476 body2_477

def body2_479 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 925)]

def body2_480 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 837 [2]

def body2_481 : WordLangProgHOL (BitVec 64) :=
.seq body2_479 body2_480

def body2_482 : WordLangProgHOL (BitVec 64) :=
.seq body2_478 body2_481

def body2_483 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(945, 837), (941, 925), (937, 913), (933, 885), (929, 925)]

def body2_484 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 949 0#64)

def body2_485 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_484

def body2_486 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(953, 917)]

def body2_487 : WordLangProgHOL (BitVec 64) :=
.seq body2_485 body2_486

def body2_488 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 957 0#64)

def body2_489 : WordLangProgHOL (BitVec 64) :=
.seq body2_487 body2_488

def body2_490 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 961 0#64)

def body2_491 : WordLangProgHOL (BitVec 64) :=
.seq body2_489 body2_490

def body2_492 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(965, 917)]

def body2_493 : WordLangProgHOL (BitVec 64) :=
.seq body2_491 body2_492

def body2_494 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(969, 921)]

def body2_495 : WordLangProgHOL (BitVec 64) :=
.seq body2_493 body2_494

def body2_496 : WordLangProgHOL (BitVec 64) :=
.seq body2_483 body2_495

def body2_497 : WordLangProgHOL (BitVec 64) :=
.seq body2_482 body2_496

def body2_498 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 341 (Flapjack.WordRegImm.imm 8#64) body2_173 body2_497

def body2_499 : WordLangProgHOL (BitVec 64) :=
.seq body2_498 body2_7

def body2_500 : WordLangProgHOL (BitVec 64) :=
.seq body2_156 body2_499

def body2_501 : WordLangProgHOL (BitVec 64) :=
.seq body2_139 body2_500

def body2_502 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(997, 945), (993, 937), (989, 961), (985, 957), (981, 933), (977, 929), (973, 949)]

def body2_503 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1001, 953)]

def body2_504 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_503

def body2_505 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1005, 965)]

def body2_506 : WordLangProgHOL (BitVec 64) :=
.seq body2_504 body2_505

def body2_507 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1009 0#64)

def body2_508 : WordLangProgHOL (BitVec 64) :=
.seq body2_506 body2_507

def body2_509 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1013, 941)]

def body2_510 : WordLangProgHOL (BitVec 64) :=
.seq body2_508 body2_509

def body2_511 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1017, 969)]

def body2_512 : WordLangProgHOL (BitVec 64) :=
.seq body2_510 body2_511

def body2_513 : WordLangProgHOL (BitVec 64) :=
.seq body2_502 body2_512

def body2_514 : WordLangProgHOL (BitVec 64) :=
.seq body2_501 body2_513

def body2_515 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body2_155, 608, 6)) (some 607) ([]) (some (2, body2_514, 608, 17))

def body2_516 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_515

def body2_517 : WordLangProgHOL (BitVec 64) :=
.seq body2_138 body2_516

def body2_518 : WordLangProgHOL (BitVec 64) :=
.seq body2_137 body2_517

def body2_519 : WordLangProgHOL (BitVec 64) :=
.seq body2_518 body2_7

def body2_520 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(1061, 1017), (1057, 997), (1053, 1009), (1049, 993), (1045, 989), (1041, 985), (1037, 981), (1033, 977),
    (1029, 973)]

def body2_521 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1065, 1001)]

def body2_522 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_521

def body2_523 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1069, 1005)]

def body2_524 : WordLangProgHOL (BitVec 64) :=
.seq body2_522 body2_523

def body2_525 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1073 0#64)

def body2_526 : WordLangProgHOL (BitVec 64) :=
.seq body2_524 body2_525

def body2_527 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1077, 1013)]

def body2_528 : WordLangProgHOL (BitVec 64) :=
.seq body2_526 body2_527

def body2_529 : WordLangProgHOL (BitVec 64) :=
.seq body2_520 body2_528

def body2_530 : WordLangProgHOL (BitVec 64) :=
.seq body2_519 body2_529

def body2_531 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1021 0#64)

def body2_532 : WordLangProgHOL (BitVec 64) :=
.seq body2_531 body2_7

def body2_533 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1025 0#64)

def body2_534 : WordLangProgHOL (BitVec 64) :=
.seq body2_532 body2_533

def body2_535 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(1061, 189), (1057, 157), (1053, 1025), (1049, 161), (1045, 189), (1041, 185), (1037, 169), (1033, 181),
    (1029, 1021)]

def body2_536 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1065 0#64)

def body2_537 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_536

def body2_538 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1069 0#64)

def body2_539 : WordLangProgHOL (BitVec 64) :=
.seq body2_537 body2_538

def body2_540 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1073, 197)]

def body2_541 : WordLangProgHOL (BitVec 64) :=
.seq body2_539 body2_540

def body2_542 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1077 0#64)

def body2_543 : WordLangProgHOL (BitVec 64) :=
.seq body2_541 body2_542

def body2_544 : WordLangProgHOL (BitVec 64) :=
.seq body2_535 body2_543

def body2_545 : WordLangProgHOL (BitVec 64) :=
.seq body2_534 body2_544

def body2_546 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 193 (Flapjack.WordRegImm.reg 197) body2_530 body2_545

def body2_547 : WordLangProgHOL (BitVec 64) :=
.seq body2_102 body2_546

def body2_548 : WordLangProgHOL (BitVec 64) :=
.seq body2_547 body2_7

def body2_549 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1083, 1057), (1087, 1033)]

def body2_550 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1093, 1083), (1097, 1087)]

def body2_551 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1101, 2)]

def body2_552 : WordLangProgHOL (BitVec 64) :=
.seq body2_551 body2_24

def body2_553 : WordLangProgHOL (BitVec 64) :=
.seq body2_550 body2_552

def body2_554 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1109 0#64)

def body2_555 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_554

def body2_556 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1113, 1101)]

def body2_557 : WordLangProgHOL (BitVec 64) :=
.seq body2_555 body2_556

def body2_558 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_557

def body2_559 : WordLangProgHOL (BitVec 64) :=
.seq body2_553 body2_558

def body2_560 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1105, 2)]

def body2_561 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1105)]

def body2_562 : WordLangProgHOL (BitVec 64) :=
.seq body2_561 body2_20

def body2_563 : WordLangProgHOL (BitVec 64) :=
.seq body2_560 body2_562

def body2_564 : WordLangProgHOL (BitVec 64) :=
.seq body2_550 body2_563

def body2_565 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1109, 1105)]

def body2_566 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_565

def body2_567 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1113 0#64)

def body2_568 : WordLangProgHOL (BitVec 64) :=
.seq body2_566 body2_567

def body2_569 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_568

def body2_570 : WordLangProgHOL (BitVec 64) :=
.seq body2_564 body2_569

def body2_571 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
                Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body2_559, 608, 18)) (some 392) ([]) (some (2, body2_570, 608, 19))

def body2_572 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_571

def body2_573 : WordLangProgHOL (BitVec 64) :=
.seq body2_549 body2_572

def body2_574 : WordLangProgHOL (BitVec 64) :=
.seq body2_548 body2_573

def body2_575 : WordLangProgHOL (BitVec 64) :=
.seq body2_574 body2_7

def body2_576 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 1117 Flapjack.WordStore.heapLength

def body2_577 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1121 1117 (Flapjack.WordRegImm.imm 1#64)))

def body2_578 : WordLangProgHOL (BitVec 64) :=
.seq body2_576 body2_577

def body2_579 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1125 1121

def body2_580 : WordLangProgHOL (BitVec 64) :=
.seq body2_578 body2_579

def body2_581 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1129 (Flapjack.WordLangAddr.addr 1125 18446744073709551328#64))

def body2_582 : WordLangProgHOL (BitVec 64) :=
.seq body2_580 body2_581

def body2_583 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1133 1129 (Flapjack.WordRegImm.imm 24#64)))

def body2_584 : WordLangProgHOL (BitVec 64) :=
.seq body2_582 body2_583

def body2_585 : WordLangProgHOL (BitVec 64) :=
.seq body2_575 body2_584

def body2_586 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1137, 1113)]

def body2_587 : WordLangProgHOL (BitVec 64) :=
.seq body2_585 body2_586

def body2_588 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1141, 1137)]

def body2_589 : WordLangProgHOL (BitVec 64) :=
.seq body2_587 body2_588

def body2_590 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1145, 1133)]

def body2_591 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1141 (Flapjack.WordLangAddr.addr 1145 0#64))

def body2_592 : WordLangProgHOL (BitVec 64) :=
.seq body2_590 body2_591

def body2_593 : WordLangProgHOL (BitVec 64) :=
.seq body2_589 body2_592

def body2_594 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1151, 1093), (1155, 1097)]

def body2_595 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1161, 1151), (1165, 1155)]

def body2_596 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1169, 2)]

def body2_597 : WordLangProgHOL (BitVec 64) :=
.seq body2_596 body2_24

def body2_598 : WordLangProgHOL (BitVec 64) :=
.seq body2_595 body2_597

def body2_599 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1177, 1169)]

def body2_600 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_599

def body2_601 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1181 0#64)

def body2_602 : WordLangProgHOL (BitVec 64) :=
.seq body2_600 body2_601

def body2_603 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_602

def body2_604 : WordLangProgHOL (BitVec 64) :=
.seq body2_598 body2_603

def body2_605 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1173, 2)]

def body2_606 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1173)]

def body2_607 : WordLangProgHOL (BitVec 64) :=
.seq body2_606 body2_20

def body2_608 : WordLangProgHOL (BitVec 64) :=
.seq body2_605 body2_607

def body2_609 : WordLangProgHOL (BitVec 64) :=
.seq body2_595 body2_608

def body2_610 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1177 0#64)

def body2_611 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_610

def body2_612 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1181, 1173)]

def body2_613 : WordLangProgHOL (BitVec 64) :=
.seq body2_611 body2_612

def body2_614 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_613

def body2_615 : WordLangProgHOL (BitVec 64) :=
.seq body2_609 body2_614

def body2_616 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body2_604, 608, 20)) (some 601) ([]) (some (2, body2_615, 608, 21))

def body2_617 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_616

def body2_618 : WordLangProgHOL (BitVec 64) :=
.seq body2_594 body2_617

def body2_619 : WordLangProgHOL (BitVec 64) :=
.seq body2_593 body2_618

def body2_620 : WordLangProgHOL (BitVec 64) :=
.seq body2_619 body2_7

def body2_621 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1187, 1161), (1191, 1165)]

def body2_622 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1197, 1187), (1201, 1191)]

def body2_623 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1205, 2)]

def body2_624 : WordLangProgHOL (BitVec 64) :=
.seq body2_623 body2_24

def body2_625 : WordLangProgHOL (BitVec 64) :=
.seq body2_622 body2_624

def body2_626 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1213, 1205)]

def body2_627 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_626

def body2_628 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1217 0#64)

def body2_629 : WordLangProgHOL (BitVec 64) :=
.seq body2_627 body2_628

def body2_630 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_629

def body2_631 : WordLangProgHOL (BitVec 64) :=
.seq body2_625 body2_630

def body2_632 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1209, 2)]

def body2_633 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1209)]

def body2_634 : WordLangProgHOL (BitVec 64) :=
.seq body2_633 body2_20

def body2_635 : WordLangProgHOL (BitVec 64) :=
.seq body2_632 body2_634

def body2_636 : WordLangProgHOL (BitVec 64) :=
.seq body2_622 body2_635

def body2_637 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1213 0#64)

def body2_638 : WordLangProgHOL (BitVec 64) :=
.seq body2_24 body2_637

def body2_639 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1217, 1209)]

def body2_640 : WordLangProgHOL (BitVec 64) :=
.seq body2_638 body2_639

def body2_641 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_640

def body2_642 : WordLangProgHOL (BitVec 64) :=
.seq body2_636 body2_641

def body2_643 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body2_631, 608, 22)) (some 604) ([]) (some (2, body2_642, 608, 23))

def body2_644 : WordLangProgHOL (BitVec 64) :=
.seq body2_74 body2_643

def body2_645 : WordLangProgHOL (BitVec 64) :=
.seq body2_621 body2_644

def body2_646 : WordLangProgHOL (BitVec 64) :=
.seq body2_620 body2_645

def body2_647 : WordLangProgHOL (BitVec 64) :=
.seq body2_646 body2_7

def body2_648 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1221, 1201)]

def body2_649 : WordLangProgHOL (BitVec 64) :=
.seq body2_647 body2_648

def body2_650 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 1221)]

def body2_651 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 1197 [2]

def body2_652 : WordLangProgHOL (BitVec 64) :=
.seq body2_650 body2_651

def body2_653 : WordLangProgHOL (BitVec 64) :=
.seq body2_649 body2_652

def body2_654 : WordLangProgHOL (BitVec 64) :=
.seq body2_0 body2_653

def pass2 : WordLangProgHOL (BitVec 64) := body2_654
def body3_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 0), (33, 2)]

def body3_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 37 1024#64)

def body3_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(41, 33)]

def body3_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 45 (Flapjack.WordLangAddr.addr 41 128#64))

def body3_4 : WordLangProgHOL (BitVec 64) :=
.seq body3_2 body3_3

def body3_5 : WordLangProgHOL (BitVec 64) :=
.seq body3_1 body3_4

def body3_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body3_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 57 7#64)

def body3_8 : WordLangProgHOL (BitVec 64) :=
.seq body3_6 body3_7

def body3_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(61, 57)]

def body3_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 61)

def body3_11 : WordLangProgHOL (BitVec 64) :=
.seq body3_9 body3_10

def body3_12 : WordLangProgHOL (BitVec 64) :=
.seq body3_8 body3_11

def body3_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 8#64)

def body3_14 : WordLangProgHOL (BitVec 64) :=
.seq body3_12 body3_13

def body3_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 65)]

def body3_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body3_17 : WordLangProgHOL (BitVec 64) :=
.seq body3_15 body3_16

def body3_18 : WordLangProgHOL (BitVec 64) :=
.seq body3_14 body3_17

def body3_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body3_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 37 (Flapjack.WordRegImm.reg 45) body3_18 body3_19

def body3_21 : WordLangProgHOL (BitVec 64) :=
.seq body3_20 body3_6

def body3_22 : WordLangProgHOL (BitVec 64) :=
.seq body3_5 body3_21

def body3_23 : WordLangProgHOL (BitVec 64) :=
.seq body3_22 body3_6

def body3_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 93 Flapjack.WordStore.heapLength

def body3_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 97 93 (Flapjack.WordRegImm.imm 1#64)))

def body3_26 : WordLangProgHOL (BitVec 64) :=
.seq body3_24 body3_25

def body3_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 101 97

def body3_28 : WordLangProgHOL (BitVec 64) :=
.seq body3_26 body3_27

def body3_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 105 (Flapjack.WordLangAddr.addr 101 18446744073709551360#64))

def body3_30 : WordLangProgHOL (BitVec 64) :=
.seq body3_28 body3_29

def body3_31 : WordLangProgHOL (BitVec 64) :=
.seq body3_23 body3_30

def body3_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 109 Flapjack.WordStore.heapLength

def body3_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 113 109 (Flapjack.WordRegImm.imm 1#64)))

def body3_34 : WordLangProgHOL (BitVec 64) :=
.seq body3_32 body3_33

def body3_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 117 113

def body3_36 : WordLangProgHOL (BitVec 64) :=
.seq body3_34 body3_35

def body3_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 121 (Flapjack.WordLangAddr.addr 117 18446744073709551328#64))

def body3_38 : WordLangProgHOL (BitVec 64) :=
.seq body3_36 body3_37

def body3_39 : WordLangProgHOL (BitVec 64) :=
.seq body3_31 body3_38

def body3_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(125, 41)]

def body3_41 : WordLangProgHOL (BitVec 64) :=
.seq body3_39 body3_40

def body3_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 0#64)

def body3_43 : WordLangProgHOL (BitVec 64) :=
.seq body3_41 body3_42

def body3_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(139, 29), (143, 121), (147, 125), (151, 105)]

def body3_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 125), (4, 133)]

def body3_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 139), (161, 143), (165, 147), (169, 151)]

def body3_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(173, 2)]

def body3_48 : WordLangProgHOL (BitVec 64) :=
.seq body3_46 body3_47

def body3_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(181, 173)]

def body3_50 : WordLangProgHOL (BitVec 64) :=
.seq body3_48 body3_49

def body3_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(177, 2)]

def body3_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 177)]

def body3_53 : WordLangProgHOL (BitVec 64) :=
.seq body3_52 body3_16

def body3_54 : WordLangProgHOL (BitVec 64) :=
.seq body3_51 body3_53

def body3_55 : WordLangProgHOL (BitVec 64) :=
.seq body3_46 body3_54

def body3_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 181 0#64)

def body3_57 : WordLangProgHOL (BitVec 64) :=
.seq body3_55 body3_56

def body3_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body3_50, 608, 2)) (some 598) ([2, 4]) (some (2, body3_57, 608, 3))

def body3_59 : WordLangProgHOL (BitVec 64) :=
.seq body3_45 body3_58

def body3_60 : WordLangProgHOL (BitVec 64) :=
.seq body3_44 body3_59

def body3_61 : WordLangProgHOL (BitVec 64) :=
.seq body3_43 body3_60

def body3_62 : WordLangProgHOL (BitVec 64) :=
.seq body3_61 body3_6

def body3_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 165)]

def body3_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 193 (Flapjack.WordLangAddr.addr 189 128#64))

def body3_65 : WordLangProgHOL (BitVec 64) :=
.seq body3_63 body3_64

def body3_66 : WordLangProgHOL (BitVec 64) :=
.seq body3_62 body3_65

def body3_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 0#64)

def body3_68 : WordLangProgHOL (BitVec 64) :=
.seq body3_66 body3_67

def body3_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(211, 157), (215, 161), (219, 189), (223, 169), (227, 181)]

def body3_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(233, 211), (237, 215), (241, 219), (245, 223), (249, 227)]

def body3_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(253, 2)]

def body3_72 : WordLangProgHOL (BitVec 64) :=
.seq body3_70 body3_71

def body3_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(265, 253)]

def body3_74 : WordLangProgHOL (BitVec 64) :=
.seq body3_72 body3_73

def body3_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(257, 2)]

def body3_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 257)]

def body3_77 : WordLangProgHOL (BitVec 64) :=
.seq body3_76 body3_16

def body3_78 : WordLangProgHOL (BitVec 64) :=
.seq body3_75 body3_77

def body3_79 : WordLangProgHOL (BitVec 64) :=
.seq body3_70 body3_78

def body3_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 265 0#64)

def body3_81 : WordLangProgHOL (BitVec 64) :=
.seq body3_79 body3_80

def body3_82 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body3_74, 608, 4)) (some 392) ([]) (some (2, body3_81, 608, 5))

def body3_83 : WordLangProgHOL (BitVec 64) :=
.seq body3_69 body3_82

def body3_84 : WordLangProgHOL (BitVec 64) :=
.seq body3_6 body3_83

def body3_85 : WordLangProgHOL (BitVec 64) :=
.seq body3_84 body3_6

def body3_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(269, 241)]

def body3_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 273 (Flapjack.WordLangAddr.addr 269 48#64))

def body3_88 : WordLangProgHOL (BitVec 64) :=
.seq body3_86 body3_87

def body3_89 : WordLangProgHOL (BitVec 64) :=
.seq body3_85 body3_88

def body3_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(279, 233), (283, 237), (287, 269), (291, 265), (295, 245), (299, 249), (303, 273)]

def body3_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(309, 279), (329, 299)]

def body3_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(997, 309), (977, 329)]

def body3_93 : WordLangProgHOL (BitVec 64) :=
.seq body3_91 body3_92

def body3_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(309, 279), (313, 283), (317, 287), (321, 291), (325, 295), (329, 299), (333, 303)]

def body3_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(341, 2)]

def body3_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 341)]

def body3_97 : WordLangProgHOL (BitVec 64) :=
.seq body3_96 body3_16

def body3_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(945, 309), (929, 329)]

def body3_99 : WordLangProgHOL (BitVec 64) :=
.seq body3_97 body3_98

def body3_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 345 (Flapjack.WordStore.temp 0#5)

def body3_101 : WordLangProgHOL (BitVec 64) :=
.seq body3_6 body3_100

def body3_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(349, 345)]

def body3_103 : WordLangProgHOL (BitVec 64) :=
.seq body3_101 body3_102

def body3_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 353 1#64)

def body3_105 : WordLangProgHOL (BitVec 64) :=
.seq body3_103 body3_104

def body3_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(365, 329)]

def body3_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 369 (Flapjack.WordLangAddr.addr 365 208#64))

def body3_108 : WordLangProgHOL (BitVec 64) :=
.seq body3_106 body3_107

def body3_109 : WordLangProgHOL (BitVec 64) :=
.seq body3_6 body3_108

def body3_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(375, 309), (379, 349), (383, 313), (387, 325), (391, 365)]

def body3_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 369)]

def body3_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(397, 375), (401, 379), (405, 383), (409, 387), (413, 391)]

def body3_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(421, 2)]

def body3_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 421)]

def body3_115 : WordLangProgHOL (BitVec 64) :=
.seq body3_114 body3_16

def body3_116 : WordLangProgHOL (BitVec 64) :=
.seq body3_113 body3_115

def body3_117 : WordLangProgHOL (BitVec 64) :=
.seq body3_112 body3_116

def body3_118 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body3_112, 608, 7)) (some 76) ([2]) (some (2, body3_117, 608, 8))

def body3_119 : WordLangProgHOL (BitVec 64) :=
.seq body3_111 body3_118

def body3_120 : WordLangProgHOL (BitVec 64) :=
.seq body3_110 body3_119

def body3_121 : WordLangProgHOL (BitVec 64) :=
.seq body3_109 body3_120

def body3_122 : WordLangProgHOL (BitVec 64) :=
.seq body3_121 body3_6

def body3_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(433, 413)]

def body3_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 437 (Flapjack.WordLangAddr.addr 433 224#64))

def body3_125 : WordLangProgHOL (BitVec 64) :=
.seq body3_123 body3_124

def body3_126 : WordLangProgHOL (BitVec 64) :=
.seq body3_122 body3_125

def body3_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(443, 397), (447, 401), (451, 405), (455, 409)]

def body3_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 437)]

def body3_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(461, 443), (465, 447), (469, 451), (473, 455)]

def body3_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(481, 2)]

def body3_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 481)]

def body3_132 : WordLangProgHOL (BitVec 64) :=
.seq body3_131 body3_16

def body3_133 : WordLangProgHOL (BitVec 64) :=
.seq body3_130 body3_132

def body3_134 : WordLangProgHOL (BitVec 64) :=
.seq body3_129 body3_133

def body3_135 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body3_129, 608, 9)) (some 73) ([2]) (some (2, body3_134, 608, 10))

def body3_136 : WordLangProgHOL (BitVec 64) :=
.seq body3_128 body3_135

def body3_137 : WordLangProgHOL (BitVec 64) :=
.seq body3_127 body3_136

def body3_138 : WordLangProgHOL (BitVec 64) :=
.seq body3_126 body3_137

def body3_139 : WordLangProgHOL (BitVec 64) :=
.seq body3_138 body3_6

def body3_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 493 Flapjack.WordStore.heapLength

def body3_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 497 493 (Flapjack.WordRegImm.imm 1#64)))

def body3_142 : WordLangProgHOL (BitVec 64) :=
.seq body3_140 body3_141

def body3_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 501 497

def body3_144 : WordLangProgHOL (BitVec 64) :=
.seq body3_142 body3_143

def body3_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 505 501 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def body3_146 : WordLangProgHOL (BitVec 64) :=
.seq body3_144 body3_145

def body3_147 : WordLangProgHOL (BitVec 64) :=
.seq body3_139 body3_146

def body3_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(509, 473)]

def body3_149 : WordLangProgHOL (BitVec 64) :=
.seq body3_147 body3_148

def body3_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(513, 509)]

def body3_151 : WordLangProgHOL (BitVec 64) :=
.seq body3_149 body3_150

def body3_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(517, 505)]

def body3_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 513 (Flapjack.WordLangAddr.addr 517 0#64))

def body3_154 : WordLangProgHOL (BitVec 64) :=
.seq body3_152 body3_153

def body3_155 : WordLangProgHOL (BitVec 64) :=
.seq body3_151 body3_154

def body3_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 521 Flapjack.WordStore.heapLength

def body3_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 525 521 (Flapjack.WordRegImm.imm 1#64)))

def body3_158 : WordLangProgHOL (BitVec 64) :=
.seq body3_156 body3_157

def body3_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 529 525

def body3_160 : WordLangProgHOL (BitVec 64) :=
.seq body3_158 body3_159

def body3_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 533 529 (Flapjack.WordRegImm.imm 18446744073709551328#64)))

def body3_162 : WordLangProgHOL (BitVec 64) :=
.seq body3_160 body3_161

def body3_163 : WordLangProgHOL (BitVec 64) :=
.seq body3_155 body3_162

def body3_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(537, 469)]

def body3_165 : WordLangProgHOL (BitVec 64) :=
.seq body3_163 body3_164

def body3_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(541, 537)]

def body3_167 : WordLangProgHOL (BitVec 64) :=
.seq body3_165 body3_166

def body3_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(545, 533)]

def body3_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 541 (Flapjack.WordLangAddr.addr 545 0#64))

def body3_170 : WordLangProgHOL (BitVec 64) :=
.seq body3_168 body3_169

def body3_171 : WordLangProgHOL (BitVec 64) :=
.seq body3_167 body3_170

def body3_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(549, 465)]

def body3_173 : WordLangProgHOL (BitVec 64) :=
.seq body3_171 body3_172

def body3_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(553, 549)]

def body3_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 553)

def body3_176 : WordLangProgHOL (BitVec 64) :=
.seq body3_174 body3_175

def body3_177 : WordLangProgHOL (BitVec 64) :=
.seq body3_173 body3_176

def body3_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 557 8#64)

def body3_179 : WordLangProgHOL (BitVec 64) :=
.seq body3_177 body3_178

def body3_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 557)]

def body3_181 : WordLangProgHOL (BitVec 64) :=
.seq body3_180 body3_16

def body3_182 : WordLangProgHOL (BitVec 64) :=
.seq body3_179 body3_181

def body3_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(593, 461), (585, 549), (581, 537), (573, 509)]

def body3_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 597 0#64)

def body3_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 601 0#64)

def body3_186 : WordLangProgHOL (BitVec 64) :=
.seq body3_184 body3_185

def body3_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 605 0#64)

def body3_188 : WordLangProgHOL (BitVec 64) :=
.seq body3_186 body3_187

def body3_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 609 0#64)

def body3_190 : WordLangProgHOL (BitVec 64) :=
.seq body3_188 body3_189

def body3_191 : WordLangProgHOL (BitVec 64) :=
.seq body3_183 body3_190

def body3_192 : WordLangProgHOL (BitVec 64) :=
.seq body3_182 body3_191

def body3_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(593, 309), (585, 349), (581, 313), (573, 325)]

def body3_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(597, 333)]

def body3_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(601, 329)]

def body3_196 : WordLangProgHOL (BitVec 64) :=
.seq body3_194 body3_195

def body3_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(605, 321)]

def body3_198 : WordLangProgHOL (BitVec 64) :=
.seq body3_196 body3_197

def body3_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(609, 317)]

def body3_200 : WordLangProgHOL (BitVec 64) :=
.seq body3_198 body3_199

def body3_201 : WordLangProgHOL (BitVec 64) :=
.seq body3_193 body3_200

def body3_202 : WordLangProgHOL (BitVec 64) :=
.seq body3_6 body3_201

def body3_203 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 349 (Flapjack.WordRegImm.reg 353) body3_192 body3_202

def body3_204 : WordLangProgHOL (BitVec 64) :=
.seq body3_105 body3_203

def body3_205 : WordLangProgHOL (BitVec 64) :=
.seq body3_204 body3_6

def body3_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(621, 605)]

def body3_207 : WordLangProgHOL (BitVec 64) :=
.seq body3_205 body3_206

def body3_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(627, 593), (631, 585), (635, 581), (639, 609), (643, 573), (647, 601), (651, 597)]

def body3_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 621)]

def body3_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(657, 627), (661, 631), (665, 635), (669, 639), (673, 643), (677, 647), (681, 651)]

def body3_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(689, 2)]

def body3_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 689)]

def body3_213 : WordLangProgHOL (BitVec 64) :=
.seq body3_212 body3_16

def body3_214 : WordLangProgHOL (BitVec 64) :=
.seq body3_211 body3_213

def body3_215 : WordLangProgHOL (BitVec 64) :=
.seq body3_210 body3_214

def body3_216 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body3_210, 608, 11)) (some 393) ([2]) (some (2, body3_215, 608, 12))

def body3_217 : WordLangProgHOL (BitVec 64) :=
.seq body3_209 body3_216

def body3_218 : WordLangProgHOL (BitVec 64) :=
.seq body3_208 body3_217

def body3_219 : WordLangProgHOL (BitVec 64) :=
.seq body3_207 body3_218

def body3_220 : WordLangProgHOL (BitVec 64) :=
.seq body3_219 body3_6

def body3_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(701, 669)]

def body3_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 705 701 (Flapjack.WordRegImm.imm 48#64)))

def body3_223 : WordLangProgHOL (BitVec 64) :=
.seq body3_221 body3_222

def body3_224 : WordLangProgHOL (BitVec 64) :=
.seq body3_220 body3_223

def body3_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(709, 681)]

def body3_226 : WordLangProgHOL (BitVec 64) :=
.seq body3_224 body3_225

def body3_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(713, 709)]

def body3_228 : WordLangProgHOL (BitVec 64) :=
.seq body3_226 body3_227

def body3_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(717, 705)]

def body3_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 713 (Flapjack.WordLangAddr.addr 717 0#64))

def body3_231 : WordLangProgHOL (BitVec 64) :=
.seq body3_229 body3_230

def body3_232 : WordLangProgHOL (BitVec 64) :=
.seq body3_228 body3_231

def body3_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 721 Flapjack.WordStore.heapLength

def body3_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 725 721 (Flapjack.WordRegImm.imm 1#64)))

def body3_235 : WordLangProgHOL (BitVec 64) :=
.seq body3_233 body3_234

def body3_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 729 725

def body3_237 : WordLangProgHOL (BitVec 64) :=
.seq body3_235 body3_236

def body3_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 733 (Flapjack.WordLangAddr.addr 729 18446744073709551360#64))

def body3_239 : WordLangProgHOL (BitVec 64) :=
.seq body3_237 body3_238

def body3_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 737 733 (Flapjack.WordRegImm.imm 200#64)))

def body3_241 : WordLangProgHOL (BitVec 64) :=
.seq body3_239 body3_240

def body3_242 : WordLangProgHOL (BitVec 64) :=
.seq body3_232 body3_241

def body3_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 741 0#64)

def body3_244 : WordLangProgHOL (BitVec 64) :=
.seq body3_242 body3_243

def body3_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(745, 741)]

def body3_246 : WordLangProgHOL (BitVec 64) :=
.seq body3_244 body3_245

def body3_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(749, 737)]

def body3_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 745 (Flapjack.WordLangAddr.addr 749 0#64))

def body3_249 : WordLangProgHOL (BitVec 64) :=
.seq body3_247 body3_248

def body3_250 : WordLangProgHOL (BitVec 64) :=
.seq body3_246 body3_249

def body3_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(755, 657), (759, 661), (763, 665), (767, 673), (771, 677)]

def body3_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(777, 755), (781, 759), (785, 763), (789, 767), (793, 771)]

def body3_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(801, 2)]

def body3_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 801)]

def body3_255 : WordLangProgHOL (BitVec 64) :=
.seq body3_254 body3_16

def body3_256 : WordLangProgHOL (BitVec 64) :=
.seq body3_253 body3_255

def body3_257 : WordLangProgHOL (BitVec 64) :=
.seq body3_252 body3_256

def body3_258 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))))),
  Flapjack.Spt.ln)), body3_252, 608, 13)) (some 476) ([]) (some (2, body3_257, 608, 14))

def body3_259 : WordLangProgHOL (BitVec 64) :=
.seq body3_251 body3_258

def body3_260 : WordLangProgHOL (BitVec 64) :=
.seq body3_250 body3_259

def body3_261 : WordLangProgHOL (BitVec 64) :=
.seq body3_260 body3_6

def body3_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(813, 781)]

def body3_263 : WordLangProgHOL (BitVec 64) :=
.seq body3_261 body3_262

def body3_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(819, 777), (823, 785), (827, 789), (831, 793)]

def body3_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 813)]

def body3_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(837, 819), (841, 823), (845, 827), (849, 831)]

def body3_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(857, 2)]

def body3_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 857)]

def body3_269 : WordLangProgHOL (BitVec 64) :=
.seq body3_268 body3_16

def body3_270 : WordLangProgHOL (BitVec 64) :=
.seq body3_267 body3_269

def body3_271 : WordLangProgHOL (BitVec 64) :=
.seq body3_266 body3_270

def body3_272 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body3_266, 608, 15)) (some 606) ([2]) (some (2, body3_271, 608, 16))

def body3_273 : WordLangProgHOL (BitVec 64) :=
.seq body3_265 body3_272

def body3_274 : WordLangProgHOL (BitVec 64) :=
.seq body3_264 body3_273

def body3_275 : WordLangProgHOL (BitVec 64) :=
.seq body3_263 body3_274

def body3_276 : WordLangProgHOL (BitVec 64) :=
.seq body3_275 body3_6

def body3_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 869 Flapjack.WordStore.heapLength

def body3_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 873 869 (Flapjack.WordRegImm.imm 1#64)))

def body3_279 : WordLangProgHOL (BitVec 64) :=
.seq body3_277 body3_278

def body3_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 877 873

def body3_281 : WordLangProgHOL (BitVec 64) :=
.seq body3_279 body3_280

def body3_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 881 877 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def body3_283 : WordLangProgHOL (BitVec 64) :=
.seq body3_281 body3_282

def body3_284 : WordLangProgHOL (BitVec 64) :=
.seq body3_276 body3_283

def body3_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(885, 845)]

def body3_286 : WordLangProgHOL (BitVec 64) :=
.seq body3_284 body3_285

def body3_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(889, 885)]

def body3_288 : WordLangProgHOL (BitVec 64) :=
.seq body3_286 body3_287

def body3_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(893, 881)]

def body3_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 889 (Flapjack.WordLangAddr.addr 893 0#64))

def body3_291 : WordLangProgHOL (BitVec 64) :=
.seq body3_289 body3_290

def body3_292 : WordLangProgHOL (BitVec 64) :=
.seq body3_288 body3_291

def body3_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 897 Flapjack.WordStore.heapLength

def body3_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 901 897 (Flapjack.WordRegImm.imm 1#64)))

def body3_295 : WordLangProgHOL (BitVec 64) :=
.seq body3_293 body3_294

def body3_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 905 901

def body3_297 : WordLangProgHOL (BitVec 64) :=
.seq body3_295 body3_296

def body3_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 909 905 (Flapjack.WordRegImm.imm 18446744073709551328#64)))

def body3_299 : WordLangProgHOL (BitVec 64) :=
.seq body3_297 body3_298

def body3_300 : WordLangProgHOL (BitVec 64) :=
.seq body3_292 body3_299

def body3_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(913, 841)]

def body3_302 : WordLangProgHOL (BitVec 64) :=
.seq body3_300 body3_301

def body3_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(917, 913)]

def body3_304 : WordLangProgHOL (BitVec 64) :=
.seq body3_302 body3_303

def body3_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(921, 909)]

def body3_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 917 (Flapjack.WordLangAddr.addr 921 0#64))

def body3_307 : WordLangProgHOL (BitVec 64) :=
.seq body3_305 body3_306

def body3_308 : WordLangProgHOL (BitVec 64) :=
.seq body3_304 body3_307

def body3_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(925, 849)]

def body3_310 : WordLangProgHOL (BitVec 64) :=
.seq body3_308 body3_309

def body3_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 925)]

def body3_312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 837 [2]

def body3_313 : WordLangProgHOL (BitVec 64) :=
.seq body3_311 body3_312

def body3_314 : WordLangProgHOL (BitVec 64) :=
.seq body3_310 body3_313

def body3_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(945, 837), (929, 925)]

def body3_316 : WordLangProgHOL (BitVec 64) :=
.seq body3_314 body3_315

def body3_317 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 341 (Flapjack.WordRegImm.imm 8#64) body3_99 body3_316

def body3_318 : WordLangProgHOL (BitVec 64) :=
.seq body3_317 body3_6

def body3_319 : WordLangProgHOL (BitVec 64) :=
.seq body3_95 body3_318

def body3_320 : WordLangProgHOL (BitVec 64) :=
.seq body3_94 body3_319

def body3_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(997, 945), (977, 929)]

def body3_322 : WordLangProgHOL (BitVec 64) :=
.seq body3_320 body3_321

def body3_323 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body3_93, 608, 6)) (some 607) ([]) (some (2, body3_322, 608, 17))

def body3_324 : WordLangProgHOL (BitVec 64) :=
.seq body3_90 body3_323

def body3_325 : WordLangProgHOL (BitVec 64) :=
.seq body3_89 body3_324

def body3_326 : WordLangProgHOL (BitVec 64) :=
.seq body3_325 body3_6

def body3_327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1057, 997), (1033, 977)]

def body3_328 : WordLangProgHOL (BitVec 64) :=
.seq body3_326 body3_327

def body3_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1057, 157), (1033, 181)]

def body3_330 : WordLangProgHOL (BitVec 64) :=
.seq body3_6 body3_329

def body3_331 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 193 (Flapjack.WordRegImm.reg 197) body3_328 body3_330

def body3_332 : WordLangProgHOL (BitVec 64) :=
.seq body3_68 body3_331

def body3_333 : WordLangProgHOL (BitVec 64) :=
.seq body3_332 body3_6

def body3_334 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1083, 1057), (1087, 1033)]

def body3_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1093, 1083), (1097, 1087)]

def body3_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1101, 2)]

def body3_337 : WordLangProgHOL (BitVec 64) :=
.seq body3_335 body3_336

def body3_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1113, 1101)]

def body3_339 : WordLangProgHOL (BitVec 64) :=
.seq body3_337 body3_338

def body3_340 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1105, 2)]

def body3_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1105)]

def body3_342 : WordLangProgHOL (BitVec 64) :=
.seq body3_341 body3_16

def body3_343 : WordLangProgHOL (BitVec 64) :=
.seq body3_340 body3_342

def body3_344 : WordLangProgHOL (BitVec 64) :=
.seq body3_335 body3_343

def body3_345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1113 0#64)

def body3_346 : WordLangProgHOL (BitVec 64) :=
.seq body3_344 body3_345

def body3_347 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
                Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body3_339, 608, 18)) (some 392) ([]) (some (2, body3_346, 608, 19))

def body3_348 : WordLangProgHOL (BitVec 64) :=
.seq body3_334 body3_347

def body3_349 : WordLangProgHOL (BitVec 64) :=
.seq body3_333 body3_348

def body3_350 : WordLangProgHOL (BitVec 64) :=
.seq body3_349 body3_6

def body3_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 1117 Flapjack.WordStore.heapLength

def body3_352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1121 1117 (Flapjack.WordRegImm.imm 1#64)))

def body3_353 : WordLangProgHOL (BitVec 64) :=
.seq body3_351 body3_352

def body3_354 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1125 1121

def body3_355 : WordLangProgHOL (BitVec 64) :=
.seq body3_353 body3_354

def body3_356 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1129 (Flapjack.WordLangAddr.addr 1125 18446744073709551328#64))

def body3_357 : WordLangProgHOL (BitVec 64) :=
.seq body3_355 body3_356

def body3_358 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1133 1129 (Flapjack.WordRegImm.imm 24#64)))

def body3_359 : WordLangProgHOL (BitVec 64) :=
.seq body3_357 body3_358

def body3_360 : WordLangProgHOL (BitVec 64) :=
.seq body3_350 body3_359

def body3_361 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1137, 1113)]

def body3_362 : WordLangProgHOL (BitVec 64) :=
.seq body3_360 body3_361

def body3_363 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1141, 1137)]

def body3_364 : WordLangProgHOL (BitVec 64) :=
.seq body3_362 body3_363

def body3_365 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1145, 1133)]

def body3_366 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1141 (Flapjack.WordLangAddr.addr 1145 0#64))

def body3_367 : WordLangProgHOL (BitVec 64) :=
.seq body3_365 body3_366

def body3_368 : WordLangProgHOL (BitVec 64) :=
.seq body3_364 body3_367

def body3_369 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1151, 1093), (1155, 1097)]

def body3_370 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1161, 1151), (1165, 1155)]

def body3_371 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1173, 2)]

def body3_372 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1173)]

def body3_373 : WordLangProgHOL (BitVec 64) :=
.seq body3_372 body3_16

def body3_374 : WordLangProgHOL (BitVec 64) :=
.seq body3_371 body3_373

def body3_375 : WordLangProgHOL (BitVec 64) :=
.seq body3_370 body3_374

def body3_376 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body3_370, 608, 20)) (some 601) ([]) (some (2, body3_375, 608, 21))

def body3_377 : WordLangProgHOL (BitVec 64) :=
.seq body3_369 body3_376

def body3_378 : WordLangProgHOL (BitVec 64) :=
.seq body3_368 body3_377

def body3_379 : WordLangProgHOL (BitVec 64) :=
.seq body3_378 body3_6

def body3_380 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1187, 1161), (1191, 1165)]

def body3_381 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1197, 1187), (1201, 1191)]

def body3_382 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1209, 2)]

def body3_383 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1209)]

def body3_384 : WordLangProgHOL (BitVec 64) :=
.seq body3_383 body3_16

def body3_385 : WordLangProgHOL (BitVec 64) :=
.seq body3_382 body3_384

def body3_386 : WordLangProgHOL (BitVec 64) :=
.seq body3_381 body3_385

def body3_387 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body3_381, 608, 22)) (some 604) ([]) (some (2, body3_386, 608, 23))

def body3_388 : WordLangProgHOL (BitVec 64) :=
.seq body3_380 body3_387

def body3_389 : WordLangProgHOL (BitVec 64) :=
.seq body3_379 body3_388

def body3_390 : WordLangProgHOL (BitVec 64) :=
.seq body3_389 body3_6

def body3_391 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1221, 1201)]

def body3_392 : WordLangProgHOL (BitVec 64) :=
.seq body3_390 body3_391

def body3_393 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 1221)]

def body3_394 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 1197 [2]

def body3_395 : WordLangProgHOL (BitVec 64) :=
.seq body3_393 body3_394

def body3_396 : WordLangProgHOL (BitVec 64) :=
.seq body3_392 body3_395

def body3_397 : WordLangProgHOL (BitVec 64) :=
.seq body3_0 body3_396

def pass3 : WordLangProgHOL (BitVec 64) := body3_397
def body4_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 0), (33, 2)]

def body4_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 37 1024#64)

def body4_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(41, 33)]

def body4_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 45 (Flapjack.WordLangAddr.addr 41 128#64))

def body4_4 : WordLangProgHOL (BitVec 64) :=
.seq body4_2 body4_3

def body4_5 : WordLangProgHOL (BitVec 64) :=
.seq body4_1 body4_4

def body4_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body4_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 57 7#64)

def body4_8 : WordLangProgHOL (BitVec 64) :=
.seq body4_6 body4_7

def body4_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(61, 57)]

def body4_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 61)

def body4_11 : WordLangProgHOL (BitVec 64) :=
.seq body4_9 body4_10

def body4_12 : WordLangProgHOL (BitVec 64) :=
.seq body4_8 body4_11

def body4_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 8#64)

def body4_14 : WordLangProgHOL (BitVec 64) :=
.seq body4_12 body4_13

def body4_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 65)]

def body4_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body4_17 : WordLangProgHOL (BitVec 64) :=
.seq body4_15 body4_16

def body4_18 : WordLangProgHOL (BitVec 64) :=
.seq body4_14 body4_17

def body4_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body4_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 37 (Flapjack.WordRegImm.reg 45) body4_18 body4_19

def body4_21 : WordLangProgHOL (BitVec 64) :=
.seq body4_20 body4_6

def body4_22 : WordLangProgHOL (BitVec 64) :=
.seq body4_5 body4_21

def body4_23 : WordLangProgHOL (BitVec 64) :=
.seq body4_22 body4_6

def body4_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 93 Flapjack.WordStore.heapLength

def body4_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 97 93 (Flapjack.WordRegImm.imm 1#64)))

def body4_26 : WordLangProgHOL (BitVec 64) :=
.seq body4_24 body4_25

def body4_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 101 97

def body4_28 : WordLangProgHOL (BitVec 64) :=
.seq body4_26 body4_27

def body4_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 105 (Flapjack.WordLangAddr.addr 101 18446744073709551360#64))

def body4_30 : WordLangProgHOL (BitVec 64) :=
.seq body4_28 body4_29

def body4_31 : WordLangProgHOL (BitVec 64) :=
.seq body4_23 body4_30

def body4_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(109, 93)]

def body4_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 97)]

def body4_34 : WordLangProgHOL (BitVec 64) :=
.seq body4_32 body4_33

def body4_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(117, 101)]

def body4_36 : WordLangProgHOL (BitVec 64) :=
.seq body4_34 body4_35

def body4_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 121 (Flapjack.WordLangAddr.addr 117 18446744073709551328#64))

def body4_38 : WordLangProgHOL (BitVec 64) :=
.seq body4_36 body4_37

def body4_39 : WordLangProgHOL (BitVec 64) :=
.seq body4_31 body4_38

def body4_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(125, 41)]

def body4_41 : WordLangProgHOL (BitVec 64) :=
.seq body4_39 body4_40

def body4_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 0#64)

def body4_43 : WordLangProgHOL (BitVec 64) :=
.seq body4_41 body4_42

def body4_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(139, 29), (143, 121), (147, 125), (151, 105)]

def body4_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 125), (4, 133)]

def body4_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 139), (161, 143), (165, 147), (169, 151)]

def body4_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(173, 2)]

def body4_48 : WordLangProgHOL (BitVec 64) :=
.seq body4_46 body4_47

def body4_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(181, 173)]

def body4_50 : WordLangProgHOL (BitVec 64) :=
.seq body4_48 body4_49

def body4_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(177, 2)]

def body4_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 177)]

def body4_53 : WordLangProgHOL (BitVec 64) :=
.seq body4_52 body4_16

def body4_54 : WordLangProgHOL (BitVec 64) :=
.seq body4_51 body4_53

def body4_55 : WordLangProgHOL (BitVec 64) :=
.seq body4_46 body4_54

def body4_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 181 0#64)

def body4_57 : WordLangProgHOL (BitVec 64) :=
.seq body4_55 body4_56

def body4_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body4_50, 608, 2)) (some 598) ([2, 4]) (some (2, body4_57, 608, 3))

def body4_59 : WordLangProgHOL (BitVec 64) :=
.seq body4_45 body4_58

def body4_60 : WordLangProgHOL (BitVec 64) :=
.seq body4_44 body4_59

def body4_61 : WordLangProgHOL (BitVec 64) :=
.seq body4_43 body4_60

def body4_62 : WordLangProgHOL (BitVec 64) :=
.seq body4_61 body4_6

def body4_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 165)]

def body4_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 193 (Flapjack.WordLangAddr.addr 189 128#64))

def body4_65 : WordLangProgHOL (BitVec 64) :=
.seq body4_63 body4_64

def body4_66 : WordLangProgHOL (BitVec 64) :=
.seq body4_62 body4_65

def body4_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 0#64)

def body4_68 : WordLangProgHOL (BitVec 64) :=
.seq body4_66 body4_67

def body4_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(211, 157), (215, 161), (219, 189), (223, 169), (227, 181)]

def body4_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(233, 211), (237, 215), (241, 219), (245, 223), (249, 227)]

def body4_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(253, 2)]

def body4_72 : WordLangProgHOL (BitVec 64) :=
.seq body4_70 body4_71

def body4_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(265, 253)]

def body4_74 : WordLangProgHOL (BitVec 64) :=
.seq body4_72 body4_73

def body4_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(257, 2)]

def body4_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 257)]

def body4_77 : WordLangProgHOL (BitVec 64) :=
.seq body4_76 body4_16

def body4_78 : WordLangProgHOL (BitVec 64) :=
.seq body4_75 body4_77

def body4_79 : WordLangProgHOL (BitVec 64) :=
.seq body4_70 body4_78

def body4_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 265 0#64)

def body4_81 : WordLangProgHOL (BitVec 64) :=
.seq body4_79 body4_80

def body4_82 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body4_74, 608, 4)) (some 392) ([]) (some (2, body4_81, 608, 5))

def body4_83 : WordLangProgHOL (BitVec 64) :=
.seq body4_69 body4_82

def body4_84 : WordLangProgHOL (BitVec 64) :=
.seq body4_6 body4_83

def body4_85 : WordLangProgHOL (BitVec 64) :=
.seq body4_84 body4_6

def body4_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(269, 241)]

def body4_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 273 (Flapjack.WordLangAddr.addr 269 48#64))

def body4_88 : WordLangProgHOL (BitVec 64) :=
.seq body4_86 body4_87

def body4_89 : WordLangProgHOL (BitVec 64) :=
.seq body4_85 body4_88

def body4_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(279, 233), (283, 237), (287, 269), (291, 265), (295, 245), (299, 249), (303, 273)]

def body4_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(309, 279), (329, 299)]

def body4_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(997, 309), (977, 329)]

def body4_93 : WordLangProgHOL (BitVec 64) :=
.seq body4_91 body4_92

def body4_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(309, 279), (313, 283), (317, 287), (321, 291), (325, 295), (329, 299), (333, 303)]

def body4_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(341, 2)]

def body4_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 341)]

def body4_97 : WordLangProgHOL (BitVec 64) :=
.seq body4_96 body4_16

def body4_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(945, 309), (929, 329)]

def body4_99 : WordLangProgHOL (BitVec 64) :=
.seq body4_97 body4_98

def body4_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 345 (Flapjack.WordStore.temp 0#5)

def body4_101 : WordLangProgHOL (BitVec 64) :=
.seq body4_6 body4_100

def body4_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(349, 345)]

def body4_103 : WordLangProgHOL (BitVec 64) :=
.seq body4_101 body4_102

def body4_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 353 1#64)

def body4_105 : WordLangProgHOL (BitVec 64) :=
.seq body4_103 body4_104

def body4_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(365, 329)]

def body4_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 369 (Flapjack.WordLangAddr.addr 365 208#64))

def body4_108 : WordLangProgHOL (BitVec 64) :=
.seq body4_106 body4_107

def body4_109 : WordLangProgHOL (BitVec 64) :=
.seq body4_6 body4_108

def body4_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(375, 309), (379, 349), (383, 313), (387, 325), (391, 365)]

def body4_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 369)]

def body4_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(397, 375), (401, 379), (405, 383), (409, 387), (413, 391)]

def body4_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(421, 2)]

def body4_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 421)]

def body4_115 : WordLangProgHOL (BitVec 64) :=
.seq body4_114 body4_16

def body4_116 : WordLangProgHOL (BitVec 64) :=
.seq body4_113 body4_115

def body4_117 : WordLangProgHOL (BitVec 64) :=
.seq body4_112 body4_116

def body4_118 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body4_112, 608, 7)) (some 76) ([2]) (some (2, body4_117, 608, 8))

def body4_119 : WordLangProgHOL (BitVec 64) :=
.seq body4_111 body4_118

def body4_120 : WordLangProgHOL (BitVec 64) :=
.seq body4_110 body4_119

def body4_121 : WordLangProgHOL (BitVec 64) :=
.seq body4_109 body4_120

def body4_122 : WordLangProgHOL (BitVec 64) :=
.seq body4_121 body4_6

def body4_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(433, 413)]

def body4_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 437 (Flapjack.WordLangAddr.addr 433 224#64))

def body4_125 : WordLangProgHOL (BitVec 64) :=
.seq body4_123 body4_124

def body4_126 : WordLangProgHOL (BitVec 64) :=
.seq body4_122 body4_125

def body4_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(443, 397), (447, 401), (451, 405), (455, 409)]

def body4_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 437)]

def body4_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(461, 443), (465, 447), (469, 451), (473, 455)]

def body4_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(481, 2)]

def body4_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 481)]

def body4_132 : WordLangProgHOL (BitVec 64) :=
.seq body4_131 body4_16

def body4_133 : WordLangProgHOL (BitVec 64) :=
.seq body4_130 body4_132

def body4_134 : WordLangProgHOL (BitVec 64) :=
.seq body4_129 body4_133

def body4_135 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body4_129, 608, 9)) (some 73) ([2]) (some (2, body4_134, 608, 10))

def body4_136 : WordLangProgHOL (BitVec 64) :=
.seq body4_128 body4_135

def body4_137 : WordLangProgHOL (BitVec 64) :=
.seq body4_127 body4_136

def body4_138 : WordLangProgHOL (BitVec 64) :=
.seq body4_126 body4_137

def body4_139 : WordLangProgHOL (BitVec 64) :=
.seq body4_138 body4_6

def body4_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 493 Flapjack.WordStore.heapLength

def body4_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 497 493 (Flapjack.WordRegImm.imm 1#64)))

def body4_142 : WordLangProgHOL (BitVec 64) :=
.seq body4_140 body4_141

def body4_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 501 497

def body4_144 : WordLangProgHOL (BitVec 64) :=
.seq body4_142 body4_143

def body4_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 505 501 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def body4_146 : WordLangProgHOL (BitVec 64) :=
.seq body4_144 body4_145

def body4_147 : WordLangProgHOL (BitVec 64) :=
.seq body4_139 body4_146

def body4_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(509, 473)]

def body4_149 : WordLangProgHOL (BitVec 64) :=
.seq body4_147 body4_148

def body4_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(513, 509)]

def body4_151 : WordLangProgHOL (BitVec 64) :=
.seq body4_149 body4_150

def body4_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(517, 505)]

def body4_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 513 (Flapjack.WordLangAddr.addr 517 0#64))

def body4_154 : WordLangProgHOL (BitVec 64) :=
.seq body4_152 body4_153

def body4_155 : WordLangProgHOL (BitVec 64) :=
.seq body4_151 body4_154

def body4_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 521 Flapjack.WordStore.heapLength

def body4_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 525 521 (Flapjack.WordRegImm.imm 1#64)))

def body4_158 : WordLangProgHOL (BitVec 64) :=
.seq body4_156 body4_157

def body4_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 529 525

def body4_160 : WordLangProgHOL (BitVec 64) :=
.seq body4_158 body4_159

def body4_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 533 529 (Flapjack.WordRegImm.imm 18446744073709551328#64)))

def body4_162 : WordLangProgHOL (BitVec 64) :=
.seq body4_160 body4_161

def body4_163 : WordLangProgHOL (BitVec 64) :=
.seq body4_155 body4_162

def body4_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(537, 469)]

def body4_165 : WordLangProgHOL (BitVec 64) :=
.seq body4_163 body4_164

def body4_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(541, 537)]

def body4_167 : WordLangProgHOL (BitVec 64) :=
.seq body4_165 body4_166

def body4_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(545, 533)]

def body4_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 541 (Flapjack.WordLangAddr.addr 545 0#64))

def body4_170 : WordLangProgHOL (BitVec 64) :=
.seq body4_168 body4_169

def body4_171 : WordLangProgHOL (BitVec 64) :=
.seq body4_167 body4_170

def body4_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(549, 465)]

def body4_173 : WordLangProgHOL (BitVec 64) :=
.seq body4_171 body4_172

def body4_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(553, 549)]

def body4_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 553)

def body4_176 : WordLangProgHOL (BitVec 64) :=
.seq body4_174 body4_175

def body4_177 : WordLangProgHOL (BitVec 64) :=
.seq body4_173 body4_176

def body4_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 557 8#64)

def body4_179 : WordLangProgHOL (BitVec 64) :=
.seq body4_177 body4_178

def body4_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 557)]

def body4_181 : WordLangProgHOL (BitVec 64) :=
.seq body4_180 body4_16

def body4_182 : WordLangProgHOL (BitVec 64) :=
.seq body4_179 body4_181

def body4_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(593, 461), (585, 549), (581, 537), (573, 509)]

def body4_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 597 0#64)

def body4_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 601 0#64)

def body4_186 : WordLangProgHOL (BitVec 64) :=
.seq body4_184 body4_185

def body4_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 605 0#64)

def body4_188 : WordLangProgHOL (BitVec 64) :=
.seq body4_186 body4_187

def body4_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 609 0#64)

def body4_190 : WordLangProgHOL (BitVec 64) :=
.seq body4_188 body4_189

def body4_191 : WordLangProgHOL (BitVec 64) :=
.seq body4_183 body4_190

def body4_192 : WordLangProgHOL (BitVec 64) :=
.seq body4_182 body4_191

def body4_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(593, 309), (585, 349), (581, 313), (573, 325)]

def body4_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(597, 333)]

def body4_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(601, 329)]

def body4_196 : WordLangProgHOL (BitVec 64) :=
.seq body4_194 body4_195

def body4_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(605, 321)]

def body4_198 : WordLangProgHOL (BitVec 64) :=
.seq body4_196 body4_197

def body4_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(609, 317)]

def body4_200 : WordLangProgHOL (BitVec 64) :=
.seq body4_198 body4_199

def body4_201 : WordLangProgHOL (BitVec 64) :=
.seq body4_193 body4_200

def body4_202 : WordLangProgHOL (BitVec 64) :=
.seq body4_6 body4_201

def body4_203 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 349 (Flapjack.WordRegImm.reg 353) body4_192 body4_202

def body4_204 : WordLangProgHOL (BitVec 64) :=
.seq body4_105 body4_203

def body4_205 : WordLangProgHOL (BitVec 64) :=
.seq body4_204 body4_6

def body4_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(621, 605)]

def body4_207 : WordLangProgHOL (BitVec 64) :=
.seq body4_205 body4_206

def body4_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(627, 593), (631, 585), (635, 581), (639, 609), (643, 573), (647, 601), (651, 597)]

def body4_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 621)]

def body4_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(657, 627), (661, 631), (665, 635), (669, 639), (673, 643), (677, 647), (681, 651)]

def body4_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(689, 2)]

def body4_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 689)]

def body4_213 : WordLangProgHOL (BitVec 64) :=
.seq body4_212 body4_16

def body4_214 : WordLangProgHOL (BitVec 64) :=
.seq body4_211 body4_213

def body4_215 : WordLangProgHOL (BitVec 64) :=
.seq body4_210 body4_214

def body4_216 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body4_210, 608, 11)) (some 393) ([2]) (some (2, body4_215, 608, 12))

def body4_217 : WordLangProgHOL (BitVec 64) :=
.seq body4_209 body4_216

def body4_218 : WordLangProgHOL (BitVec 64) :=
.seq body4_208 body4_217

def body4_219 : WordLangProgHOL (BitVec 64) :=
.seq body4_207 body4_218

def body4_220 : WordLangProgHOL (BitVec 64) :=
.seq body4_219 body4_6

def body4_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(701, 669)]

def body4_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 705 701 (Flapjack.WordRegImm.imm 48#64)))

def body4_223 : WordLangProgHOL (BitVec 64) :=
.seq body4_221 body4_222

def body4_224 : WordLangProgHOL (BitVec 64) :=
.seq body4_220 body4_223

def body4_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(709, 681)]

def body4_226 : WordLangProgHOL (BitVec 64) :=
.seq body4_224 body4_225

def body4_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(713, 709)]

def body4_228 : WordLangProgHOL (BitVec 64) :=
.seq body4_226 body4_227

def body4_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(717, 705)]

def body4_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 713 (Flapjack.WordLangAddr.addr 717 0#64))

def body4_231 : WordLangProgHOL (BitVec 64) :=
.seq body4_229 body4_230

def body4_232 : WordLangProgHOL (BitVec 64) :=
.seq body4_228 body4_231

def body4_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 721 Flapjack.WordStore.heapLength

def body4_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 725 721 (Flapjack.WordRegImm.imm 1#64)))

def body4_235 : WordLangProgHOL (BitVec 64) :=
.seq body4_233 body4_234

def body4_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 729 725

def body4_237 : WordLangProgHOL (BitVec 64) :=
.seq body4_235 body4_236

def body4_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 733 (Flapjack.WordLangAddr.addr 729 18446744073709551360#64))

def body4_239 : WordLangProgHOL (BitVec 64) :=
.seq body4_237 body4_238

def body4_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 737 733 (Flapjack.WordRegImm.imm 200#64)))

def body4_241 : WordLangProgHOL (BitVec 64) :=
.seq body4_239 body4_240

def body4_242 : WordLangProgHOL (BitVec 64) :=
.seq body4_232 body4_241

def body4_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 741 0#64)

def body4_244 : WordLangProgHOL (BitVec 64) :=
.seq body4_242 body4_243

def body4_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(745, 741)]

def body4_246 : WordLangProgHOL (BitVec 64) :=
.seq body4_244 body4_245

def body4_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(749, 737)]

def body4_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 745 (Flapjack.WordLangAddr.addr 749 0#64))

def body4_249 : WordLangProgHOL (BitVec 64) :=
.seq body4_247 body4_248

def body4_250 : WordLangProgHOL (BitVec 64) :=
.seq body4_246 body4_249

def body4_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(755, 657), (759, 661), (763, 665), (767, 673), (771, 677)]

def body4_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(777, 755), (781, 759), (785, 763), (789, 767), (793, 771)]

def body4_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(801, 2)]

def body4_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 801)]

def body4_255 : WordLangProgHOL (BitVec 64) :=
.seq body4_254 body4_16

def body4_256 : WordLangProgHOL (BitVec 64) :=
.seq body4_253 body4_255

def body4_257 : WordLangProgHOL (BitVec 64) :=
.seq body4_252 body4_256

def body4_258 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))))),
  Flapjack.Spt.ln)), body4_252, 608, 13)) (some 476) ([]) (some (2, body4_257, 608, 14))

def body4_259 : WordLangProgHOL (BitVec 64) :=
.seq body4_251 body4_258

def body4_260 : WordLangProgHOL (BitVec 64) :=
.seq body4_250 body4_259

def body4_261 : WordLangProgHOL (BitVec 64) :=
.seq body4_260 body4_6

def body4_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(813, 781)]

def body4_263 : WordLangProgHOL (BitVec 64) :=
.seq body4_261 body4_262

def body4_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(819, 777), (823, 785), (827, 789), (831, 793)]

def body4_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 813)]

def body4_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(837, 819), (841, 823), (845, 827), (849, 831)]

def body4_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(857, 2)]

def body4_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 857)]

def body4_269 : WordLangProgHOL (BitVec 64) :=
.seq body4_268 body4_16

def body4_270 : WordLangProgHOL (BitVec 64) :=
.seq body4_267 body4_269

def body4_271 : WordLangProgHOL (BitVec 64) :=
.seq body4_266 body4_270

def body4_272 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body4_266, 608, 15)) (some 606) ([2]) (some (2, body4_271, 608, 16))

def body4_273 : WordLangProgHOL (BitVec 64) :=
.seq body4_265 body4_272

def body4_274 : WordLangProgHOL (BitVec 64) :=
.seq body4_264 body4_273

def body4_275 : WordLangProgHOL (BitVec 64) :=
.seq body4_263 body4_274

def body4_276 : WordLangProgHOL (BitVec 64) :=
.seq body4_275 body4_6

def body4_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 869 Flapjack.WordStore.heapLength

def body4_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 873 869 (Flapjack.WordRegImm.imm 1#64)))

def body4_279 : WordLangProgHOL (BitVec 64) :=
.seq body4_277 body4_278

def body4_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 877 873

def body4_281 : WordLangProgHOL (BitVec 64) :=
.seq body4_279 body4_280

def body4_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 881 877 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def body4_283 : WordLangProgHOL (BitVec 64) :=
.seq body4_281 body4_282

def body4_284 : WordLangProgHOL (BitVec 64) :=
.seq body4_276 body4_283

def body4_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(885, 845)]

def body4_286 : WordLangProgHOL (BitVec 64) :=
.seq body4_284 body4_285

def body4_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(889, 885)]

def body4_288 : WordLangProgHOL (BitVec 64) :=
.seq body4_286 body4_287

def body4_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(893, 881)]

def body4_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 889 (Flapjack.WordLangAddr.addr 893 0#64))

def body4_291 : WordLangProgHOL (BitVec 64) :=
.seq body4_289 body4_290

def body4_292 : WordLangProgHOL (BitVec 64) :=
.seq body4_288 body4_291

def body4_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 897 Flapjack.WordStore.heapLength

def body4_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 901 897 (Flapjack.WordRegImm.imm 1#64)))

def body4_295 : WordLangProgHOL (BitVec 64) :=
.seq body4_293 body4_294

def body4_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 905 901

def body4_297 : WordLangProgHOL (BitVec 64) :=
.seq body4_295 body4_296

def body4_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 909 905 (Flapjack.WordRegImm.imm 18446744073709551328#64)))

def body4_299 : WordLangProgHOL (BitVec 64) :=
.seq body4_297 body4_298

def body4_300 : WordLangProgHOL (BitVec 64) :=
.seq body4_292 body4_299

def body4_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(913, 841)]

def body4_302 : WordLangProgHOL (BitVec 64) :=
.seq body4_300 body4_301

def body4_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(917, 913)]

def body4_304 : WordLangProgHOL (BitVec 64) :=
.seq body4_302 body4_303

def body4_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(921, 909)]

def body4_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 917 (Flapjack.WordLangAddr.addr 921 0#64))

def body4_307 : WordLangProgHOL (BitVec 64) :=
.seq body4_305 body4_306

def body4_308 : WordLangProgHOL (BitVec 64) :=
.seq body4_304 body4_307

def body4_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(925, 849)]

def body4_310 : WordLangProgHOL (BitVec 64) :=
.seq body4_308 body4_309

def body4_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 925)]

def body4_312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 837 [2]

def body4_313 : WordLangProgHOL (BitVec 64) :=
.seq body4_311 body4_312

def body4_314 : WordLangProgHOL (BitVec 64) :=
.seq body4_310 body4_313

def body4_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(945, 837), (929, 925)]

def body4_316 : WordLangProgHOL (BitVec 64) :=
.seq body4_314 body4_315

def body4_317 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 341 (Flapjack.WordRegImm.imm 8#64) body4_99 body4_316

def body4_318 : WordLangProgHOL (BitVec 64) :=
.seq body4_317 body4_6

def body4_319 : WordLangProgHOL (BitVec 64) :=
.seq body4_95 body4_318

def body4_320 : WordLangProgHOL (BitVec 64) :=
.seq body4_94 body4_319

def body4_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(997, 945), (977, 929)]

def body4_322 : WordLangProgHOL (BitVec 64) :=
.seq body4_320 body4_321

def body4_323 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body4_93, 608, 6)) (some 607) ([]) (some (2, body4_322, 608, 17))

def body4_324 : WordLangProgHOL (BitVec 64) :=
.seq body4_90 body4_323

def body4_325 : WordLangProgHOL (BitVec 64) :=
.seq body4_89 body4_324

def body4_326 : WordLangProgHOL (BitVec 64) :=
.seq body4_325 body4_6

def body4_327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1057, 997), (1033, 977)]

def body4_328 : WordLangProgHOL (BitVec 64) :=
.seq body4_326 body4_327

def body4_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1057, 157), (1033, 181)]

def body4_330 : WordLangProgHOL (BitVec 64) :=
.seq body4_6 body4_329

def body4_331 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 193 (Flapjack.WordRegImm.reg 197) body4_328 body4_330

def body4_332 : WordLangProgHOL (BitVec 64) :=
.seq body4_68 body4_331

def body4_333 : WordLangProgHOL (BitVec 64) :=
.seq body4_332 body4_6

def body4_334 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1083, 1057), (1087, 1033)]

def body4_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1093, 1083), (1097, 1087)]

def body4_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1101, 2)]

def body4_337 : WordLangProgHOL (BitVec 64) :=
.seq body4_335 body4_336

def body4_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1113, 1101)]

def body4_339 : WordLangProgHOL (BitVec 64) :=
.seq body4_337 body4_338

def body4_340 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1105, 2)]

def body4_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1105)]

def body4_342 : WordLangProgHOL (BitVec 64) :=
.seq body4_341 body4_16

def body4_343 : WordLangProgHOL (BitVec 64) :=
.seq body4_340 body4_342

def body4_344 : WordLangProgHOL (BitVec 64) :=
.seq body4_335 body4_343

def body4_345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1113 0#64)

def body4_346 : WordLangProgHOL (BitVec 64) :=
.seq body4_344 body4_345

def body4_347 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
                Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body4_339, 608, 18)) (some 392) ([]) (some (2, body4_346, 608, 19))

def body4_348 : WordLangProgHOL (BitVec 64) :=
.seq body4_334 body4_347

def body4_349 : WordLangProgHOL (BitVec 64) :=
.seq body4_333 body4_348

def body4_350 : WordLangProgHOL (BitVec 64) :=
.seq body4_349 body4_6

def body4_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 1117 Flapjack.WordStore.heapLength

def body4_352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1121 1117 (Flapjack.WordRegImm.imm 1#64)))

def body4_353 : WordLangProgHOL (BitVec 64) :=
.seq body4_351 body4_352

def body4_354 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1125 1121

def body4_355 : WordLangProgHOL (BitVec 64) :=
.seq body4_353 body4_354

def body4_356 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1129 (Flapjack.WordLangAddr.addr 1125 18446744073709551328#64))

def body4_357 : WordLangProgHOL (BitVec 64) :=
.seq body4_355 body4_356

def body4_358 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1133 1129 (Flapjack.WordRegImm.imm 24#64)))

def body4_359 : WordLangProgHOL (BitVec 64) :=
.seq body4_357 body4_358

def body4_360 : WordLangProgHOL (BitVec 64) :=
.seq body4_350 body4_359

def body4_361 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1137, 1113)]

def body4_362 : WordLangProgHOL (BitVec 64) :=
.seq body4_360 body4_361

def body4_363 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1141, 1137)]

def body4_364 : WordLangProgHOL (BitVec 64) :=
.seq body4_362 body4_363

def body4_365 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1145, 1133)]

def body4_366 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1141 (Flapjack.WordLangAddr.addr 1145 0#64))

def body4_367 : WordLangProgHOL (BitVec 64) :=
.seq body4_365 body4_366

def body4_368 : WordLangProgHOL (BitVec 64) :=
.seq body4_364 body4_367

def body4_369 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1151, 1093), (1155, 1097)]

def body4_370 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1161, 1151), (1165, 1155)]

def body4_371 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1173, 2)]

def body4_372 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1173)]

def body4_373 : WordLangProgHOL (BitVec 64) :=
.seq body4_372 body4_16

def body4_374 : WordLangProgHOL (BitVec 64) :=
.seq body4_371 body4_373

def body4_375 : WordLangProgHOL (BitVec 64) :=
.seq body4_370 body4_374

def body4_376 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body4_370, 608, 20)) (some 601) ([]) (some (2, body4_375, 608, 21))

def body4_377 : WordLangProgHOL (BitVec 64) :=
.seq body4_369 body4_376

def body4_378 : WordLangProgHOL (BitVec 64) :=
.seq body4_368 body4_377

def body4_379 : WordLangProgHOL (BitVec 64) :=
.seq body4_378 body4_6

def body4_380 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1187, 1161), (1191, 1165)]

def body4_381 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1197, 1187), (1201, 1191)]

def body4_382 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1209, 2)]

def body4_383 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1209)]

def body4_384 : WordLangProgHOL (BitVec 64) :=
.seq body4_383 body4_16

def body4_385 : WordLangProgHOL (BitVec 64) :=
.seq body4_382 body4_384

def body4_386 : WordLangProgHOL (BitVec 64) :=
.seq body4_381 body4_385

def body4_387 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body4_381, 608, 22)) (some 604) ([]) (some (2, body4_386, 608, 23))

def body4_388 : WordLangProgHOL (BitVec 64) :=
.seq body4_380 body4_387

def body4_389 : WordLangProgHOL (BitVec 64) :=
.seq body4_379 body4_388

def body4_390 : WordLangProgHOL (BitVec 64) :=
.seq body4_389 body4_6

def body4_391 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1221, 1201)]

def body4_392 : WordLangProgHOL (BitVec 64) :=
.seq body4_390 body4_391

def body4_393 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 1221)]

def body4_394 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 1197 [2]

def body4_395 : WordLangProgHOL (BitVec 64) :=
.seq body4_393 body4_394

def body4_396 : WordLangProgHOL (BitVec 64) :=
.seq body4_392 body4_395

def body4_397 : WordLangProgHOL (BitVec 64) :=
.seq body4_0 body4_396

def pass4 : WordLangProgHOL (BitVec 64) := body4_397
def body5_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 0), (33, 2)]

def body5_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 37 1024#64)

def body5_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(41, 33)]

def body5_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 45 (Flapjack.WordLangAddr.addr 41 128#64))

def body5_4 : WordLangProgHOL (BitVec 64) :=
.seq body5_2 body5_3

def body5_5 : WordLangProgHOL (BitVec 64) :=
.seq body5_1 body5_4

def body5_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body5_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 57 7#64)

def body5_8 : WordLangProgHOL (BitVec 64) :=
.seq body5_6 body5_7

def body5_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(61, 57)]

def body5_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 61)

def body5_11 : WordLangProgHOL (BitVec 64) :=
.seq body5_9 body5_10

def body5_12 : WordLangProgHOL (BitVec 64) :=
.seq body5_8 body5_11

def body5_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 8#64)

def body5_14 : WordLangProgHOL (BitVec 64) :=
.seq body5_12 body5_13

def body5_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 65)]

def body5_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body5_17 : WordLangProgHOL (BitVec 64) :=
.seq body5_15 body5_16

def body5_18 : WordLangProgHOL (BitVec 64) :=
.seq body5_14 body5_17

def body5_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body5_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 37 (Flapjack.WordRegImm.reg 45) body5_18 body5_19

def body5_21 : WordLangProgHOL (BitVec 64) :=
.seq body5_20 body5_6

def body5_22 : WordLangProgHOL (BitVec 64) :=
.seq body5_5 body5_21

def body5_23 : WordLangProgHOL (BitVec 64) :=
.seq body5_22 body5_6

def body5_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 93 Flapjack.WordStore.heapLength

def body5_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 97 93 (Flapjack.WordRegImm.imm 1#64)))

def body5_26 : WordLangProgHOL (BitVec 64) :=
.seq body5_24 body5_25

def body5_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 101 97

def body5_28 : WordLangProgHOL (BitVec 64) :=
.seq body5_26 body5_27

def body5_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 105 (Flapjack.WordLangAddr.addr 101 18446744073709551360#64))

def body5_30 : WordLangProgHOL (BitVec 64) :=
.seq body5_28 body5_29

def body5_31 : WordLangProgHOL (BitVec 64) :=
.seq body5_23 body5_30

def body5_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(109, 93)]

def body5_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 97)]

def body5_34 : WordLangProgHOL (BitVec 64) :=
.seq body5_32 body5_33

def body5_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(117, 101)]

def body5_36 : WordLangProgHOL (BitVec 64) :=
.seq body5_34 body5_35

def body5_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 121 (Flapjack.WordLangAddr.addr 117 18446744073709551328#64))

def body5_38 : WordLangProgHOL (BitVec 64) :=
.seq body5_36 body5_37

def body5_39 : WordLangProgHOL (BitVec 64) :=
.seq body5_31 body5_38

def body5_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(125, 41)]

def body5_41 : WordLangProgHOL (BitVec 64) :=
.seq body5_39 body5_40

def body5_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 0#64)

def body5_43 : WordLangProgHOL (BitVec 64) :=
.seq body5_41 body5_42

def body5_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(139, 29), (143, 121), (147, 125), (151, 105)]

def body5_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 125), (4, 133)]

def body5_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 139), (161, 143), (165, 147), (169, 151)]

def body5_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(173, 2)]

def body5_48 : WordLangProgHOL (BitVec 64) :=
.seq body5_46 body5_47

def body5_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(181, 173)]

def body5_50 : WordLangProgHOL (BitVec 64) :=
.seq body5_48 body5_49

def body5_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(177, 2)]

def body5_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 177)]

def body5_53 : WordLangProgHOL (BitVec 64) :=
.seq body5_52 body5_16

def body5_54 : WordLangProgHOL (BitVec 64) :=
.seq body5_51 body5_53

def body5_55 : WordLangProgHOL (BitVec 64) :=
.seq body5_46 body5_54

def body5_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 181 0#64)

def body5_57 : WordLangProgHOL (BitVec 64) :=
.seq body5_55 body5_56

def body5_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body5_50, 608, 2)) (some 598) ([2, 4]) (some (2, body5_57, 608, 3))

def body5_59 : WordLangProgHOL (BitVec 64) :=
.seq body5_45 body5_58

def body5_60 : WordLangProgHOL (BitVec 64) :=
.seq body5_44 body5_59

def body5_61 : WordLangProgHOL (BitVec 64) :=
.seq body5_43 body5_60

def body5_62 : WordLangProgHOL (BitVec 64) :=
.seq body5_61 body5_6

def body5_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 165)]

def body5_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 193 (Flapjack.WordLangAddr.addr 189 128#64))

def body5_65 : WordLangProgHOL (BitVec 64) :=
.seq body5_63 body5_64

def body5_66 : WordLangProgHOL (BitVec 64) :=
.seq body5_62 body5_65

def body5_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 0#64)

def body5_68 : WordLangProgHOL (BitVec 64) :=
.seq body5_66 body5_67

def body5_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(211, 157), (215, 161), (219, 189), (223, 169), (227, 181)]

def body5_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(233, 211), (237, 215), (241, 219), (245, 223), (249, 227)]

def body5_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(253, 2)]

def body5_72 : WordLangProgHOL (BitVec 64) :=
.seq body5_70 body5_71

def body5_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(265, 253)]

def body5_74 : WordLangProgHOL (BitVec 64) :=
.seq body5_72 body5_73

def body5_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(257, 2)]

def body5_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 257)]

def body5_77 : WordLangProgHOL (BitVec 64) :=
.seq body5_76 body5_16

def body5_78 : WordLangProgHOL (BitVec 64) :=
.seq body5_75 body5_77

def body5_79 : WordLangProgHOL (BitVec 64) :=
.seq body5_70 body5_78

def body5_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 265 0#64)

def body5_81 : WordLangProgHOL (BitVec 64) :=
.seq body5_79 body5_80

def body5_82 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body5_74, 608, 4)) (some 392) ([]) (some (2, body5_81, 608, 5))

def body5_83 : WordLangProgHOL (BitVec 64) :=
.seq body5_69 body5_82

def body5_84 : WordLangProgHOL (BitVec 64) :=
.seq body5_6 body5_83

def body5_85 : WordLangProgHOL (BitVec 64) :=
.seq body5_84 body5_6

def body5_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(269, 241)]

def body5_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 273 (Flapjack.WordLangAddr.addr 269 48#64))

def body5_88 : WordLangProgHOL (BitVec 64) :=
.seq body5_86 body5_87

def body5_89 : WordLangProgHOL (BitVec 64) :=
.seq body5_85 body5_88

def body5_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(279, 233), (283, 237), (287, 269), (291, 265), (295, 245), (299, 249), (303, 273)]

def body5_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(309, 279), (329, 299)]

def body5_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(997, 309), (977, 329)]

def body5_93 : WordLangProgHOL (BitVec 64) :=
.seq body5_91 body5_92

def body5_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(309, 279), (313, 283), (317, 287), (321, 291), (325, 295), (329, 299), (333, 303)]

def body5_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(341, 2)]

def body5_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 341)]

def body5_97 : WordLangProgHOL (BitVec 64) :=
.seq body5_96 body5_16

def body5_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(945, 309), (929, 329)]

def body5_99 : WordLangProgHOL (BitVec 64) :=
.seq body5_97 body5_98

def body5_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 345 (Flapjack.WordStore.temp 0#5)

def body5_101 : WordLangProgHOL (BitVec 64) :=
.seq body5_6 body5_100

def body5_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(349, 345)]

def body5_103 : WordLangProgHOL (BitVec 64) :=
.seq body5_101 body5_102

def body5_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 353 1#64)

def body5_105 : WordLangProgHOL (BitVec 64) :=
.seq body5_103 body5_104

def body5_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(365, 329)]

def body5_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 369 (Flapjack.WordLangAddr.addr 365 208#64))

def body5_108 : WordLangProgHOL (BitVec 64) :=
.seq body5_106 body5_107

def body5_109 : WordLangProgHOL (BitVec 64) :=
.seq body5_6 body5_108

def body5_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(375, 309), (379, 349), (383, 313), (387, 325), (391, 365)]

def body5_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 369)]

def body5_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(397, 375), (401, 379), (405, 383), (409, 387), (413, 391)]

def body5_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(421, 2)]

def body5_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 421)]

def body5_115 : WordLangProgHOL (BitVec 64) :=
.seq body5_114 body5_16

def body5_116 : WordLangProgHOL (BitVec 64) :=
.seq body5_113 body5_115

def body5_117 : WordLangProgHOL (BitVec 64) :=
.seq body5_112 body5_116

def body5_118 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body5_112, 608, 7)) (some 76) ([2]) (some (2, body5_117, 608, 8))

def body5_119 : WordLangProgHOL (BitVec 64) :=
.seq body5_111 body5_118

def body5_120 : WordLangProgHOL (BitVec 64) :=
.seq body5_110 body5_119

def body5_121 : WordLangProgHOL (BitVec 64) :=
.seq body5_109 body5_120

def body5_122 : WordLangProgHOL (BitVec 64) :=
.seq body5_121 body5_6

def body5_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(433, 413)]

def body5_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 437 (Flapjack.WordLangAddr.addr 433 224#64))

def body5_125 : WordLangProgHOL (BitVec 64) :=
.seq body5_123 body5_124

def body5_126 : WordLangProgHOL (BitVec 64) :=
.seq body5_122 body5_125

def body5_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(443, 397), (447, 401), (451, 405), (455, 409)]

def body5_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 437)]

def body5_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(461, 443), (465, 447), (469, 451), (473, 455)]

def body5_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(481, 2)]

def body5_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 481)]

def body5_132 : WordLangProgHOL (BitVec 64) :=
.seq body5_131 body5_16

def body5_133 : WordLangProgHOL (BitVec 64) :=
.seq body5_130 body5_132

def body5_134 : WordLangProgHOL (BitVec 64) :=
.seq body5_129 body5_133

def body5_135 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body5_129, 608, 9)) (some 73) ([2]) (some (2, body5_134, 608, 10))

def body5_136 : WordLangProgHOL (BitVec 64) :=
.seq body5_128 body5_135

def body5_137 : WordLangProgHOL (BitVec 64) :=
.seq body5_127 body5_136

def body5_138 : WordLangProgHOL (BitVec 64) :=
.seq body5_126 body5_137

def body5_139 : WordLangProgHOL (BitVec 64) :=
.seq body5_138 body5_6

def body5_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 493 Flapjack.WordStore.heapLength

def body5_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 497 493 (Flapjack.WordRegImm.imm 1#64)))

def body5_142 : WordLangProgHOL (BitVec 64) :=
.seq body5_140 body5_141

def body5_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 501 497

def body5_144 : WordLangProgHOL (BitVec 64) :=
.seq body5_142 body5_143

def body5_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 505 501 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def body5_146 : WordLangProgHOL (BitVec 64) :=
.seq body5_144 body5_145

def body5_147 : WordLangProgHOL (BitVec 64) :=
.seq body5_139 body5_146

def body5_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(509, 473)]

def body5_149 : WordLangProgHOL (BitVec 64) :=
.seq body5_147 body5_148

def body5_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(513, 509)]

def body5_151 : WordLangProgHOL (BitVec 64) :=
.seq body5_149 body5_150

def body5_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(517, 505)]

def body5_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 513 (Flapjack.WordLangAddr.addr 517 0#64))

def body5_154 : WordLangProgHOL (BitVec 64) :=
.seq body5_152 body5_153

def body5_155 : WordLangProgHOL (BitVec 64) :=
.seq body5_151 body5_154

def body5_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 521 Flapjack.WordStore.heapLength

def body5_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 525 521 (Flapjack.WordRegImm.imm 1#64)))

def body5_158 : WordLangProgHOL (BitVec 64) :=
.seq body5_156 body5_157

def body5_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 529 525

def body5_160 : WordLangProgHOL (BitVec 64) :=
.seq body5_158 body5_159

def body5_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 533 529 (Flapjack.WordRegImm.imm 18446744073709551328#64)))

def body5_162 : WordLangProgHOL (BitVec 64) :=
.seq body5_160 body5_161

def body5_163 : WordLangProgHOL (BitVec 64) :=
.seq body5_155 body5_162

def body5_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(537, 469)]

def body5_165 : WordLangProgHOL (BitVec 64) :=
.seq body5_163 body5_164

def body5_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(541, 537)]

def body5_167 : WordLangProgHOL (BitVec 64) :=
.seq body5_165 body5_166

def body5_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(545, 533)]

def body5_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 541 (Flapjack.WordLangAddr.addr 545 0#64))

def body5_170 : WordLangProgHOL (BitVec 64) :=
.seq body5_168 body5_169

def body5_171 : WordLangProgHOL (BitVec 64) :=
.seq body5_167 body5_170

def body5_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(549, 465)]

def body5_173 : WordLangProgHOL (BitVec 64) :=
.seq body5_171 body5_172

def body5_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(553, 549)]

def body5_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 553)

def body5_176 : WordLangProgHOL (BitVec 64) :=
.seq body5_174 body5_175

def body5_177 : WordLangProgHOL (BitVec 64) :=
.seq body5_173 body5_176

def body5_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 557 8#64)

def body5_179 : WordLangProgHOL (BitVec 64) :=
.seq body5_177 body5_178

def body5_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 557)]

def body5_181 : WordLangProgHOL (BitVec 64) :=
.seq body5_180 body5_16

def body5_182 : WordLangProgHOL (BitVec 64) :=
.seq body5_179 body5_181

def body5_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(593, 461), (585, 549), (581, 537), (573, 509)]

def body5_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 597 0#64)

def body5_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 601 0#64)

def body5_186 : WordLangProgHOL (BitVec 64) :=
.seq body5_184 body5_185

def body5_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 605 0#64)

def body5_188 : WordLangProgHOL (BitVec 64) :=
.seq body5_186 body5_187

def body5_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 609 0#64)

def body5_190 : WordLangProgHOL (BitVec 64) :=
.seq body5_188 body5_189

def body5_191 : WordLangProgHOL (BitVec 64) :=
.seq body5_183 body5_190

def body5_192 : WordLangProgHOL (BitVec 64) :=
.seq body5_182 body5_191

def body5_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(593, 309), (585, 349), (581, 313), (573, 325)]

def body5_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(597, 333)]

def body5_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(601, 329)]

def body5_196 : WordLangProgHOL (BitVec 64) :=
.seq body5_194 body5_195

def body5_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(605, 321)]

def body5_198 : WordLangProgHOL (BitVec 64) :=
.seq body5_196 body5_197

def body5_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(609, 317)]

def body5_200 : WordLangProgHOL (BitVec 64) :=
.seq body5_198 body5_199

def body5_201 : WordLangProgHOL (BitVec 64) :=
.seq body5_193 body5_200

def body5_202 : WordLangProgHOL (BitVec 64) :=
.seq body5_6 body5_201

def body5_203 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 349 (Flapjack.WordRegImm.reg 353) body5_192 body5_202

def body5_204 : WordLangProgHOL (BitVec 64) :=
.seq body5_105 body5_203

def body5_205 : WordLangProgHOL (BitVec 64) :=
.seq body5_204 body5_6

def body5_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(621, 605)]

def body5_207 : WordLangProgHOL (BitVec 64) :=
.seq body5_205 body5_206

def body5_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(627, 593), (631, 585), (635, 581), (639, 609), (643, 573), (647, 601), (651, 597)]

def body5_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 621)]

def body5_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(657, 627), (661, 631), (665, 635), (669, 639), (673, 643), (677, 647), (681, 651)]

def body5_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(689, 2)]

def body5_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 689)]

def body5_213 : WordLangProgHOL (BitVec 64) :=
.seq body5_212 body5_16

def body5_214 : WordLangProgHOL (BitVec 64) :=
.seq body5_211 body5_213

def body5_215 : WordLangProgHOL (BitVec 64) :=
.seq body5_210 body5_214

def body5_216 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body5_210, 608, 11)) (some 393) ([2]) (some (2, body5_215, 608, 12))

def body5_217 : WordLangProgHOL (BitVec 64) :=
.seq body5_209 body5_216

def body5_218 : WordLangProgHOL (BitVec 64) :=
.seq body5_208 body5_217

def body5_219 : WordLangProgHOL (BitVec 64) :=
.seq body5_207 body5_218

def body5_220 : WordLangProgHOL (BitVec 64) :=
.seq body5_219 body5_6

def body5_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(701, 669)]

def body5_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 705 701 (Flapjack.WordRegImm.imm 48#64)))

def body5_223 : WordLangProgHOL (BitVec 64) :=
.seq body5_221 body5_222

def body5_224 : WordLangProgHOL (BitVec 64) :=
.seq body5_220 body5_223

def body5_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(709, 681)]

def body5_226 : WordLangProgHOL (BitVec 64) :=
.seq body5_224 body5_225

def body5_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(713, 709)]

def body5_228 : WordLangProgHOL (BitVec 64) :=
.seq body5_226 body5_227

def body5_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(717, 705)]

def body5_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 713 (Flapjack.WordLangAddr.addr 717 0#64))

def body5_231 : WordLangProgHOL (BitVec 64) :=
.seq body5_229 body5_230

def body5_232 : WordLangProgHOL (BitVec 64) :=
.seq body5_228 body5_231

def body5_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 721 Flapjack.WordStore.heapLength

def body5_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 725 721 (Flapjack.WordRegImm.imm 1#64)))

def body5_235 : WordLangProgHOL (BitVec 64) :=
.seq body5_233 body5_234

def body5_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 729 725

def body5_237 : WordLangProgHOL (BitVec 64) :=
.seq body5_235 body5_236

def body5_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 733 (Flapjack.WordLangAddr.addr 729 18446744073709551360#64))

def body5_239 : WordLangProgHOL (BitVec 64) :=
.seq body5_237 body5_238

def body5_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 737 733 (Flapjack.WordRegImm.imm 200#64)))

def body5_241 : WordLangProgHOL (BitVec 64) :=
.seq body5_239 body5_240

def body5_242 : WordLangProgHOL (BitVec 64) :=
.seq body5_232 body5_241

def body5_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 741 0#64)

def body5_244 : WordLangProgHOL (BitVec 64) :=
.seq body5_242 body5_243

def body5_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(745, 741)]

def body5_246 : WordLangProgHOL (BitVec 64) :=
.seq body5_244 body5_245

def body5_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(749, 737)]

def body5_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 745 (Flapjack.WordLangAddr.addr 749 0#64))

def body5_249 : WordLangProgHOL (BitVec 64) :=
.seq body5_247 body5_248

def body5_250 : WordLangProgHOL (BitVec 64) :=
.seq body5_246 body5_249

def body5_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(755, 657), (759, 661), (763, 665), (767, 673), (771, 677)]

def body5_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(777, 755), (781, 759), (785, 763), (789, 767), (793, 771)]

def body5_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(801, 2)]

def body5_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 801)]

def body5_255 : WordLangProgHOL (BitVec 64) :=
.seq body5_254 body5_16

def body5_256 : WordLangProgHOL (BitVec 64) :=
.seq body5_253 body5_255

def body5_257 : WordLangProgHOL (BitVec 64) :=
.seq body5_252 body5_256

def body5_258 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))))),
  Flapjack.Spt.ln)), body5_252, 608, 13)) (some 476) ([]) (some (2, body5_257, 608, 14))

def body5_259 : WordLangProgHOL (BitVec 64) :=
.seq body5_251 body5_258

def body5_260 : WordLangProgHOL (BitVec 64) :=
.seq body5_250 body5_259

def body5_261 : WordLangProgHOL (BitVec 64) :=
.seq body5_260 body5_6

def body5_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(813, 781)]

def body5_263 : WordLangProgHOL (BitVec 64) :=
.seq body5_261 body5_262

def body5_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(819, 777), (823, 785), (827, 789), (831, 793)]

def body5_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 813)]

def body5_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(837, 819), (841, 823), (845, 827), (849, 831)]

def body5_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(857, 2)]

def body5_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 857)]

def body5_269 : WordLangProgHOL (BitVec 64) :=
.seq body5_268 body5_16

def body5_270 : WordLangProgHOL (BitVec 64) :=
.seq body5_267 body5_269

def body5_271 : WordLangProgHOL (BitVec 64) :=
.seq body5_266 body5_270

def body5_272 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body5_266, 608, 15)) (some 606) ([2]) (some (2, body5_271, 608, 16))

def body5_273 : WordLangProgHOL (BitVec 64) :=
.seq body5_265 body5_272

def body5_274 : WordLangProgHOL (BitVec 64) :=
.seq body5_264 body5_273

def body5_275 : WordLangProgHOL (BitVec 64) :=
.seq body5_263 body5_274

def body5_276 : WordLangProgHOL (BitVec 64) :=
.seq body5_275 body5_6

def body5_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 869 Flapjack.WordStore.heapLength

def body5_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 873 869 (Flapjack.WordRegImm.imm 1#64)))

def body5_279 : WordLangProgHOL (BitVec 64) :=
.seq body5_277 body5_278

def body5_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 877 873

def body5_281 : WordLangProgHOL (BitVec 64) :=
.seq body5_279 body5_280

def body5_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 881 877 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def body5_283 : WordLangProgHOL (BitVec 64) :=
.seq body5_281 body5_282

def body5_284 : WordLangProgHOL (BitVec 64) :=
.seq body5_276 body5_283

def body5_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(885, 845)]

def body5_286 : WordLangProgHOL (BitVec 64) :=
.seq body5_284 body5_285

def body5_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(889, 885)]

def body5_288 : WordLangProgHOL (BitVec 64) :=
.seq body5_286 body5_287

def body5_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(893, 881)]

def body5_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 889 (Flapjack.WordLangAddr.addr 893 0#64))

def body5_291 : WordLangProgHOL (BitVec 64) :=
.seq body5_289 body5_290

def body5_292 : WordLangProgHOL (BitVec 64) :=
.seq body5_288 body5_291

def body5_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 897 Flapjack.WordStore.heapLength

def body5_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 901 897 (Flapjack.WordRegImm.imm 1#64)))

def body5_295 : WordLangProgHOL (BitVec 64) :=
.seq body5_293 body5_294

def body5_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 905 901

def body5_297 : WordLangProgHOL (BitVec 64) :=
.seq body5_295 body5_296

def body5_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 909 905 (Flapjack.WordRegImm.imm 18446744073709551328#64)))

def body5_299 : WordLangProgHOL (BitVec 64) :=
.seq body5_297 body5_298

def body5_300 : WordLangProgHOL (BitVec 64) :=
.seq body5_292 body5_299

def body5_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(913, 841)]

def body5_302 : WordLangProgHOL (BitVec 64) :=
.seq body5_300 body5_301

def body5_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(917, 913)]

def body5_304 : WordLangProgHOL (BitVec 64) :=
.seq body5_302 body5_303

def body5_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(921, 909)]

def body5_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 917 (Flapjack.WordLangAddr.addr 921 0#64))

def body5_307 : WordLangProgHOL (BitVec 64) :=
.seq body5_305 body5_306

def body5_308 : WordLangProgHOL (BitVec 64) :=
.seq body5_304 body5_307

def body5_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(925, 849)]

def body5_310 : WordLangProgHOL (BitVec 64) :=
.seq body5_308 body5_309

def body5_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 925)]

def body5_312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 837 [2]

def body5_313 : WordLangProgHOL (BitVec 64) :=
.seq body5_311 body5_312

def body5_314 : WordLangProgHOL (BitVec 64) :=
.seq body5_310 body5_313

def body5_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(945, 837), (929, 925)]

def body5_316 : WordLangProgHOL (BitVec 64) :=
.seq body5_314 body5_315

def body5_317 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 341 (Flapjack.WordRegImm.imm 8#64) body5_99 body5_316

def body5_318 : WordLangProgHOL (BitVec 64) :=
.seq body5_317 body5_6

def body5_319 : WordLangProgHOL (BitVec 64) :=
.seq body5_95 body5_318

def body5_320 : WordLangProgHOL (BitVec 64) :=
.seq body5_94 body5_319

def body5_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(997, 945), (977, 929)]

def body5_322 : WordLangProgHOL (BitVec 64) :=
.seq body5_320 body5_321

def body5_323 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body5_93, 608, 6)) (some 607) ([]) (some (2, body5_322, 608, 17))

def body5_324 : WordLangProgHOL (BitVec 64) :=
.seq body5_90 body5_323

def body5_325 : WordLangProgHOL (BitVec 64) :=
.seq body5_89 body5_324

def body5_326 : WordLangProgHOL (BitVec 64) :=
.seq body5_325 body5_6

def body5_327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1057, 997), (1033, 977)]

def body5_328 : WordLangProgHOL (BitVec 64) :=
.seq body5_326 body5_327

def body5_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1057, 157), (1033, 181)]

def body5_330 : WordLangProgHOL (BitVec 64) :=
.seq body5_6 body5_329

def body5_331 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 193 (Flapjack.WordRegImm.reg 197) body5_328 body5_330

def body5_332 : WordLangProgHOL (BitVec 64) :=
.seq body5_68 body5_331

def body5_333 : WordLangProgHOL (BitVec 64) :=
.seq body5_332 body5_6

def body5_334 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1083, 1057), (1087, 1033)]

def body5_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1093, 1083), (1097, 1087)]

def body5_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1101, 2)]

def body5_337 : WordLangProgHOL (BitVec 64) :=
.seq body5_335 body5_336

def body5_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1113, 1101)]

def body5_339 : WordLangProgHOL (BitVec 64) :=
.seq body5_337 body5_338

def body5_340 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1105, 2)]

def body5_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1105)]

def body5_342 : WordLangProgHOL (BitVec 64) :=
.seq body5_341 body5_16

def body5_343 : WordLangProgHOL (BitVec 64) :=
.seq body5_340 body5_342

def body5_344 : WordLangProgHOL (BitVec 64) :=
.seq body5_335 body5_343

def body5_345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1113 0#64)

def body5_346 : WordLangProgHOL (BitVec 64) :=
.seq body5_344 body5_345

def body5_347 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
                Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body5_339, 608, 18)) (some 392) ([]) (some (2, body5_346, 608, 19))

def body5_348 : WordLangProgHOL (BitVec 64) :=
.seq body5_334 body5_347

def body5_349 : WordLangProgHOL (BitVec 64) :=
.seq body5_333 body5_348

def body5_350 : WordLangProgHOL (BitVec 64) :=
.seq body5_349 body5_6

def body5_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 1117 Flapjack.WordStore.heapLength

def body5_352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1121 1117 (Flapjack.WordRegImm.imm 1#64)))

def body5_353 : WordLangProgHOL (BitVec 64) :=
.seq body5_351 body5_352

def body5_354 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1125 1121

def body5_355 : WordLangProgHOL (BitVec 64) :=
.seq body5_353 body5_354

def body5_356 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1129 (Flapjack.WordLangAddr.addr 1125 18446744073709551328#64))

def body5_357 : WordLangProgHOL (BitVec 64) :=
.seq body5_355 body5_356

def body5_358 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1133 1129 (Flapjack.WordRegImm.imm 24#64)))

def body5_359 : WordLangProgHOL (BitVec 64) :=
.seq body5_357 body5_358

def body5_360 : WordLangProgHOL (BitVec 64) :=
.seq body5_350 body5_359

def body5_361 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1137, 1113)]

def body5_362 : WordLangProgHOL (BitVec 64) :=
.seq body5_360 body5_361

def body5_363 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1141, 1137)]

def body5_364 : WordLangProgHOL (BitVec 64) :=
.seq body5_362 body5_363

def body5_365 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1145, 1133)]

def body5_366 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1141 (Flapjack.WordLangAddr.addr 1145 0#64))

def body5_367 : WordLangProgHOL (BitVec 64) :=
.seq body5_365 body5_366

def body5_368 : WordLangProgHOL (BitVec 64) :=
.seq body5_364 body5_367

def body5_369 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1151, 1093), (1155, 1097)]

def body5_370 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1161, 1151), (1165, 1155)]

def body5_371 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1173, 2)]

def body5_372 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1173)]

def body5_373 : WordLangProgHOL (BitVec 64) :=
.seq body5_372 body5_16

def body5_374 : WordLangProgHOL (BitVec 64) :=
.seq body5_371 body5_373

def body5_375 : WordLangProgHOL (BitVec 64) :=
.seq body5_370 body5_374

def body5_376 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body5_370, 608, 20)) (some 601) ([]) (some (2, body5_375, 608, 21))

def body5_377 : WordLangProgHOL (BitVec 64) :=
.seq body5_369 body5_376

def body5_378 : WordLangProgHOL (BitVec 64) :=
.seq body5_368 body5_377

def body5_379 : WordLangProgHOL (BitVec 64) :=
.seq body5_378 body5_6

def body5_380 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1187, 1161), (1191, 1165)]

def body5_381 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1197, 1187), (1201, 1191)]

def body5_382 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1209, 2)]

def body5_383 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1209)]

def body5_384 : WordLangProgHOL (BitVec 64) :=
.seq body5_383 body5_16

def body5_385 : WordLangProgHOL (BitVec 64) :=
.seq body5_382 body5_384

def body5_386 : WordLangProgHOL (BitVec 64) :=
.seq body5_381 body5_385

def body5_387 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body5_381, 608, 22)) (some 604) ([]) (some (2, body5_386, 608, 23))

def body5_388 : WordLangProgHOL (BitVec 64) :=
.seq body5_380 body5_387

def body5_389 : WordLangProgHOL (BitVec 64) :=
.seq body5_379 body5_388

def body5_390 : WordLangProgHOL (BitVec 64) :=
.seq body5_389 body5_6

def body5_391 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1221, 1201)]

def body5_392 : WordLangProgHOL (BitVec 64) :=
.seq body5_390 body5_391

def body5_393 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 1221)]

def body5_394 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 1197 [2]

def body5_395 : WordLangProgHOL (BitVec 64) :=
.seq body5_393 body5_394

def body5_396 : WordLangProgHOL (BitVec 64) :=
.seq body5_392 body5_395

def body5_397 : WordLangProgHOL (BitVec 64) :=
.seq body5_0 body5_396

def pass5 : WordLangProgHOL (BitVec 64) := body5_397
def body6_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 0), (33, 2)]

def body6_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 37 1024#64)

def body6_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(41, 33)]

def body6_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 45 (Flapjack.WordLangAddr.addr 41 128#64))

def body6_4 : WordLangProgHOL (BitVec 64) :=
.seq body6_2 body6_3

def body6_5 : WordLangProgHOL (BitVec 64) :=
.seq body6_1 body6_4

def body6_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body6_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 57 7#64)

def body6_8 : WordLangProgHOL (BitVec 64) :=
.seq body6_6 body6_7

def body6_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(61, 57)]

def body6_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 61)

def body6_11 : WordLangProgHOL (BitVec 64) :=
.seq body6_9 body6_10

def body6_12 : WordLangProgHOL (BitVec 64) :=
.seq body6_8 body6_11

def body6_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 8#64)

def body6_14 : WordLangProgHOL (BitVec 64) :=
.seq body6_12 body6_13

def body6_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 65)]

def body6_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body6_17 : WordLangProgHOL (BitVec 64) :=
.seq body6_15 body6_16

def body6_18 : WordLangProgHOL (BitVec 64) :=
.seq body6_14 body6_17

def body6_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body6_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 37 (Flapjack.WordRegImm.reg 45) body6_18 body6_19

def body6_21 : WordLangProgHOL (BitVec 64) :=
.seq body6_20 body6_6

def body6_22 : WordLangProgHOL (BitVec 64) :=
.seq body6_5 body6_21

def body6_23 : WordLangProgHOL (BitVec 64) :=
.seq body6_22 body6_6

def body6_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 93 Flapjack.WordStore.heapLength

def body6_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 97 93 (Flapjack.WordRegImm.imm 1#64)))

def body6_26 : WordLangProgHOL (BitVec 64) :=
.seq body6_24 body6_25

def body6_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 101 97

def body6_28 : WordLangProgHOL (BitVec 64) :=
.seq body6_26 body6_27

def body6_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 105 (Flapjack.WordLangAddr.addr 101 18446744073709551360#64))

def body6_30 : WordLangProgHOL (BitVec 64) :=
.seq body6_28 body6_29

def body6_31 : WordLangProgHOL (BitVec 64) :=
.seq body6_23 body6_30

def body6_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(109, 93)]

def body6_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(113, 97)]

def body6_34 : WordLangProgHOL (BitVec 64) :=
.seq body6_32 body6_33

def body6_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(117, 101)]

def body6_36 : WordLangProgHOL (BitVec 64) :=
.seq body6_34 body6_35

def body6_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 121 (Flapjack.WordLangAddr.addr 117 18446744073709551328#64))

def body6_38 : WordLangProgHOL (BitVec 64) :=
.seq body6_36 body6_37

def body6_39 : WordLangProgHOL (BitVec 64) :=
.seq body6_31 body6_38

def body6_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(125, 41)]

def body6_41 : WordLangProgHOL (BitVec 64) :=
.seq body6_39 body6_40

def body6_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 0#64)

def body6_43 : WordLangProgHOL (BitVec 64) :=
.seq body6_41 body6_42

def body6_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(139, 29), (143, 121), (147, 125), (151, 105)]

def body6_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 125), (4, 133)]

def body6_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(157, 139), (161, 143), (165, 147), (169, 151)]

def body6_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(173, 2)]

def body6_48 : WordLangProgHOL (BitVec 64) :=
.seq body6_46 body6_47

def body6_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(181, 173)]

def body6_50 : WordLangProgHOL (BitVec 64) :=
.seq body6_48 body6_49

def body6_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(177, 2)]

def body6_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 177)]

def body6_53 : WordLangProgHOL (BitVec 64) :=
.seq body6_52 body6_16

def body6_54 : WordLangProgHOL (BitVec 64) :=
.seq body6_51 body6_53

def body6_55 : WordLangProgHOL (BitVec 64) :=
.seq body6_46 body6_54

def body6_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 181 0#64)

def body6_57 : WordLangProgHOL (BitVec 64) :=
.seq body6_55 body6_56

def body6_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body6_50, 608, 2)) (some 598) ([2, 4]) (some (2, body6_57, 608, 3))

def body6_59 : WordLangProgHOL (BitVec 64) :=
.seq body6_45 body6_58

def body6_60 : WordLangProgHOL (BitVec 64) :=
.seq body6_44 body6_59

def body6_61 : WordLangProgHOL (BitVec 64) :=
.seq body6_43 body6_60

def body6_62 : WordLangProgHOL (BitVec 64) :=
.seq body6_61 body6_6

def body6_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 165)]

def body6_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 193 (Flapjack.WordLangAddr.addr 189 128#64))

def body6_65 : WordLangProgHOL (BitVec 64) :=
.seq body6_63 body6_64

def body6_66 : WordLangProgHOL (BitVec 64) :=
.seq body6_62 body6_65

def body6_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 0#64)

def body6_68 : WordLangProgHOL (BitVec 64) :=
.seq body6_66 body6_67

def body6_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(211, 157), (215, 161), (219, 189), (223, 169), (227, 181)]

def body6_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(233, 211), (237, 215), (241, 219), (245, 223), (249, 227)]

def body6_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(253, 2)]

def body6_72 : WordLangProgHOL (BitVec 64) :=
.seq body6_70 body6_71

def body6_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(265, 253)]

def body6_74 : WordLangProgHOL (BitVec 64) :=
.seq body6_72 body6_73

def body6_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(257, 2)]

def body6_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 257)]

def body6_77 : WordLangProgHOL (BitVec 64) :=
.seq body6_76 body6_16

def body6_78 : WordLangProgHOL (BitVec 64) :=
.seq body6_75 body6_77

def body6_79 : WordLangProgHOL (BitVec 64) :=
.seq body6_70 body6_78

def body6_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 265 0#64)

def body6_81 : WordLangProgHOL (BitVec 64) :=
.seq body6_79 body6_80

def body6_82 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body6_74, 608, 4)) (some 392) ([]) (some (2, body6_81, 608, 5))

def body6_83 : WordLangProgHOL (BitVec 64) :=
.seq body6_69 body6_82

def body6_84 : WordLangProgHOL (BitVec 64) :=
.seq body6_6 body6_83

def body6_85 : WordLangProgHOL (BitVec 64) :=
.seq body6_84 body6_6

def body6_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(269, 241)]

def body6_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 273 (Flapjack.WordLangAddr.addr 269 48#64))

def body6_88 : WordLangProgHOL (BitVec 64) :=
.seq body6_86 body6_87

def body6_89 : WordLangProgHOL (BitVec 64) :=
.seq body6_85 body6_88

def body6_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(279, 233), (283, 237), (287, 269), (291, 265), (295, 245), (299, 249), (303, 273)]

def body6_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(309, 279), (329, 299)]

def body6_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(997, 309), (977, 329)]

def body6_93 : WordLangProgHOL (BitVec 64) :=
.seq body6_91 body6_92

def body6_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(309, 279), (313, 283), (317, 287), (321, 291), (325, 295), (329, 299), (333, 303)]

def body6_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(341, 2)]

def body6_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 341)]

def body6_97 : WordLangProgHOL (BitVec 64) :=
.seq body6_96 body6_16

def body6_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(945, 309), (929, 329)]

def body6_99 : WordLangProgHOL (BitVec 64) :=
.seq body6_97 body6_98

def body6_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 345 (Flapjack.WordStore.temp 0#5)

def body6_101 : WordLangProgHOL (BitVec 64) :=
.seq body6_6 body6_100

def body6_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(349, 345)]

def body6_103 : WordLangProgHOL (BitVec 64) :=
.seq body6_101 body6_102

def body6_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 353 1#64)

def body6_105 : WordLangProgHOL (BitVec 64) :=
.seq body6_103 body6_104

def body6_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(365, 329)]

def body6_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 369 (Flapjack.WordLangAddr.addr 365 208#64))

def body6_108 : WordLangProgHOL (BitVec 64) :=
.seq body6_106 body6_107

def body6_109 : WordLangProgHOL (BitVec 64) :=
.seq body6_6 body6_108

def body6_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(375, 309), (379, 349), (383, 313), (387, 325), (391, 365)]

def body6_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 369)]

def body6_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(397, 375), (401, 379), (405, 383), (409, 387), (413, 391)]

def body6_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(421, 2)]

def body6_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 421)]

def body6_115 : WordLangProgHOL (BitVec 64) :=
.seq body6_114 body6_16

def body6_116 : WordLangProgHOL (BitVec 64) :=
.seq body6_113 body6_115

def body6_117 : WordLangProgHOL (BitVec 64) :=
.seq body6_112 body6_116

def body6_118 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body6_112, 608, 7)) (some 76) ([2]) (some (2, body6_117, 608, 8))

def body6_119 : WordLangProgHOL (BitVec 64) :=
.seq body6_111 body6_118

def body6_120 : WordLangProgHOL (BitVec 64) :=
.seq body6_110 body6_119

def body6_121 : WordLangProgHOL (BitVec 64) :=
.seq body6_109 body6_120

def body6_122 : WordLangProgHOL (BitVec 64) :=
.seq body6_121 body6_6

def body6_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(433, 413)]

def body6_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 437 (Flapjack.WordLangAddr.addr 433 224#64))

def body6_125 : WordLangProgHOL (BitVec 64) :=
.seq body6_123 body6_124

def body6_126 : WordLangProgHOL (BitVec 64) :=
.seq body6_122 body6_125

def body6_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(443, 397), (447, 401), (451, 405), (455, 409)]

def body6_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 437)]

def body6_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(461, 443), (465, 447), (469, 451), (473, 455)]

def body6_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(481, 2)]

def body6_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 481)]

def body6_132 : WordLangProgHOL (BitVec 64) :=
.seq body6_131 body6_16

def body6_133 : WordLangProgHOL (BitVec 64) :=
.seq body6_130 body6_132

def body6_134 : WordLangProgHOL (BitVec 64) :=
.seq body6_129 body6_133

def body6_135 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body6_129, 608, 9)) (some 73) ([2]) (some (2, body6_134, 608, 10))

def body6_136 : WordLangProgHOL (BitVec 64) :=
.seq body6_128 body6_135

def body6_137 : WordLangProgHOL (BitVec 64) :=
.seq body6_127 body6_136

def body6_138 : WordLangProgHOL (BitVec 64) :=
.seq body6_126 body6_137

def body6_139 : WordLangProgHOL (BitVec 64) :=
.seq body6_138 body6_6

def body6_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 493 Flapjack.WordStore.heapLength

def body6_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 497 493 (Flapjack.WordRegImm.imm 1#64)))

def body6_142 : WordLangProgHOL (BitVec 64) :=
.seq body6_140 body6_141

def body6_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 501 497

def body6_144 : WordLangProgHOL (BitVec 64) :=
.seq body6_142 body6_143

def body6_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 505 501 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def body6_146 : WordLangProgHOL (BitVec 64) :=
.seq body6_144 body6_145

def body6_147 : WordLangProgHOL (BitVec 64) :=
.seq body6_139 body6_146

def body6_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(509, 473)]

def body6_149 : WordLangProgHOL (BitVec 64) :=
.seq body6_147 body6_148

def body6_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(513, 509)]

def body6_151 : WordLangProgHOL (BitVec 64) :=
.seq body6_149 body6_150

def body6_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(517, 505)]

def body6_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 513 (Flapjack.WordLangAddr.addr 517 0#64))

def body6_154 : WordLangProgHOL (BitVec 64) :=
.seq body6_152 body6_153

def body6_155 : WordLangProgHOL (BitVec 64) :=
.seq body6_151 body6_154

def body6_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 521 Flapjack.WordStore.heapLength

def body6_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 525 521 (Flapjack.WordRegImm.imm 1#64)))

def body6_158 : WordLangProgHOL (BitVec 64) :=
.seq body6_156 body6_157

def body6_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 529 525

def body6_160 : WordLangProgHOL (BitVec 64) :=
.seq body6_158 body6_159

def body6_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 533 529 (Flapjack.WordRegImm.imm 18446744073709551328#64)))

def body6_162 : WordLangProgHOL (BitVec 64) :=
.seq body6_160 body6_161

def body6_163 : WordLangProgHOL (BitVec 64) :=
.seq body6_155 body6_162

def body6_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(537, 469)]

def body6_165 : WordLangProgHOL (BitVec 64) :=
.seq body6_163 body6_164

def body6_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(541, 537)]

def body6_167 : WordLangProgHOL (BitVec 64) :=
.seq body6_165 body6_166

def body6_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(545, 533)]

def body6_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 541 (Flapjack.WordLangAddr.addr 545 0#64))

def body6_170 : WordLangProgHOL (BitVec 64) :=
.seq body6_168 body6_169

def body6_171 : WordLangProgHOL (BitVec 64) :=
.seq body6_167 body6_170

def body6_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(549, 465)]

def body6_173 : WordLangProgHOL (BitVec 64) :=
.seq body6_171 body6_172

def body6_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(553, 549)]

def body6_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 553)

def body6_176 : WordLangProgHOL (BitVec 64) :=
.seq body6_174 body6_175

def body6_177 : WordLangProgHOL (BitVec 64) :=
.seq body6_173 body6_176

def body6_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 557 8#64)

def body6_179 : WordLangProgHOL (BitVec 64) :=
.seq body6_177 body6_178

def body6_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 557)]

def body6_181 : WordLangProgHOL (BitVec 64) :=
.seq body6_180 body6_16

def body6_182 : WordLangProgHOL (BitVec 64) :=
.seq body6_179 body6_181

def body6_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(593, 461), (585, 549), (581, 537), (573, 509)]

def body6_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 597 0#64)

def body6_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 601 0#64)

def body6_186 : WordLangProgHOL (BitVec 64) :=
.seq body6_184 body6_185

def body6_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 605 0#64)

def body6_188 : WordLangProgHOL (BitVec 64) :=
.seq body6_186 body6_187

def body6_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 609 0#64)

def body6_190 : WordLangProgHOL (BitVec 64) :=
.seq body6_188 body6_189

def body6_191 : WordLangProgHOL (BitVec 64) :=
.seq body6_183 body6_190

def body6_192 : WordLangProgHOL (BitVec 64) :=
.seq body6_182 body6_191

def body6_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(593, 309), (585, 349), (581, 313), (573, 325)]

def body6_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(597, 333)]

def body6_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(601, 329)]

def body6_196 : WordLangProgHOL (BitVec 64) :=
.seq body6_194 body6_195

def body6_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(605, 321)]

def body6_198 : WordLangProgHOL (BitVec 64) :=
.seq body6_196 body6_197

def body6_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(609, 317)]

def body6_200 : WordLangProgHOL (BitVec 64) :=
.seq body6_198 body6_199

def body6_201 : WordLangProgHOL (BitVec 64) :=
.seq body6_193 body6_200

def body6_202 : WordLangProgHOL (BitVec 64) :=
.seq body6_6 body6_201

def body6_203 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 349 (Flapjack.WordRegImm.reg 353) body6_192 body6_202

def body6_204 : WordLangProgHOL (BitVec 64) :=
.seq body6_105 body6_203

def body6_205 : WordLangProgHOL (BitVec 64) :=
.seq body6_204 body6_6

def body6_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(621, 605)]

def body6_207 : WordLangProgHOL (BitVec 64) :=
.seq body6_205 body6_206

def body6_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(627, 593), (631, 585), (635, 581), (639, 609), (643, 573), (647, 601), (651, 597)]

def body6_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 621)]

def body6_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(657, 627), (661, 631), (665, 635), (669, 639), (673, 643), (677, 647), (681, 651)]

def body6_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(689, 2)]

def body6_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 689)]

def body6_213 : WordLangProgHOL (BitVec 64) :=
.seq body6_212 body6_16

def body6_214 : WordLangProgHOL (BitVec 64) :=
.seq body6_211 body6_213

def body6_215 : WordLangProgHOL (BitVec 64) :=
.seq body6_210 body6_214

def body6_216 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body6_210, 608, 11)) (some 393) ([2]) (some (2, body6_215, 608, 12))

def body6_217 : WordLangProgHOL (BitVec 64) :=
.seq body6_209 body6_216

def body6_218 : WordLangProgHOL (BitVec 64) :=
.seq body6_208 body6_217

def body6_219 : WordLangProgHOL (BitVec 64) :=
.seq body6_207 body6_218

def body6_220 : WordLangProgHOL (BitVec 64) :=
.seq body6_219 body6_6

def body6_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(701, 669)]

def body6_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 705 701 (Flapjack.WordRegImm.imm 48#64)))

def body6_223 : WordLangProgHOL (BitVec 64) :=
.seq body6_221 body6_222

def body6_224 : WordLangProgHOL (BitVec 64) :=
.seq body6_220 body6_223

def body6_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(709, 681)]

def body6_226 : WordLangProgHOL (BitVec 64) :=
.seq body6_224 body6_225

def body6_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(713, 709)]

def body6_228 : WordLangProgHOL (BitVec 64) :=
.seq body6_226 body6_227

def body6_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(717, 705)]

def body6_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 713 (Flapjack.WordLangAddr.addr 717 0#64))

def body6_231 : WordLangProgHOL (BitVec 64) :=
.seq body6_229 body6_230

def body6_232 : WordLangProgHOL (BitVec 64) :=
.seq body6_228 body6_231

def body6_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 721 Flapjack.WordStore.heapLength

def body6_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 725 721 (Flapjack.WordRegImm.imm 1#64)))

def body6_235 : WordLangProgHOL (BitVec 64) :=
.seq body6_233 body6_234

def body6_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 729 725

def body6_237 : WordLangProgHOL (BitVec 64) :=
.seq body6_235 body6_236

def body6_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 733 (Flapjack.WordLangAddr.addr 729 18446744073709551360#64))

def body6_239 : WordLangProgHOL (BitVec 64) :=
.seq body6_237 body6_238

def body6_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 737 733 (Flapjack.WordRegImm.imm 200#64)))

def body6_241 : WordLangProgHOL (BitVec 64) :=
.seq body6_239 body6_240

def body6_242 : WordLangProgHOL (BitVec 64) :=
.seq body6_232 body6_241

def body6_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 741 0#64)

def body6_244 : WordLangProgHOL (BitVec 64) :=
.seq body6_242 body6_243

def body6_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(745, 741)]

def body6_246 : WordLangProgHOL (BitVec 64) :=
.seq body6_244 body6_245

def body6_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(749, 737)]

def body6_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 745 (Flapjack.WordLangAddr.addr 749 0#64))

def body6_249 : WordLangProgHOL (BitVec 64) :=
.seq body6_247 body6_248

def body6_250 : WordLangProgHOL (BitVec 64) :=
.seq body6_246 body6_249

def body6_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(755, 657), (759, 661), (763, 665), (767, 673), (771, 677)]

def body6_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(777, 755), (781, 759), (785, 763), (789, 767), (793, 771)]

def body6_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(801, 2)]

def body6_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 801)]

def body6_255 : WordLangProgHOL (BitVec 64) :=
.seq body6_254 body6_16

def body6_256 : WordLangProgHOL (BitVec 64) :=
.seq body6_253 body6_255

def body6_257 : WordLangProgHOL (BitVec 64) :=
.seq body6_252 body6_256

def body6_258 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))))),
  Flapjack.Spt.ln)), body6_252, 608, 13)) (some 476) ([]) (some (2, body6_257, 608, 14))

def body6_259 : WordLangProgHOL (BitVec 64) :=
.seq body6_251 body6_258

def body6_260 : WordLangProgHOL (BitVec 64) :=
.seq body6_250 body6_259

def body6_261 : WordLangProgHOL (BitVec 64) :=
.seq body6_260 body6_6

def body6_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(813, 781)]

def body6_263 : WordLangProgHOL (BitVec 64) :=
.seq body6_261 body6_262

def body6_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(819, 777), (823, 785), (827, 789), (831, 793)]

def body6_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 813)]

def body6_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(837, 819), (841, 823), (845, 827), (849, 831)]

def body6_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(857, 2)]

def body6_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 857)]

def body6_269 : WordLangProgHOL (BitVec 64) :=
.seq body6_268 body6_16

def body6_270 : WordLangProgHOL (BitVec 64) :=
.seq body6_267 body6_269

def body6_271 : WordLangProgHOL (BitVec 64) :=
.seq body6_266 body6_270

def body6_272 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body6_266, 608, 15)) (some 606) ([2]) (some (2, body6_271, 608, 16))

def body6_273 : WordLangProgHOL (BitVec 64) :=
.seq body6_265 body6_272

def body6_274 : WordLangProgHOL (BitVec 64) :=
.seq body6_264 body6_273

def body6_275 : WordLangProgHOL (BitVec 64) :=
.seq body6_263 body6_274

def body6_276 : WordLangProgHOL (BitVec 64) :=
.seq body6_275 body6_6

def body6_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 869 Flapjack.WordStore.heapLength

def body6_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 873 869 (Flapjack.WordRegImm.imm 1#64)))

def body6_279 : WordLangProgHOL (BitVec 64) :=
.seq body6_277 body6_278

def body6_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 877 873

def body6_281 : WordLangProgHOL (BitVec 64) :=
.seq body6_279 body6_280

def body6_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 881 877 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def body6_283 : WordLangProgHOL (BitVec 64) :=
.seq body6_281 body6_282

def body6_284 : WordLangProgHOL (BitVec 64) :=
.seq body6_276 body6_283

def body6_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(885, 845)]

def body6_286 : WordLangProgHOL (BitVec 64) :=
.seq body6_284 body6_285

def body6_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(889, 885)]

def body6_288 : WordLangProgHOL (BitVec 64) :=
.seq body6_286 body6_287

def body6_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(893, 881)]

def body6_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 889 (Flapjack.WordLangAddr.addr 893 0#64))

def body6_291 : WordLangProgHOL (BitVec 64) :=
.seq body6_289 body6_290

def body6_292 : WordLangProgHOL (BitVec 64) :=
.seq body6_288 body6_291

def body6_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 897 Flapjack.WordStore.heapLength

def body6_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 901 897 (Flapjack.WordRegImm.imm 1#64)))

def body6_295 : WordLangProgHOL (BitVec 64) :=
.seq body6_293 body6_294

def body6_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 905 901

def body6_297 : WordLangProgHOL (BitVec 64) :=
.seq body6_295 body6_296

def body6_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 909 905 (Flapjack.WordRegImm.imm 18446744073709551328#64)))

def body6_299 : WordLangProgHOL (BitVec 64) :=
.seq body6_297 body6_298

def body6_300 : WordLangProgHOL (BitVec 64) :=
.seq body6_292 body6_299

def body6_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(913, 841)]

def body6_302 : WordLangProgHOL (BitVec 64) :=
.seq body6_300 body6_301

def body6_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(917, 913)]

def body6_304 : WordLangProgHOL (BitVec 64) :=
.seq body6_302 body6_303

def body6_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(921, 909)]

def body6_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 917 (Flapjack.WordLangAddr.addr 921 0#64))

def body6_307 : WordLangProgHOL (BitVec 64) :=
.seq body6_305 body6_306

def body6_308 : WordLangProgHOL (BitVec 64) :=
.seq body6_304 body6_307

def body6_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(925, 849)]

def body6_310 : WordLangProgHOL (BitVec 64) :=
.seq body6_308 body6_309

def body6_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 925)]

def body6_312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 837 [2]

def body6_313 : WordLangProgHOL (BitVec 64) :=
.seq body6_311 body6_312

def body6_314 : WordLangProgHOL (BitVec 64) :=
.seq body6_310 body6_313

def body6_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(945, 837), (929, 925)]

def body6_316 : WordLangProgHOL (BitVec 64) :=
.seq body6_314 body6_315

def body6_317 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 341 (Flapjack.WordRegImm.imm 8#64) body6_99 body6_316

def body6_318 : WordLangProgHOL (BitVec 64) :=
.seq body6_317 body6_6

def body6_319 : WordLangProgHOL (BitVec 64) :=
.seq body6_95 body6_318

def body6_320 : WordLangProgHOL (BitVec 64) :=
.seq body6_94 body6_319

def body6_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(997, 945), (977, 929)]

def body6_322 : WordLangProgHOL (BitVec 64) :=
.seq body6_320 body6_321

def body6_323 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body6_93, 608, 6)) (some 607) ([]) (some (2, body6_322, 608, 17))

def body6_324 : WordLangProgHOL (BitVec 64) :=
.seq body6_90 body6_323

def body6_325 : WordLangProgHOL (BitVec 64) :=
.seq body6_89 body6_324

def body6_326 : WordLangProgHOL (BitVec 64) :=
.seq body6_325 body6_6

def body6_327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1057, 997), (1033, 977)]

def body6_328 : WordLangProgHOL (BitVec 64) :=
.seq body6_326 body6_327

def body6_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1057, 157), (1033, 181)]

def body6_330 : WordLangProgHOL (BitVec 64) :=
.seq body6_6 body6_329

def body6_331 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 193 (Flapjack.WordRegImm.reg 197) body6_328 body6_330

def body6_332 : WordLangProgHOL (BitVec 64) :=
.seq body6_68 body6_331

def body6_333 : WordLangProgHOL (BitVec 64) :=
.seq body6_332 body6_6

def body6_334 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1083, 1057), (1087, 1033)]

def body6_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1093, 1083), (1097, 1087)]

def body6_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1101, 2)]

def body6_337 : WordLangProgHOL (BitVec 64) :=
.seq body6_335 body6_336

def body6_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1113, 1101)]

def body6_339 : WordLangProgHOL (BitVec 64) :=
.seq body6_337 body6_338

def body6_340 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1105, 2)]

def body6_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1105)]

def body6_342 : WordLangProgHOL (BitVec 64) :=
.seq body6_341 body6_16

def body6_343 : WordLangProgHOL (BitVec 64) :=
.seq body6_340 body6_342

def body6_344 : WordLangProgHOL (BitVec 64) :=
.seq body6_335 body6_343

def body6_345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1113 0#64)

def body6_346 : WordLangProgHOL (BitVec 64) :=
.seq body6_344 body6_345

def body6_347 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
                Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body6_339, 608, 18)) (some 392) ([]) (some (2, body6_346, 608, 19))

def body6_348 : WordLangProgHOL (BitVec 64) :=
.seq body6_334 body6_347

def body6_349 : WordLangProgHOL (BitVec 64) :=
.seq body6_333 body6_348

def body6_350 : WordLangProgHOL (BitVec 64) :=
.seq body6_349 body6_6

def body6_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 1117 Flapjack.WordStore.heapLength

def body6_352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1121 1117 (Flapjack.WordRegImm.imm 1#64)))

def body6_353 : WordLangProgHOL (BitVec 64) :=
.seq body6_351 body6_352

def body6_354 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1125 1121

def body6_355 : WordLangProgHOL (BitVec 64) :=
.seq body6_353 body6_354

def body6_356 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1129 (Flapjack.WordLangAddr.addr 1125 18446744073709551328#64))

def body6_357 : WordLangProgHOL (BitVec 64) :=
.seq body6_355 body6_356

def body6_358 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1133 1129 (Flapjack.WordRegImm.imm 24#64)))

def body6_359 : WordLangProgHOL (BitVec 64) :=
.seq body6_357 body6_358

def body6_360 : WordLangProgHOL (BitVec 64) :=
.seq body6_350 body6_359

def body6_361 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1137, 1113)]

def body6_362 : WordLangProgHOL (BitVec 64) :=
.seq body6_360 body6_361

def body6_363 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1141, 1137)]

def body6_364 : WordLangProgHOL (BitVec 64) :=
.seq body6_362 body6_363

def body6_365 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1145, 1133)]

def body6_366 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1141 (Flapjack.WordLangAddr.addr 1145 0#64))

def body6_367 : WordLangProgHOL (BitVec 64) :=
.seq body6_365 body6_366

def body6_368 : WordLangProgHOL (BitVec 64) :=
.seq body6_364 body6_367

def body6_369 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1151, 1093), (1155, 1097)]

def body6_370 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1161, 1151), (1165, 1155)]

def body6_371 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1173, 2)]

def body6_372 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1173)]

def body6_373 : WordLangProgHOL (BitVec 64) :=
.seq body6_372 body6_16

def body6_374 : WordLangProgHOL (BitVec 64) :=
.seq body6_371 body6_373

def body6_375 : WordLangProgHOL (BitVec 64) :=
.seq body6_370 body6_374

def body6_376 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body6_370, 608, 20)) (some 601) ([]) (some (2, body6_375, 608, 21))

def body6_377 : WordLangProgHOL (BitVec 64) :=
.seq body6_369 body6_376

def body6_378 : WordLangProgHOL (BitVec 64) :=
.seq body6_368 body6_377

def body6_379 : WordLangProgHOL (BitVec 64) :=
.seq body6_378 body6_6

def body6_380 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1187, 1161), (1191, 1165)]

def body6_381 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1197, 1187), (1201, 1191)]

def body6_382 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1209, 2)]

def body6_383 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1209)]

def body6_384 : WordLangProgHOL (BitVec 64) :=
.seq body6_383 body6_16

def body6_385 : WordLangProgHOL (BitVec 64) :=
.seq body6_382 body6_384

def body6_386 : WordLangProgHOL (BitVec 64) :=
.seq body6_381 body6_385

def body6_387 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body6_381, 608, 22)) (some 604) ([]) (some (2, body6_386, 608, 23))

def body6_388 : WordLangProgHOL (BitVec 64) :=
.seq body6_380 body6_387

def body6_389 : WordLangProgHOL (BitVec 64) :=
.seq body6_379 body6_388

def body6_390 : WordLangProgHOL (BitVec 64) :=
.seq body6_389 body6_6

def body6_391 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1221, 1201)]

def body6_392 : WordLangProgHOL (BitVec 64) :=
.seq body6_390 body6_391

def body6_393 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 1221)]

def body6_394 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 1197 [2]

def body6_395 : WordLangProgHOL (BitVec 64) :=
.seq body6_393 body6_394

def body6_396 : WordLangProgHOL (BitVec 64) :=
.seq body6_392 body6_395

def body6_397 : WordLangProgHOL (BitVec 64) :=
.seq body6_0 body6_396

def pass6 : WordLangProgHOL (BitVec 64) := body6_397
def body7_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 0), (33, 2)]

def body7_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 37 1024#64)

def body7_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(41, 33)]

def body7_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 45 (Flapjack.WordLangAddr.addr 41 128#64))

def body7_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body7_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 57 7#64)

def body7_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(61, 57)]

def body7_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 61)

def body7_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 8#64)

def body7_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 65)]

def body7_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body7_11 : WordLangProgHOL (BitVec 64) :=
.seq body7_9 body7_10

def body7_12 : WordLangProgHOL (BitVec 64) :=
.seq body7_8 body7_11

def body7_13 : WordLangProgHOL (BitVec 64) :=
.seq body7_7 body7_12

def body7_14 : WordLangProgHOL (BitVec 64) :=
.seq body7_6 body7_13

def body7_15 : WordLangProgHOL (BitVec 64) :=
.seq body7_5 body7_14

def body7_16 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_15

def body7_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body7_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 37 (Flapjack.WordRegImm.reg 45) body7_16 body7_17

def body7_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 93 Flapjack.WordStore.heapLength

def body7_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 97 93 (Flapjack.WordRegImm.imm 1#64)))

def body7_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 101 97

def body7_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 105 (Flapjack.WordLangAddr.addr 101 18446744073709551360#64))

def body7_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(117, 101), (113, 97), (109, 93)]

def body7_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 121 (Flapjack.WordLangAddr.addr 117 18446744073709551328#64))

def body7_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(125, 41)]

def body7_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 0#64)

def body7_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 125), (4, 133), (139, 29), (143, 121), (147, 125), (151, 105)]

def body7_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(181, 2), (173, 2), (157, 139), (161, 143), (165, 147), (169, 151)]

def body7_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (177, 2), (157, 139), (161, 143), (165, 147), (169, 151)]

def body7_30 : WordLangProgHOL (BitVec 64) :=
.seq body7_29 body7_10

def body7_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body7_28, 608, 2)) (some 598) ([2, 4]) (some (2, body7_30, 608, 3))

def body7_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 165)]

def body7_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 193 (Flapjack.WordLangAddr.addr 189 128#64))

def body7_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 0#64)

def body7_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(211, 157), (215, 161), (219, 189), (223, 169), (227, 181)]

def body7_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(265, 2), (253, 2), (233, 211), (237, 215), (241, 219), (245, 223), (249, 227)]

def body7_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (257, 2), (233, 211), (237, 215), (241, 219), (245, 223), (249, 227)]

def body7_38 : WordLangProgHOL (BitVec 64) :=
.seq body7_37 body7_10

def body7_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body7_36, 608, 4)) (some 392) ([]) (some (2, body7_38, 608, 5))

def body7_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(269, 241)]

def body7_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 273 (Flapjack.WordLangAddr.addr 269 48#64))

def body7_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(279, 233), (283, 237), (287, 269), (291, 265), (295, 245), (299, 249), (303, 273)]

def body7_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(997, 279), (977, 299), (309, 279), (329, 299)]

def body7_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(341, 2), (309, 279), (313, 283), (317, 287), (321, 291), (325, 295), (329, 299), (333, 303)]

def body7_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 341)]

def body7_46 : WordLangProgHOL (BitVec 64) :=
.seq body7_45 body7_10

def body7_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 345 (Flapjack.WordStore.temp 0#5)

def body7_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(349, 345)]

def body7_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 353 1#64)

def body7_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(365, 329)]

def body7_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 369 (Flapjack.WordLangAddr.addr 365 208#64))

def body7_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 369), (375, 309), (379, 349), (383, 313), (387, 325), (391, 365)]

def body7_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(397, 375), (401, 379), (405, 383), (409, 387), (413, 391)]

def body7_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (421, 2), (397, 375), (401, 379), (405, 383), (409, 387), (413, 391)]

def body7_55 : WordLangProgHOL (BitVec 64) :=
.seq body7_54 body7_10

def body7_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body7_53, 608, 7)) (some 76) ([2]) (some (2, body7_55, 608, 8))

def body7_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(433, 413)]

def body7_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 437 (Flapjack.WordLangAddr.addr 433 224#64))

def body7_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 437), (443, 397), (447, 401), (451, 405), (455, 409)]

def body7_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(461, 443), (465, 447), (469, 451), (473, 455)]

def body7_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (481, 2), (461, 443), (465, 447), (469, 451), (473, 455)]

def body7_62 : WordLangProgHOL (BitVec 64) :=
.seq body7_61 body7_10

def body7_63 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body7_60, 608, 9)) (some 73) ([2]) (some (2, body7_62, 608, 10))

def body7_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 493 Flapjack.WordStore.heapLength

def body7_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 497 493 (Flapjack.WordRegImm.imm 1#64)))

def body7_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 501 497

def body7_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 505 501 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def body7_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(517, 505), (513, 473), (509, 473)]

def body7_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 513 (Flapjack.WordLangAddr.addr 517 0#64))

def body7_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 521 Flapjack.WordStore.heapLength

def body7_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 525 521 (Flapjack.WordRegImm.imm 1#64)))

def body7_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 529 525

def body7_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 533 529 (Flapjack.WordRegImm.imm 18446744073709551328#64)))

def body7_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(545, 533), (541, 469), (537, 469)]

def body7_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 541 (Flapjack.WordLangAddr.addr 545 0#64))

def body7_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(553, 465), (549, 465)]

def body7_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 553)

def body7_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 557 8#64)

def body7_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 557)]

def body7_80 : WordLangProgHOL (BitVec 64) :=
.seq body7_79 body7_10

def body7_81 : WordLangProgHOL (BitVec 64) :=
.seq body7_78 body7_80

def body7_82 : WordLangProgHOL (BitVec 64) :=
.seq body7_77 body7_81

def body7_83 : WordLangProgHOL (BitVec 64) :=
.seq body7_76 body7_82

def body7_84 : WordLangProgHOL (BitVec 64) :=
.seq body7_75 body7_83

def body7_85 : WordLangProgHOL (BitVec 64) :=
.seq body7_74 body7_84

def body7_86 : WordLangProgHOL (BitVec 64) :=
.seq body7_73 body7_85

def body7_87 : WordLangProgHOL (BitVec 64) :=
.seq body7_72 body7_86

def body7_88 : WordLangProgHOL (BitVec 64) :=
.seq body7_71 body7_87

def body7_89 : WordLangProgHOL (BitVec 64) :=
.seq body7_70 body7_88

def body7_90 : WordLangProgHOL (BitVec 64) :=
.seq body7_69 body7_89

def body7_91 : WordLangProgHOL (BitVec 64) :=
.seq body7_68 body7_90

def body7_92 : WordLangProgHOL (BitVec 64) :=
.seq body7_67 body7_91

def body7_93 : WordLangProgHOL (BitVec 64) :=
.seq body7_66 body7_92

def body7_94 : WordLangProgHOL (BitVec 64) :=
.seq body7_65 body7_93

def body7_95 : WordLangProgHOL (BitVec 64) :=
.seq body7_64 body7_94

def body7_96 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_95

def body7_97 : WordLangProgHOL (BitVec 64) :=
.seq body7_63 body7_96

def body7_98 : WordLangProgHOL (BitVec 64) :=
.seq body7_59 body7_97

def body7_99 : WordLangProgHOL (BitVec 64) :=
.seq body7_58 body7_98

def body7_100 : WordLangProgHOL (BitVec 64) :=
.seq body7_57 body7_99

def body7_101 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_100

def body7_102 : WordLangProgHOL (BitVec 64) :=
.seq body7_56 body7_101

def body7_103 : WordLangProgHOL (BitVec 64) :=
.seq body7_52 body7_102

def body7_104 : WordLangProgHOL (BitVec 64) :=
.seq body7_51 body7_103

def body7_105 : WordLangProgHOL (BitVec 64) :=
.seq body7_50 body7_104

def body7_106 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_105

def body7_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(609, 317), (605, 321), (601, 329), (597, 333), (593, 309), (585, 349), (581, 313), (573, 325)]

def body7_108 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_107

def body7_109 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 349 (Flapjack.WordRegImm.reg 353) body7_106 body7_108

def body7_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 605), (627, 593), (631, 585), (635, 581), (639, 609), (643, 573), (647, 601), (651, 597), (621, 605)]

def body7_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(657, 627), (661, 631), (665, 635), (669, 639), (673, 643), (677, 647), (681, 651)]

def body7_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (689, 2), (657, 627), (661, 631), (665, 635), (669, 639), (673, 643), (677, 647), (681, 651)]

def body7_113 : WordLangProgHOL (BitVec 64) :=
.seq body7_112 body7_10

def body7_114 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body7_111, 608, 11)) (some 393) ([2]) (some (2, body7_113, 608, 12))

def body7_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(701, 669)]

def body7_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 705 701 (Flapjack.WordRegImm.imm 48#64)))

def body7_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(717, 705), (713, 681), (709, 681)]

def body7_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 713 (Flapjack.WordLangAddr.addr 717 0#64))

def body7_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 721 Flapjack.WordStore.heapLength

def body7_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 725 721 (Flapjack.WordRegImm.imm 1#64)))

def body7_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 729 725

def body7_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 733 (Flapjack.WordLangAddr.addr 729 18446744073709551360#64))

def body7_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 737 733 (Flapjack.WordRegImm.imm 200#64)))

def body7_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 741 0#64)

def body7_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(749, 737), (745, 741)]

def body7_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 745 (Flapjack.WordLangAddr.addr 749 0#64))

def body7_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(755, 657), (759, 661), (763, 665), (767, 673), (771, 677)]

def body7_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(777, 755), (781, 759), (785, 763), (789, 767), (793, 771)]

def body7_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (801, 2), (777, 755), (781, 759), (785, 763), (789, 767), (793, 771)]

def body7_130 : WordLangProgHOL (BitVec 64) :=
.seq body7_129 body7_10

def body7_131 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))))),
  Flapjack.Spt.ln)), body7_128, 608, 13)) (some 476) ([]) (some (2, body7_130, 608, 14))

def body7_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 781), (819, 777), (823, 785), (827, 789), (831, 793), (813, 781)]

def body7_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(837, 819), (841, 823), (845, 827), (849, 831)]

def body7_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (857, 2), (837, 819), (841, 823), (845, 827), (849, 831)]

def body7_135 : WordLangProgHOL (BitVec 64) :=
.seq body7_134 body7_10

def body7_136 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body7_133, 608, 15)) (some 606) ([2]) (some (2, body7_135, 608, 16))

def body7_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 869 Flapjack.WordStore.heapLength

def body7_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 873 869 (Flapjack.WordRegImm.imm 1#64)))

def body7_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 877 873

def body7_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 881 877 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def body7_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(893, 881), (889, 845), (885, 845)]

def body7_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 889 (Flapjack.WordLangAddr.addr 893 0#64))

def body7_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 897 Flapjack.WordStore.heapLength

def body7_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 901 897 (Flapjack.WordRegImm.imm 1#64)))

def body7_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 905 901

def body7_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 909 905 (Flapjack.WordRegImm.imm 18446744073709551328#64)))

def body7_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(921, 909), (917, 841), (913, 841)]

def body7_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 917 (Flapjack.WordLangAddr.addr 921 0#64))

def body7_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 849), (925, 849)]

def body7_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 837 [2]

def body7_151 : WordLangProgHOL (BitVec 64) :=
.seq body7_149 body7_150

def body7_152 : WordLangProgHOL (BitVec 64) :=
.seq body7_148 body7_151

def body7_153 : WordLangProgHOL (BitVec 64) :=
.seq body7_147 body7_152

def body7_154 : WordLangProgHOL (BitVec 64) :=
.seq body7_146 body7_153

def body7_155 : WordLangProgHOL (BitVec 64) :=
.seq body7_145 body7_154

def body7_156 : WordLangProgHOL (BitVec 64) :=
.seq body7_144 body7_155

def body7_157 : WordLangProgHOL (BitVec 64) :=
.seq body7_143 body7_156

def body7_158 : WordLangProgHOL (BitVec 64) :=
.seq body7_142 body7_157

def body7_159 : WordLangProgHOL (BitVec 64) :=
.seq body7_141 body7_158

def body7_160 : WordLangProgHOL (BitVec 64) :=
.seq body7_140 body7_159

def body7_161 : WordLangProgHOL (BitVec 64) :=
.seq body7_139 body7_160

def body7_162 : WordLangProgHOL (BitVec 64) :=
.seq body7_138 body7_161

def body7_163 : WordLangProgHOL (BitVec 64) :=
.seq body7_137 body7_162

def body7_164 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_163

def body7_165 : WordLangProgHOL (BitVec 64) :=
.seq body7_136 body7_164

def body7_166 : WordLangProgHOL (BitVec 64) :=
.seq body7_132 body7_165

def body7_167 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_166

def body7_168 : WordLangProgHOL (BitVec 64) :=
.seq body7_131 body7_167

def body7_169 : WordLangProgHOL (BitVec 64) :=
.seq body7_127 body7_168

def body7_170 : WordLangProgHOL (BitVec 64) :=
.seq body7_126 body7_169

def body7_171 : WordLangProgHOL (BitVec 64) :=
.seq body7_125 body7_170

def body7_172 : WordLangProgHOL (BitVec 64) :=
.seq body7_124 body7_171

def body7_173 : WordLangProgHOL (BitVec 64) :=
.seq body7_123 body7_172

def body7_174 : WordLangProgHOL (BitVec 64) :=
.seq body7_122 body7_173

def body7_175 : WordLangProgHOL (BitVec 64) :=
.seq body7_121 body7_174

def body7_176 : WordLangProgHOL (BitVec 64) :=
.seq body7_120 body7_175

def body7_177 : WordLangProgHOL (BitVec 64) :=
.seq body7_119 body7_176

def body7_178 : WordLangProgHOL (BitVec 64) :=
.seq body7_118 body7_177

def body7_179 : WordLangProgHOL (BitVec 64) :=
.seq body7_117 body7_178

def body7_180 : WordLangProgHOL (BitVec 64) :=
.seq body7_116 body7_179

def body7_181 : WordLangProgHOL (BitVec 64) :=
.seq body7_115 body7_180

def body7_182 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_181

def body7_183 : WordLangProgHOL (BitVec 64) :=
.seq body7_114 body7_182

def body7_184 : WordLangProgHOL (BitVec 64) :=
.seq body7_110 body7_183

def body7_185 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_184

def body7_186 : WordLangProgHOL (BitVec 64) :=
.seq body7_109 body7_185

def body7_187 : WordLangProgHOL (BitVec 64) :=
.seq body7_49 body7_186

def body7_188 : WordLangProgHOL (BitVec 64) :=
.seq body7_48 body7_187

def body7_189 : WordLangProgHOL (BitVec 64) :=
.seq body7_47 body7_188

def body7_190 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_189

def body7_191 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 341 (Flapjack.WordRegImm.imm 8#64) body7_46 body7_190

def body7_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(997, 945), (977, 929)]

def body7_193 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_192

def body7_194 : WordLangProgHOL (BitVec 64) :=
.seq body7_191 body7_193

def body7_195 : WordLangProgHOL (BitVec 64) :=
.seq body7_44 body7_194

def body7_196 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body7_43, 608, 6)) (some 607) ([]) (some (2, body7_195, 608, 17))

def body7_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1057, 997), (1033, 977)]

def body7_198 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_197

def body7_199 : WordLangProgHOL (BitVec 64) :=
.seq body7_196 body7_198

def body7_200 : WordLangProgHOL (BitVec 64) :=
.seq body7_42 body7_199

def body7_201 : WordLangProgHOL (BitVec 64) :=
.seq body7_41 body7_200

def body7_202 : WordLangProgHOL (BitVec 64) :=
.seq body7_40 body7_201

def body7_203 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_202

def body7_204 : WordLangProgHOL (BitVec 64) :=
.seq body7_39 body7_203

def body7_205 : WordLangProgHOL (BitVec 64) :=
.seq body7_35 body7_204

def body7_206 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_205

def body7_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1057, 157), (1033, 181)]

def body7_208 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_207

def body7_209 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 193 (Flapjack.WordRegImm.reg 197) body7_206 body7_208

def body7_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1083, 1057), (1087, 1033)]

def body7_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1113, 2), (1101, 2), (1093, 1083), (1097, 1087)]

def body7_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (1105, 2), (1093, 1083), (1097, 1087)]

def body7_213 : WordLangProgHOL (BitVec 64) :=
.seq body7_212 body7_10

def body7_214 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
                Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body7_211, 608, 18)) (some 392) ([]) (some (2, body7_213, 608, 19))

def body7_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 1117 Flapjack.WordStore.heapLength

def body7_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1121 1117 (Flapjack.WordRegImm.imm 1#64)))

def body7_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1125 1121

def body7_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1129 (Flapjack.WordLangAddr.addr 1125 18446744073709551328#64))

def body7_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1133 1129 (Flapjack.WordRegImm.imm 24#64)))

def body7_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1145, 1133), (1141, 1113), (1137, 1113)]

def body7_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1141 (Flapjack.WordLangAddr.addr 1145 0#64))

def body7_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1151, 1093), (1155, 1097)]

def body7_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1161, 1151), (1165, 1155)]

def body7_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (1173, 2), (1161, 1151), (1165, 1155)]

def body7_225 : WordLangProgHOL (BitVec 64) :=
.seq body7_224 body7_10

def body7_226 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body7_223, 608, 20)) (some 601) ([]) (some (2, body7_225, 608, 21))

def body7_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1187, 1161), (1191, 1165)]

def body7_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1197, 1187), (1201, 1191)]

def body7_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (1209, 2), (1197, 1187), (1201, 1191)]

def body7_230 : WordLangProgHOL (BitVec 64) :=
.seq body7_229 body7_10

def body7_231 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body7_228, 608, 22)) (some 604) ([]) (some (2, body7_230, 608, 23))

def body7_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 1201), (1221, 1201)]

def body7_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 1197 [2]

def body7_234 : WordLangProgHOL (BitVec 64) :=
.seq body7_232 body7_233

def body7_235 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_234

def body7_236 : WordLangProgHOL (BitVec 64) :=
.seq body7_231 body7_235

def body7_237 : WordLangProgHOL (BitVec 64) :=
.seq body7_227 body7_236

def body7_238 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_237

def body7_239 : WordLangProgHOL (BitVec 64) :=
.seq body7_226 body7_238

def body7_240 : WordLangProgHOL (BitVec 64) :=
.seq body7_222 body7_239

def body7_241 : WordLangProgHOL (BitVec 64) :=
.seq body7_221 body7_240

def body7_242 : WordLangProgHOL (BitVec 64) :=
.seq body7_220 body7_241

def body7_243 : WordLangProgHOL (BitVec 64) :=
.seq body7_219 body7_242

def body7_244 : WordLangProgHOL (BitVec 64) :=
.seq body7_218 body7_243

def body7_245 : WordLangProgHOL (BitVec 64) :=
.seq body7_217 body7_244

def body7_246 : WordLangProgHOL (BitVec 64) :=
.seq body7_216 body7_245

def body7_247 : WordLangProgHOL (BitVec 64) :=
.seq body7_215 body7_246

def body7_248 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_247

def body7_249 : WordLangProgHOL (BitVec 64) :=
.seq body7_214 body7_248

def body7_250 : WordLangProgHOL (BitVec 64) :=
.seq body7_210 body7_249

def body7_251 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_250

def body7_252 : WordLangProgHOL (BitVec 64) :=
.seq body7_209 body7_251

def body7_253 : WordLangProgHOL (BitVec 64) :=
.seq body7_34 body7_252

def body7_254 : WordLangProgHOL (BitVec 64) :=
.seq body7_33 body7_253

def body7_255 : WordLangProgHOL (BitVec 64) :=
.seq body7_32 body7_254

def body7_256 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_255

def body7_257 : WordLangProgHOL (BitVec 64) :=
.seq body7_31 body7_256

def body7_258 : WordLangProgHOL (BitVec 64) :=
.seq body7_27 body7_257

def body7_259 : WordLangProgHOL (BitVec 64) :=
.seq body7_26 body7_258

def body7_260 : WordLangProgHOL (BitVec 64) :=
.seq body7_25 body7_259

def body7_261 : WordLangProgHOL (BitVec 64) :=
.seq body7_24 body7_260

def body7_262 : WordLangProgHOL (BitVec 64) :=
.seq body7_23 body7_261

def body7_263 : WordLangProgHOL (BitVec 64) :=
.seq body7_22 body7_262

def body7_264 : WordLangProgHOL (BitVec 64) :=
.seq body7_21 body7_263

def body7_265 : WordLangProgHOL (BitVec 64) :=
.seq body7_20 body7_264

def body7_266 : WordLangProgHOL (BitVec 64) :=
.seq body7_19 body7_265

def body7_267 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_266

def body7_268 : WordLangProgHOL (BitVec 64) :=
.seq body7_4 body7_267

def body7_269 : WordLangProgHOL (BitVec 64) :=
.seq body7_18 body7_268

def body7_270 : WordLangProgHOL (BitVec 64) :=
.seq body7_3 body7_269

def body7_271 : WordLangProgHOL (BitVec 64) :=
.seq body7_2 body7_270

def body7_272 : WordLangProgHOL (BitVec 64) :=
.seq body7_1 body7_271

def body7_273 : WordLangProgHOL (BitVec 64) :=
.seq body7_0 body7_272

def pass7 : WordLangProgHOL (BitVec 64) := body7_273
def body8_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(29, 0), (33, 2)]

def body8_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 37 1024#64)

def body8_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(41, 33)]

def body8_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 45 (Flapjack.WordLangAddr.addr 41 128#64))

def body8_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body8_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 57 7#64)

def body8_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(61, 57)]

def body8_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 61)

def body8_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 65 8#64)

def body8_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 65)]

def body8_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body8_11 : WordLangProgHOL (BitVec 64) :=
.seq body8_9 body8_10

def body8_12 : WordLangProgHOL (BitVec 64) :=
.seq body8_8 body8_11

def body8_13 : WordLangProgHOL (BitVec 64) :=
.seq body8_7 body8_12

def body8_14 : WordLangProgHOL (BitVec 64) :=
.seq body8_6 body8_13

def body8_15 : WordLangProgHOL (BitVec 64) :=
.seq body8_5 body8_14

def body8_16 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_15

def body8_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body8_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 37 (Flapjack.WordRegImm.reg 45) body8_16 body8_17

def body8_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 93 Flapjack.WordStore.heapLength

def body8_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 97 93 (Flapjack.WordRegImm.imm 1#64)))

def body8_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 101 97

def body8_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 105 (Flapjack.WordLangAddr.addr 101 18446744073709551360#64))

def body8_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(117, 101)]

def body8_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 121 (Flapjack.WordLangAddr.addr 117 18446744073709551328#64))

def body8_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(125, 41)]

def body8_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 133 0#64)

def body8_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 125), (4, 133), (139, 29), (143, 121), (147, 125), (151, 105)]

def body8_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(181, 2), (157, 139), (161, 143), (165, 147), (169, 151)]

def body8_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (157, 139), (161, 143), (165, 147), (169, 151)]

def body8_30 : WordLangProgHOL (BitVec 64) :=
.seq body8_29 body8_10

def body8_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), body8_28, 608, 2)) (some 598) ([2, 4]) (some (2, body8_30, 608, 3))

def body8_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 165)]

def body8_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 193 (Flapjack.WordLangAddr.addr 189 128#64))

def body8_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 197 0#64)

def body8_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(211, 157), (215, 161), (219, 189), (223, 169), (227, 181)]

def body8_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(265, 2), (233, 211), (237, 215), (241, 219), (245, 223), (249, 227)]

def body8_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (233, 211), (237, 215), (241, 219), (245, 223), (249, 227)]

def body8_38 : WordLangProgHOL (BitVec 64) :=
.seq body8_37 body8_10

def body8_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body8_36, 608, 4)) (some 392) ([]) (some (2, body8_38, 608, 5))

def body8_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(269, 241)]

def body8_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 273 (Flapjack.WordLangAddr.addr 269 48#64))

def body8_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(279, 233), (283, 237), (287, 269), (291, 265), (295, 245), (299, 249), (303, 273)]

def body8_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(997, 279), (977, 299)]

def body8_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(341, 2), (309, 279), (313, 283), (317, 287), (321, 291), (325, 295), (329, 299), (333, 303)]

def body8_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 341)]

def body8_46 : WordLangProgHOL (BitVec 64) :=
.seq body8_45 body8_10

def body8_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 345 (Flapjack.WordStore.temp 0#5)

def body8_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(349, 345)]

def body8_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 353 1#64)

def body8_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(365, 329)]

def body8_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 369 (Flapjack.WordLangAddr.addr 365 208#64))

def body8_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 369), (375, 309), (379, 349), (383, 313), (387, 325), (391, 365)]

def body8_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(397, 375), (401, 379), (405, 383), (409, 387), (413, 391)]

def body8_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (397, 375), (401, 379), (405, 383), (409, 387), (413, 391)]

def body8_55 : WordLangProgHOL (BitVec 64) :=
.seq body8_54 body8_10

def body8_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body8_53, 608, 7)) (some 76) ([2]) (some (2, body8_55, 608, 8))

def body8_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(433, 413)]

def body8_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 437 (Flapjack.WordLangAddr.addr 433 224#64))

def body8_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 437), (443, 397), (447, 401), (451, 405), (455, 409)]

def body8_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(465, 447), (469, 451), (473, 455)]

def body8_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (465, 447), (469, 451), (473, 455)]

def body8_62 : WordLangProgHOL (BitVec 64) :=
.seq body8_61 body8_10

def body8_63 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body8_60, 608, 9)) (some 73) ([2]) (some (2, body8_62, 608, 10))

def body8_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 493 Flapjack.WordStore.heapLength

def body8_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 497 493 (Flapjack.WordRegImm.imm 1#64)))

def body8_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 501 497

def body8_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 505 501 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def body8_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(517, 505), (513, 473)]

def body8_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 513 (Flapjack.WordLangAddr.addr 517 0#64))

def body8_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 521 Flapjack.WordStore.heapLength

def body8_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 525 521 (Flapjack.WordRegImm.imm 1#64)))

def body8_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 529 525

def body8_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 533 529 (Flapjack.WordRegImm.imm 18446744073709551328#64)))

def body8_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(545, 533), (541, 469)]

def body8_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 541 (Flapjack.WordLangAddr.addr 545 0#64))

def body8_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(553, 465)]

def body8_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 553)

def body8_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 557 8#64)

def body8_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 557)]

def body8_80 : WordLangProgHOL (BitVec 64) :=
.seq body8_79 body8_10

def body8_81 : WordLangProgHOL (BitVec 64) :=
.seq body8_78 body8_80

def body8_82 : WordLangProgHOL (BitVec 64) :=
.seq body8_77 body8_81

def body8_83 : WordLangProgHOL (BitVec 64) :=
.seq body8_76 body8_82

def body8_84 : WordLangProgHOL (BitVec 64) :=
.seq body8_75 body8_83

def body8_85 : WordLangProgHOL (BitVec 64) :=
.seq body8_74 body8_84

def body8_86 : WordLangProgHOL (BitVec 64) :=
.seq body8_73 body8_85

def body8_87 : WordLangProgHOL (BitVec 64) :=
.seq body8_72 body8_86

def body8_88 : WordLangProgHOL (BitVec 64) :=
.seq body8_71 body8_87

def body8_89 : WordLangProgHOL (BitVec 64) :=
.seq body8_70 body8_88

def body8_90 : WordLangProgHOL (BitVec 64) :=
.seq body8_69 body8_89

def body8_91 : WordLangProgHOL (BitVec 64) :=
.seq body8_68 body8_90

def body8_92 : WordLangProgHOL (BitVec 64) :=
.seq body8_67 body8_91

def body8_93 : WordLangProgHOL (BitVec 64) :=
.seq body8_66 body8_92

def body8_94 : WordLangProgHOL (BitVec 64) :=
.seq body8_65 body8_93

def body8_95 : WordLangProgHOL (BitVec 64) :=
.seq body8_64 body8_94

def body8_96 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_95

def body8_97 : WordLangProgHOL (BitVec 64) :=
.seq body8_63 body8_96

def body8_98 : WordLangProgHOL (BitVec 64) :=
.seq body8_59 body8_97

def body8_99 : WordLangProgHOL (BitVec 64) :=
.seq body8_58 body8_98

def body8_100 : WordLangProgHOL (BitVec 64) :=
.seq body8_57 body8_99

def body8_101 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_100

def body8_102 : WordLangProgHOL (BitVec 64) :=
.seq body8_56 body8_101

def body8_103 : WordLangProgHOL (BitVec 64) :=
.seq body8_52 body8_102

def body8_104 : WordLangProgHOL (BitVec 64) :=
.seq body8_51 body8_103

def body8_105 : WordLangProgHOL (BitVec 64) :=
.seq body8_50 body8_104

def body8_106 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_105

def body8_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(609, 317), (605, 321), (601, 329), (597, 333), (593, 309), (585, 349), (581, 313), (573, 325)]

def body8_108 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_107

def body8_109 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 349 (Flapjack.WordRegImm.reg 353) body8_106 body8_108

def body8_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 605), (627, 593), (631, 585), (635, 581), (639, 609), (643, 573), (647, 601), (651, 597)]

def body8_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(657, 627), (661, 631), (665, 635), (669, 639), (673, 643), (677, 647), (681, 651)]

def body8_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (657, 627), (661, 631), (665, 635), (669, 639), (673, 643), (677, 647), (681, 651)]

def body8_113 : WordLangProgHOL (BitVec 64) :=
.seq body8_112 body8_10

def body8_114 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body8_111, 608, 11)) (some 393) ([2]) (some (2, body8_113, 608, 12))

def body8_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(701, 669)]

def body8_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 705 701 (Flapjack.WordRegImm.imm 48#64)))

def body8_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(717, 705), (713, 681)]

def body8_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 713 (Flapjack.WordLangAddr.addr 717 0#64))

def body8_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 721 Flapjack.WordStore.heapLength

def body8_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 725 721 (Flapjack.WordRegImm.imm 1#64)))

def body8_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 729 725

def body8_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 733 (Flapjack.WordLangAddr.addr 729 18446744073709551360#64))

def body8_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 737 733 (Flapjack.WordRegImm.imm 200#64)))

def body8_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 741 0#64)

def body8_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(749, 737), (745, 741)]

def body8_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 745 (Flapjack.WordLangAddr.addr 749 0#64))

def body8_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(755, 657), (759, 661), (763, 665), (767, 673), (771, 677)]

def body8_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(777, 755), (781, 759), (785, 763), (789, 767), (793, 771)]

def body8_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (777, 755), (781, 759), (785, 763), (789, 767), (793, 771)]

def body8_130 : WordLangProgHOL (BitVec 64) :=
.seq body8_129 body8_10

def body8_131 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))))))),
  Flapjack.Spt.ln)), body8_128, 608, 13)) (some 476) ([]) (some (2, body8_130, 608, 14))

def body8_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 781), (819, 777), (823, 785), (827, 789), (831, 793)]

def body8_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(837, 819), (841, 823), (845, 827), (849, 831)]

def body8_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (837, 819), (841, 823), (845, 827), (849, 831)]

def body8_135 : WordLangProgHOL (BitVec 64) :=
.seq body8_134 body8_10

def body8_136 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body8_133, 608, 15)) (some 606) ([2]) (some (2, body8_135, 608, 16))

def body8_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 869 Flapjack.WordStore.heapLength

def body8_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 873 869 (Flapjack.WordRegImm.imm 1#64)))

def body8_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 877 873

def body8_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 881 877 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def body8_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(893, 881), (889, 845)]

def body8_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 889 (Flapjack.WordLangAddr.addr 893 0#64))

def body8_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 897 Flapjack.WordStore.heapLength

def body8_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 901 897 (Flapjack.WordRegImm.imm 1#64)))

def body8_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 905 901

def body8_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 909 905 (Flapjack.WordRegImm.imm 18446744073709551328#64)))

def body8_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(921, 909), (917, 841)]

def body8_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 917 (Flapjack.WordLangAddr.addr 921 0#64))

def body8_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 849)]

def body8_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 837 [2]

def body8_151 : WordLangProgHOL (BitVec 64) :=
.seq body8_149 body8_150

def body8_152 : WordLangProgHOL (BitVec 64) :=
.seq body8_148 body8_151

def body8_153 : WordLangProgHOL (BitVec 64) :=
.seq body8_147 body8_152

def body8_154 : WordLangProgHOL (BitVec 64) :=
.seq body8_146 body8_153

def body8_155 : WordLangProgHOL (BitVec 64) :=
.seq body8_145 body8_154

def body8_156 : WordLangProgHOL (BitVec 64) :=
.seq body8_144 body8_155

def body8_157 : WordLangProgHOL (BitVec 64) :=
.seq body8_143 body8_156

def body8_158 : WordLangProgHOL (BitVec 64) :=
.seq body8_142 body8_157

def body8_159 : WordLangProgHOL (BitVec 64) :=
.seq body8_141 body8_158

def body8_160 : WordLangProgHOL (BitVec 64) :=
.seq body8_140 body8_159

def body8_161 : WordLangProgHOL (BitVec 64) :=
.seq body8_139 body8_160

def body8_162 : WordLangProgHOL (BitVec 64) :=
.seq body8_138 body8_161

def body8_163 : WordLangProgHOL (BitVec 64) :=
.seq body8_137 body8_162

def body8_164 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_163

def body8_165 : WordLangProgHOL (BitVec 64) :=
.seq body8_136 body8_164

def body8_166 : WordLangProgHOL (BitVec 64) :=
.seq body8_132 body8_165

def body8_167 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_166

def body8_168 : WordLangProgHOL (BitVec 64) :=
.seq body8_131 body8_167

def body8_169 : WordLangProgHOL (BitVec 64) :=
.seq body8_127 body8_168

def body8_170 : WordLangProgHOL (BitVec 64) :=
.seq body8_126 body8_169

def body8_171 : WordLangProgHOL (BitVec 64) :=
.seq body8_125 body8_170

def body8_172 : WordLangProgHOL (BitVec 64) :=
.seq body8_124 body8_171

def body8_173 : WordLangProgHOL (BitVec 64) :=
.seq body8_123 body8_172

def body8_174 : WordLangProgHOL (BitVec 64) :=
.seq body8_122 body8_173

def body8_175 : WordLangProgHOL (BitVec 64) :=
.seq body8_121 body8_174

def body8_176 : WordLangProgHOL (BitVec 64) :=
.seq body8_120 body8_175

def body8_177 : WordLangProgHOL (BitVec 64) :=
.seq body8_119 body8_176

def body8_178 : WordLangProgHOL (BitVec 64) :=
.seq body8_118 body8_177

def body8_179 : WordLangProgHOL (BitVec 64) :=
.seq body8_117 body8_178

def body8_180 : WordLangProgHOL (BitVec 64) :=
.seq body8_116 body8_179

def body8_181 : WordLangProgHOL (BitVec 64) :=
.seq body8_115 body8_180

def body8_182 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_181

def body8_183 : WordLangProgHOL (BitVec 64) :=
.seq body8_114 body8_182

def body8_184 : WordLangProgHOL (BitVec 64) :=
.seq body8_110 body8_183

def body8_185 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_184

def body8_186 : WordLangProgHOL (BitVec 64) :=
.seq body8_109 body8_185

def body8_187 : WordLangProgHOL (BitVec 64) :=
.seq body8_49 body8_186

def body8_188 : WordLangProgHOL (BitVec 64) :=
.seq body8_48 body8_187

def body8_189 : WordLangProgHOL (BitVec 64) :=
.seq body8_47 body8_188

def body8_190 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_189

def body8_191 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 341 (Flapjack.WordRegImm.imm 8#64) body8_46 body8_190

def body8_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(997, 945), (977, 929)]

def body8_193 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_192

def body8_194 : WordLangProgHOL (BitVec 64) :=
.seq body8_191 body8_193

def body8_195 : WordLangProgHOL (BitVec 64) :=
.seq body8_44 body8_194

def body8_196 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), body8_43, 608, 6)) (some 607) ([]) (some (2, body8_195, 608, 17))

def body8_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1057, 997), (1033, 977)]

def body8_198 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_197

def body8_199 : WordLangProgHOL (BitVec 64) :=
.seq body8_196 body8_198

def body8_200 : WordLangProgHOL (BitVec 64) :=
.seq body8_42 body8_199

def body8_201 : WordLangProgHOL (BitVec 64) :=
.seq body8_41 body8_200

def body8_202 : WordLangProgHOL (BitVec 64) :=
.seq body8_40 body8_201

def body8_203 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_202

def body8_204 : WordLangProgHOL (BitVec 64) :=
.seq body8_39 body8_203

def body8_205 : WordLangProgHOL (BitVec 64) :=
.seq body8_35 body8_204

def body8_206 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_205

def body8_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1057, 157), (1033, 181)]

def body8_208 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_207

def body8_209 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 193 (Flapjack.WordRegImm.reg 197) body8_206 body8_208

def body8_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1083, 1057), (1087, 1033)]

def body8_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1113, 2), (1093, 1083), (1097, 1087)]

def body8_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (1093, 1083), (1097, 1087)]

def body8_213 : WordLangProgHOL (BitVec 64) :=
.seq body8_212 body8_10

def body8_214 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))))
                Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), body8_211, 608, 18)) (some 392) ([]) (some (2, body8_213, 608, 19))

def body8_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 1117 Flapjack.WordStore.heapLength

def body8_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1121 1117 (Flapjack.WordRegImm.imm 1#64)))

def body8_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1125 1121

def body8_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1129 (Flapjack.WordLangAddr.addr 1125 18446744073709551328#64))

def body8_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1133 1129 (Flapjack.WordRegImm.imm 24#64)))

def body8_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1145, 1133), (1141, 1113)]

def body8_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1141 (Flapjack.WordLangAddr.addr 1145 0#64))

def body8_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1151, 1093), (1155, 1097)]

def body8_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1161, 1151), (1165, 1155)]

def body8_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (1161, 1151), (1165, 1155)]

def body8_225 : WordLangProgHOL (BitVec 64) :=
.seq body8_224 body8_10

def body8_226 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), body8_223, 608, 20)) (some 601) ([]) (some (2, body8_225, 608, 21))

def body8_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1187, 1161), (1191, 1165)]

def body8_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1197, 1187), (1201, 1191)]

def body8_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (1197, 1187), (1201, 1191)]

def body8_230 : WordLangProgHOL (BitVec 64) :=
.seq body8_229 body8_10

def body8_231 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), body8_228, 608, 22)) (some 604) ([]) (some (2, body8_230, 608, 23))

def body8_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 1201)]

def body8_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 1197 [2]

def body8_234 : WordLangProgHOL (BitVec 64) :=
.seq body8_232 body8_233

def body8_235 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_234

def body8_236 : WordLangProgHOL (BitVec 64) :=
.seq body8_231 body8_235

def body8_237 : WordLangProgHOL (BitVec 64) :=
.seq body8_227 body8_236

def body8_238 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_237

def body8_239 : WordLangProgHOL (BitVec 64) :=
.seq body8_226 body8_238

def body8_240 : WordLangProgHOL (BitVec 64) :=
.seq body8_222 body8_239

def body8_241 : WordLangProgHOL (BitVec 64) :=
.seq body8_221 body8_240

def body8_242 : WordLangProgHOL (BitVec 64) :=
.seq body8_220 body8_241

def body8_243 : WordLangProgHOL (BitVec 64) :=
.seq body8_219 body8_242

def body8_244 : WordLangProgHOL (BitVec 64) :=
.seq body8_218 body8_243

def body8_245 : WordLangProgHOL (BitVec 64) :=
.seq body8_217 body8_244

def body8_246 : WordLangProgHOL (BitVec 64) :=
.seq body8_216 body8_245

def body8_247 : WordLangProgHOL (BitVec 64) :=
.seq body8_215 body8_246

def body8_248 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_247

def body8_249 : WordLangProgHOL (BitVec 64) :=
.seq body8_214 body8_248

def body8_250 : WordLangProgHOL (BitVec 64) :=
.seq body8_210 body8_249

def body8_251 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_250

def body8_252 : WordLangProgHOL (BitVec 64) :=
.seq body8_209 body8_251

def body8_253 : WordLangProgHOL (BitVec 64) :=
.seq body8_34 body8_252

def body8_254 : WordLangProgHOL (BitVec 64) :=
.seq body8_33 body8_253

def body8_255 : WordLangProgHOL (BitVec 64) :=
.seq body8_32 body8_254

def body8_256 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_255

def body8_257 : WordLangProgHOL (BitVec 64) :=
.seq body8_31 body8_256

def body8_258 : WordLangProgHOL (BitVec 64) :=
.seq body8_27 body8_257

def body8_259 : WordLangProgHOL (BitVec 64) :=
.seq body8_26 body8_258

def body8_260 : WordLangProgHOL (BitVec 64) :=
.seq body8_25 body8_259

def body8_261 : WordLangProgHOL (BitVec 64) :=
.seq body8_24 body8_260

def body8_262 : WordLangProgHOL (BitVec 64) :=
.seq body8_23 body8_261

def body8_263 : WordLangProgHOL (BitVec 64) :=
.seq body8_22 body8_262

def body8_264 : WordLangProgHOL (BitVec 64) :=
.seq body8_21 body8_263

def body8_265 : WordLangProgHOL (BitVec 64) :=
.seq body8_20 body8_264

def body8_266 : WordLangProgHOL (BitVec 64) :=
.seq body8_19 body8_265

def body8_267 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_266

def body8_268 : WordLangProgHOL (BitVec 64) :=
.seq body8_4 body8_267

def body8_269 : WordLangProgHOL (BitVec 64) :=
.seq body8_18 body8_268

def body8_270 : WordLangProgHOL (BitVec 64) :=
.seq body8_3 body8_269

def body8_271 : WordLangProgHOL (BitVec 64) :=
.seq body8_2 body8_270

def body8_272 : WordLangProgHOL (BitVec 64) :=
.seq body8_1 body8_271

def body8_273 : WordLangProgHOL (BitVec 64) :=
.seq body8_0 body8_272

def pass8 : WordLangProgHOL (BitVec 64) := body8_273
def body10_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def body10_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1024#64)

def body10_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 2)]

def body10_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 128#64))

def body10_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def body10_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 7#64)

def body10_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def body10_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def body10_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def body10_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def body10_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def body10_11 : WordLangProgHOL (BitVec 64) :=
.seq body10_9 body10_10

def body10_12 : WordLangProgHOL (BitVec 64) :=
.seq body10_8 body10_11

def body10_13 : WordLangProgHOL (BitVec 64) :=
.seq body10_7 body10_12

def body10_14 : WordLangProgHOL (BitVec 64) :=
.seq body10_6 body10_13

def body10_15 : WordLangProgHOL (BitVec 64) :=
.seq body10_5 body10_14

def body10_16 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_15

def body10_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def body10_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 2) body10_16 body10_17

def body10_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def body10_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def body10_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def body10_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def body10_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 18446744073709551328#64))

def body10_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def body10_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def body10_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (56, 6), (46, 2), (52, 8)]

def body10_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (56, 56), (0, 46), (52, 52)]

def body10_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (56, 56), (0, 46), (52, 52)]

def body10_29 : WordLangProgHOL (BitVec 64) :=
.seq body10_28 body10_10

def body10_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_27, 608, 2)) (some 598) ([2, 4]) (some (2, body10_29, 608, 3))

def body10_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def body10_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 128#64))

def body10_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def body10_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (56, 56), (46, 0), (52, 52), (48, 4)]

def body10_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (56, 56), (0, 46), (52, 52), (46, 48)]

def body10_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (56, 56), (0, 46), (52, 52), (46, 48)]

def body10_37 : WordLangProgHOL (BitVec 64) :=
.seq body10_36 body10_10

def body10_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_35, 608, 4)) (some 392) ([]) (some (2, body10_37, 608, 5))

def body10_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 48#64))

def body10_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (56, 56), (48, 0), (54, 4), (52, 52), (46, 46), (50, 2)]

def body10_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46)]

def body10_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 56), (50, 48), (0, 54), (52, 52), (54, 46), (56, 50)]

def body10_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 (Flapjack.WordStore.temp 0#5)

def body10_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def body10_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def body10_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 54)]

def body10_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 208#64))

def body10_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (58, 4), (60, 48), (62, 52), (46, 0)]

def body10_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (58, 58), (60, 60), (62, 62), (0, 46)]

def body10_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (58, 58), (60, 60), (62, 62), (0, 46)]

def body10_51 : WordLangProgHOL (BitVec 64) :=
.seq body10_50 body10_10

def body10_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_49, 608, 7)) (some 76) ([2]) (some (2, body10_51, 608, 8))

def body10_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 224#64))

def body10_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (58, 58), (60, 60), (62, 62)]

def body10_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 58), (6, 60), (8, 62)]

def body10_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 58), (6, 60), (8, 62)]

def body10_57 : WordLangProgHOL (BitVec 64) :=
.seq body10_56 body10_10

def body10_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls ()) (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_55, 608, 9)) (some 73) ([2]) (some (2, body10_57, 608, 10))

def body10_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def body10_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def body10_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 0#64))

def body10_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551328#64)))

def body10_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def body10_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def body10_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 4)

def body10_66 : WordLangProgHOL (BitVec 64) :=
.seq body10_65 body10_12

def body10_67 : WordLangProgHOL (BitVec 64) :=
.seq body10_44 body10_66

def body10_68 : WordLangProgHOL (BitVec 64) :=
.seq body10_64 body10_67

def body10_69 : WordLangProgHOL (BitVec 64) :=
.seq body10_63 body10_68

def body10_70 : WordLangProgHOL (BitVec 64) :=
.seq body10_62 body10_69

def body10_71 : WordLangProgHOL (BitVec 64) :=
.seq body10_21 body10_70

def body10_72 : WordLangProgHOL (BitVec 64) :=
.seq body10_20 body10_71

def body10_73 : WordLangProgHOL (BitVec 64) :=
.seq body10_19 body10_72

def body10_74 : WordLangProgHOL (BitVec 64) :=
.seq body10_61 body10_73

def body10_75 : WordLangProgHOL (BitVec 64) :=
.seq body10_60 body10_74

def body10_76 : WordLangProgHOL (BitVec 64) :=
.seq body10_59 body10_75

def body10_77 : WordLangProgHOL (BitVec 64) :=
.seq body10_21 body10_76

def body10_78 : WordLangProgHOL (BitVec 64) :=
.seq body10_20 body10_77

def body10_79 : WordLangProgHOL (BitVec 64) :=
.seq body10_19 body10_78

def body10_80 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_79

def body10_81 : WordLangProgHOL (BitVec 64) :=
.seq body10_58 body10_80

def body10_82 : WordLangProgHOL (BitVec 64) :=
.seq body10_54 body10_81

def body10_83 : WordLangProgHOL (BitVec 64) :=
.seq body10_53 body10_82

def body10_84 : WordLangProgHOL (BitVec 64) :=
.seq body10_31 body10_83

def body10_85 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_84

def body10_86 : WordLangProgHOL (BitVec 64) :=
.seq body10_52 body10_85

def body10_87 : WordLangProgHOL (BitVec 64) :=
.seq body10_48 body10_86

def body10_88 : WordLangProgHOL (BitVec 64) :=
.seq body10_47 body10_87

def body10_89 : WordLangProgHOL (BitVec 64) :=
.seq body10_46 body10_88

def body10_90 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_89

def body10_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(50, 50), (0, 0), (54, 54), (56, 56), (44, 44), (46, 4), (48, 48), (52, 52)]

def body10_92 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_91

def body10_93 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) body10_90 body10_92

def body10_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56)]

def body10_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (4, 50), (50, 52), (52, 54), (0, 56)]

def body10_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (4, 50), (50, 52), (52, 54), (0, 56)]

def body10_97 : WordLangProgHOL (BitVec 64) :=
.seq body10_96 body10_10

def body10_98 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), body10_95, 608, 11)) (some 393) ([2]) (some (2, body10_97, 608, 12))

def body10_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 48#64)))

def body10_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def body10_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def body10_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def body10_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def body10_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def body10_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def body10_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 200#64)))

def body10_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def body10_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52)]

def body10_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (46, 48), (48, 50), (50, 52)]

def body10_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (46, 48), (48, 50), (50, 52)]

def body10_111 : WordLangProgHOL (BitVec 64) :=
.seq body10_110 body10_10

def body10_112 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ()))
          (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_109, 608, 13)) (some 476) ([]) (some (2, body10_111, 608, 14))

def body10_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50)]

def body10_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 44), (0, 46), (4, 48), (12, 50)]

def body10_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 44), (0, 46), (4, 48), (12, 50)]

def body10_116 : WordLangProgHOL (BitVec 64) :=
.seq body10_115 body10_10

def body10_117 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls ()) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_114, 608, 15)) (some 606) ([2]) (some (2, body10_116, 608, 16))

def body10_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def body10_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def body10_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 12)]

def body10_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2]

def body10_122 : WordLangProgHOL (BitVec 64) :=
.seq body10_120 body10_121

def body10_123 : WordLangProgHOL (BitVec 64) :=
.seq body10_101 body10_122

def body10_124 : WordLangProgHOL (BitVec 64) :=
.seq body10_100 body10_123

def body10_125 : WordLangProgHOL (BitVec 64) :=
.seq body10_62 body10_124

def body10_126 : WordLangProgHOL (BitVec 64) :=
.seq body10_21 body10_125

def body10_127 : WordLangProgHOL (BitVec 64) :=
.seq body10_20 body10_126

def body10_128 : WordLangProgHOL (BitVec 64) :=
.seq body10_19 body10_127

def body10_129 : WordLangProgHOL (BitVec 64) :=
.seq body10_119 body10_128

def body10_130 : WordLangProgHOL (BitVec 64) :=
.seq body10_118 body10_129

def body10_131 : WordLangProgHOL (BitVec 64) :=
.seq body10_59 body10_130

def body10_132 : WordLangProgHOL (BitVec 64) :=
.seq body10_21 body10_131

def body10_133 : WordLangProgHOL (BitVec 64) :=
.seq body10_20 body10_132

def body10_134 : WordLangProgHOL (BitVec 64) :=
.seq body10_19 body10_133

def body10_135 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_134

def body10_136 : WordLangProgHOL (BitVec 64) :=
.seq body10_117 body10_135

def body10_137 : WordLangProgHOL (BitVec 64) :=
.seq body10_113 body10_136

def body10_138 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_137

def body10_139 : WordLangProgHOL (BitVec 64) :=
.seq body10_112 body10_138

def body10_140 : WordLangProgHOL (BitVec 64) :=
.seq body10_108 body10_139

def body10_141 : WordLangProgHOL (BitVec 64) :=
.seq body10_101 body10_140

def body10_142 : WordLangProgHOL (BitVec 64) :=
.seq body10_100 body10_141

def body10_143 : WordLangProgHOL (BitVec 64) :=
.seq body10_107 body10_142

def body10_144 : WordLangProgHOL (BitVec 64) :=
.seq body10_106 body10_143

def body10_145 : WordLangProgHOL (BitVec 64) :=
.seq body10_105 body10_144

def body10_146 : WordLangProgHOL (BitVec 64) :=
.seq body10_104 body10_145

def body10_147 : WordLangProgHOL (BitVec 64) :=
.seq body10_103 body10_146

def body10_148 : WordLangProgHOL (BitVec 64) :=
.seq body10_102 body10_147

def body10_149 : WordLangProgHOL (BitVec 64) :=
.seq body10_101 body10_148

def body10_150 : WordLangProgHOL (BitVec 64) :=
.seq body10_100 body10_149

def body10_151 : WordLangProgHOL (BitVec 64) :=
.seq body10_99 body10_150

def body10_152 : WordLangProgHOL (BitVec 64) :=
.seq body10_44 body10_151

def body10_153 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_152

def body10_154 : WordLangProgHOL (BitVec 64) :=
.seq body10_98 body10_153

def body10_155 : WordLangProgHOL (BitVec 64) :=
.seq body10_94 body10_154

def body10_156 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_155

def body10_157 : WordLangProgHOL (BitVec 64) :=
.seq body10_93 body10_156

def body10_158 : WordLangProgHOL (BitVec 64) :=
.seq body10_45 body10_157

def body10_159 : WordLangProgHOL (BitVec 64) :=
.seq body10_44 body10_158

def body10_160 : WordLangProgHOL (BitVec 64) :=
.seq body10_43 body10_159

def body10_161 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_160

def body10_162 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 8#64) body10_11 body10_161

def body10_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 6), (46, 8)]

def body10_164 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_163

def body10_165 : WordLangProgHOL (BitVec 64) :=
.seq body10_162 body10_164

def body10_166 : WordLangProgHOL (BitVec 64) :=
.seq body10_42 body10_165

def body10_167 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), body10_41, 608, 6)) (some 607) ([]) (some (2, body10_166, 608, 17))

def body10_168 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_41

def body10_169 : WordLangProgHOL (BitVec 64) :=
.seq body10_167 body10_168

def body10_170 : WordLangProgHOL (BitVec 64) :=
.seq body10_40 body10_169

def body10_171 : WordLangProgHOL (BitVec 64) :=
.seq body10_39 body10_170

def body10_172 : WordLangProgHOL (BitVec 64) :=
.seq body10_31 body10_171

def body10_173 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_172

def body10_174 : WordLangProgHOL (BitVec 64) :=
.seq body10_38 body10_173

def body10_175 : WordLangProgHOL (BitVec 64) :=
.seq body10_34 body10_174

def body10_176 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_175

def body10_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 4)]

def body10_178 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_177

def body10_179 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 6) body10_176 body10_178

def body10_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46)]

def body10_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46)]

def body10_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def body10_183 : WordLangProgHOL (BitVec 64) :=
.seq body10_182 body10_10

def body10_184 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_181, 608, 18)) (some 392) ([]) (some (2, body10_183, 608, 19))

def body10_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551328#64))

def body10_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 24#64)))

def body10_187 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_180, 608, 20)) (some 601) ([]) (some (2, body10_183, 608, 21))

def body10_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def body10_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def body10_190 : WordLangProgHOL (BitVec 64) :=
.seq body10_189 body10_10

def body10_191 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls ())) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), body10_188, 608, 22)) (some 604) ([]) (some (2, body10_190, 608, 23))

def body10_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def body10_193 : WordLangProgHOL (BitVec 64) :=
.seq body10_24 body10_192

def body10_194 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_193

def body10_195 : WordLangProgHOL (BitVec 64) :=
.seq body10_191 body10_194

def body10_196 : WordLangProgHOL (BitVec 64) :=
.seq body10_180 body10_195

def body10_197 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_196

def body10_198 : WordLangProgHOL (BitVec 64) :=
.seq body10_187 body10_197

def body10_199 : WordLangProgHOL (BitVec 64) :=
.seq body10_180 body10_198

def body10_200 : WordLangProgHOL (BitVec 64) :=
.seq body10_101 body10_199

def body10_201 : WordLangProgHOL (BitVec 64) :=
.seq body10_100 body10_200

def body10_202 : WordLangProgHOL (BitVec 64) :=
.seq body10_186 body10_201

def body10_203 : WordLangProgHOL (BitVec 64) :=
.seq body10_185 body10_202

def body10_204 : WordLangProgHOL (BitVec 64) :=
.seq body10_21 body10_203

def body10_205 : WordLangProgHOL (BitVec 64) :=
.seq body10_20 body10_204

def body10_206 : WordLangProgHOL (BitVec 64) :=
.seq body10_19 body10_205

def body10_207 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_206

def body10_208 : WordLangProgHOL (BitVec 64) :=
.seq body10_184 body10_207

def body10_209 : WordLangProgHOL (BitVec 64) :=
.seq body10_180 body10_208

def body10_210 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_209

def body10_211 : WordLangProgHOL (BitVec 64) :=
.seq body10_179 body10_210

def body10_212 : WordLangProgHOL (BitVec 64) :=
.seq body10_33 body10_211

def body10_213 : WordLangProgHOL (BitVec 64) :=
.seq body10_32 body10_212

def body10_214 : WordLangProgHOL (BitVec 64) :=
.seq body10_31 body10_213

def body10_215 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_214

def body10_216 : WordLangProgHOL (BitVec 64) :=
.seq body10_30 body10_215

def body10_217 : WordLangProgHOL (BitVec 64) :=
.seq body10_26 body10_216

def body10_218 : WordLangProgHOL (BitVec 64) :=
.seq body10_25 body10_217

def body10_219 : WordLangProgHOL (BitVec 64) :=
.seq body10_24 body10_218

def body10_220 : WordLangProgHOL (BitVec 64) :=
.seq body10_23 body10_219

def body10_221 : WordLangProgHOL (BitVec 64) :=
.seq body10_9 body10_220

def body10_222 : WordLangProgHOL (BitVec 64) :=
.seq body10_22 body10_221

def body10_223 : WordLangProgHOL (BitVec 64) :=
.seq body10_21 body10_222

def body10_224 : WordLangProgHOL (BitVec 64) :=
.seq body10_20 body10_223

def body10_225 : WordLangProgHOL (BitVec 64) :=
.seq body10_19 body10_224

def body10_226 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_225

def body10_227 : WordLangProgHOL (BitVec 64) :=
.seq body10_4 body10_226

def body10_228 : WordLangProgHOL (BitVec 64) :=
.seq body10_18 body10_227

def body10_229 : WordLangProgHOL (BitVec 64) :=
.seq body10_3 body10_228

def body10_230 : WordLangProgHOL (BitVec 64) :=
.seq body10_2 body10_229

def body10_231 : WordLangProgHOL (BitVec 64) :=
.seq body10_1 body10_230

def body10_232 : WordLangProgHOL (BitVec 64) :=
.seq body10_0 body10_231

def pass10 : WordLangProgHOL (BitVec 64) := body10_232
end InitECandidate.Proofs.SmallStages.Compact608
