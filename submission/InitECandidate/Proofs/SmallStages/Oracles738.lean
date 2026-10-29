import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source738
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles738
def optimizedBody738_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 2), (0, 0), (14, 4)]

def optimizedBody738_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody738_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody738_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 12 8#64))

def optimizedBody738_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 12 16#64))

def optimizedBody738_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 12 24#64))

def optimizedBody738_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 12 32#64))

def optimizedBody738_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 12 40#64))

def optimizedBody738_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 0), (46, 14)]

def optimizedBody738_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (12, 12), (14, 2), (10, 10), (0, 4), (8, 8), (44, 44), (4, 46)]

def optimizedBody738_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46)]

def optimizedBody738_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody738_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_10 optimizedBody738_11

def optimizedBody738_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody738_9, 738, 2)) (some 727) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody738_12, 738, 3))

def optimizedBody738_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody738_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody738_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 16#64)

def optimizedBody738_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 6), (48, 12), (50, 2), (52, 14), (54, 10), (56, 0), (58, 8)]

def optimizedBody738_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (12, 48), (0, 50), (14, 52), (10, 54), (4, 56), (8, 58)]

def optimizedBody738_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (12, 48), (0, 50), (14, 52), (10, 54), (4, 56), (8, 58)]

def optimizedBody738_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_19 optimizedBody738_11

def optimizedBody738_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody738_18, 738, 4)) (some 78) ([2, 4]) (some (2, optimizedBody738_20, 738, 5))

def optimizedBody738_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (12, 12), (10, 10), (8, 8), (6, 6), (4, 4), (2, 14)]

def optimizedBody738_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 0 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody738_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (44, 44)]

def optimizedBody738_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody738_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody738_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_26 optimizedBody738_11

def optimizedBody738_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody738_25, 738, 6)) (some 736) ([2, 4, 6, 8, 10, 12, 14]) (some (2, optimizedBody738_27, 738, 7))

def optimizedBody738_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody738_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody738_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody738_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_30 optimizedBody738_31

def optimizedBody738_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_29 optimizedBody738_32

def optimizedBody738_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_14 optimizedBody738_33

def optimizedBody738_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_28 optimizedBody738_34

def optimizedBody738_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_24 optimizedBody738_35

def optimizedBody738_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_23 optimizedBody738_36

def optimizedBody738_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_22 optimizedBody738_37

def optimizedBody738_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_14 optimizedBody738_38

def optimizedBody738_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_21 optimizedBody738_39

def optimizedBody738_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_17 optimizedBody738_40

def optimizedBody738_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_16 optimizedBody738_41

def optimizedBody738_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_15 optimizedBody738_42

def optimizedBody738_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_14 optimizedBody738_43

def optimizedBody738_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_13 optimizedBody738_44

def optimizedBody738_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_8 optimizedBody738_45

def optimizedBody738_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_7 optimizedBody738_46

def optimizedBody738_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_2 optimizedBody738_47

def optimizedBody738_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_6 optimizedBody738_48

def optimizedBody738_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_2 optimizedBody738_49

def optimizedBody738_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_5 optimizedBody738_50

def optimizedBody738_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_2 optimizedBody738_51

def optimizedBody738_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_4 optimizedBody738_52

def optimizedBody738_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_2 optimizedBody738_53

def optimizedBody738_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_3 optimizedBody738_54

def optimizedBody738_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_2 optimizedBody738_55

def optimizedBody738_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_1 optimizedBody738_56

def optimizedBody738_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody738_0 optimizedBody738_57

def oracle738 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.ls 4)))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 4))) 6
              (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 7)) 6
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 5))))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 6)
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 6
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))) 7
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)) 4
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 6)
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 0)) 2
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 0
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 7))))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 5)
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 5)) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln))))))
def optimized738 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(738, 3, optimizedBody738_58)
end InitECandidate.Proofs.SmallStages.Oracles738
