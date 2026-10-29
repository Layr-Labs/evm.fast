import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source434
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles434
def optimizedBody434_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (2, 2)]

def optimizedBody434_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody434_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody434_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody434_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (4, 8), (0, 4), (46, 2), (6, 6)]

def optimizedBody434_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody434_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 4), (48, 0), (50, 46), (52, 6)]

def optimizedBody434_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (10, 50), (52, 52)]

def optimizedBody434_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (10, 50), (52, 52)]

def optimizedBody434_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody434_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_8 optimizedBody434_9

def optimizedBody434_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody434_7, 434, 2)) (some 196) ([2, 4]) (some (2, optimizedBody434_10, 434, 3))

def optimizedBody434_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody434_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody434_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 10), (52, 52)]

def optimizedBody434_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 44), (4, 46), (0, 48), (10, 50), (6, 52)]

def optimizedBody434_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (4, 46), (0, 48), (10, 50), (6, 52)]

def optimizedBody434_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_16 optimizedBody434_9

def optimizedBody434_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody434_15, 434, 4)) (some 190) ([2, 4, 6]) (some (2, optimizedBody434_17, 434, 5))

def optimizedBody434_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (4, 4), (0, 0), (10, 10), (6, 6)]

def optimizedBody434_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_3 optimizedBody434_19

def optimizedBody434_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_18 optimizedBody434_20

def optimizedBody434_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_14 optimizedBody434_21

def optimizedBody434_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_3 optimizedBody434_22

def optimizedBody434_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 44), (4, 46), (0, 48), (10, 10), (6, 52)]

def optimizedBody434_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_3 optimizedBody434_24

def optimizedBody434_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody434_23 optimizedBody434_25

def optimizedBody434_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody434_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody434_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 8), (4, 4), (0, 0), (46, 10), (6, 6)]

def optimizedBody434_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody434_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_29 optimizedBody434_30

def optimizedBody434_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_28 optimizedBody434_31

def optimizedBody434_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_27 optimizedBody434_32

def optimizedBody434_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_3 optimizedBody434_33

def optimizedBody434_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_26 optimizedBody434_34

def optimizedBody434_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_13 optimizedBody434_35

def optimizedBody434_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_12 optimizedBody434_36

def optimizedBody434_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_3 optimizedBody434_37

def optimizedBody434_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_11 optimizedBody434_38

def optimizedBody434_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_6 optimizedBody434_39

def optimizedBody434_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_3 optimizedBody434_40

def optimizedBody434_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody434_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_3 optimizedBody434_42

def optimizedBody434_44 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.WordRegImm.reg 6) optimizedBody434_41 optimizedBody434_43

def optimizedBody434_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (4, 4), (0, 0), (46, 8), (6, 6)]

def optimizedBody434_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_3 optimizedBody434_45

def optimizedBody434_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_44 optimizedBody434_46

def optimizedBody434_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_5 optimizedBody434_47

def optimizedBody434_49 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln)
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) optimizedBody434_48 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody434_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody434_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody434_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_50 optimizedBody434_51

def optimizedBody434_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_13 optimizedBody434_52

def optimizedBody434_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_3 optimizedBody434_53

def optimizedBody434_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_49 optimizedBody434_54

def optimizedBody434_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_4 optimizedBody434_55

def optimizedBody434_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_3 optimizedBody434_56

def optimizedBody434_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_2 optimizedBody434_57

def optimizedBody434_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_1 optimizedBody434_58

def optimizedBody434_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody434_0 optimizedBody434_59

def oracle434 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
              23 (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
            1 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 1)) 4 Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 2
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 0)) 2
              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 26)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
              0
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0))))
            0
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 0)) 3
              (Flapjack.Spt.ls 3)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln 22
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)))
              (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 5 Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))))
def optimized434 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(434, 3, optimizedBody434_60)
end InitECandidate.Proofs.SmallStages.Oracles434
