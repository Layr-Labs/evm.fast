import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source718
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles718
def optimizedBody718_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(14, 14), (2, 2), (26, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (16, 16), (18, 18), (20, 20), (22, 22),
    (24, 24)]

def optimizedBody718_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 14 14 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody718_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody718_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody718_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 2 2 14 0))

def optimizedBody718_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 16), (4, 4), (2, 2), (0, 0)]

def optimizedBody718_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 14 16 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody718_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 4 4 14 0))

def optimizedBody718_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(18, 18), (6, 6), (4, 4), (0, 0)]

def optimizedBody718_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 14 18 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody718_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 6 6 14 0))

def optimizedBody718_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(20, 20), (8, 8), (6, 6), (0, 0)]

def optimizedBody718_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 14 20 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody718_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 8 8 14 0))

def optimizedBody718_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(22, 22), (10, 10), (8, 8), (0, 0)]

def optimizedBody718_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 14 22 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody718_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 10 10 14 0))

def optimizedBody718_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(24, 24), (12, 12), (10, 10), (0, 0)]

def optimizedBody718_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 14 24 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody718_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 12 12 14 0))

def optimizedBody718_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 0)]

def optimizedBody718_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 26 [2, 4, 6, 8, 10, 12, 14]

def optimizedBody718_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_20 optimizedBody718_21

def optimizedBody718_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_19 optimizedBody718_22

def optimizedBody718_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_3 optimizedBody718_23

def optimizedBody718_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_18 optimizedBody718_24

def optimizedBody718_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_17 optimizedBody718_25

def optimizedBody718_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_16 optimizedBody718_26

def optimizedBody718_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_3 optimizedBody718_27

def optimizedBody718_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_15 optimizedBody718_28

def optimizedBody718_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_14 optimizedBody718_29

def optimizedBody718_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_13 optimizedBody718_30

def optimizedBody718_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_3 optimizedBody718_31

def optimizedBody718_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_12 optimizedBody718_32

def optimizedBody718_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_11 optimizedBody718_33

def optimizedBody718_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_10 optimizedBody718_34

def optimizedBody718_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_3 optimizedBody718_35

def optimizedBody718_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_9 optimizedBody718_36

def optimizedBody718_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_8 optimizedBody718_37

def optimizedBody718_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_7 optimizedBody718_38

def optimizedBody718_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_3 optimizedBody718_39

def optimizedBody718_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_6 optimizedBody718_40

def optimizedBody718_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_5 optimizedBody718_41

def optimizedBody718_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_4 optimizedBody718_42

def optimizedBody718_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_3 optimizedBody718_43

def optimizedBody718_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_2 optimizedBody718_44

def optimizedBody718_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_1 optimizedBody718_45

def optimizedBody718_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody718_0 optimizedBody718_46

def oracle718 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 11)) 3
        (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 9)))
      1
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 10)) 2
        (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 7 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 6)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 8)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 12)))
              (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1 (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 9 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 6 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 5))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 10 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))
              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 11)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 4 (Flapjack.Spt.ls 0)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 8 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 13 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))))
      Flapjack.Spt.ln))
def optimized718 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(718, 13, optimizedBody718_47)
end InitECandidate.Proofs.SmallStages.Oracles718
