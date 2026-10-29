import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody327_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 0)]

def optimizedBody327_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody327_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody327_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody327_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody327_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody327_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody327_4 optimizedBody327_5

def optimizedBody327_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody327_3 optimizedBody327_6

def optimizedBody327_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody327_2 optimizedBody327_7

def optimizedBody327_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody327_10 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody327_8 optimizedBody327_9

def optimizedBody327_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody327_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody327_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody327_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 33#64)

def optimizedBody327_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody327_14 optimizedBody327_6

def optimizedBody327_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody327_2 optimizedBody327_15

def optimizedBody327_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 6) optimizedBody327_16 optimizedBody327_9

def optimizedBody327_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody327_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 13#64)

def optimizedBody327_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4)]

def optimizedBody327_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody327_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody327_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody327_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody327_22 optimizedBody327_23

def optimizedBody327_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody327_21, 327, 2)) (some 286) ([2]) (some (2, optimizedBody327_24, 327, 3))

def optimizedBody327_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody327_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody327_2 optimizedBody327_26

def optimizedBody327_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody327_25 optimizedBody327_27

def optimizedBody327_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody327_20 optimizedBody327_28

def optimizedBody327_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody327_19 optimizedBody327_29

def optimizedBody327_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody327_2 optimizedBody327_30

def optimizedBody327_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 6) optimizedBody327_31 optimizedBody327_27

def optimizedBody327_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 16#64))

def optimizedBody327_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody327_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody327_2 optimizedBody327_6

def optimizedBody327_36 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 4) optimizedBody327_35 optimizedBody327_9

def optimizedBody327_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody327_2 optimizedBody327_16

def optimizedBody327_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody327_36 optimizedBody327_37

def optimizedBody327_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody327_34 optimizedBody327_38

def optimizedBody327_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody327_4 optimizedBody327_39

def optimizedBody327_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody327_33 optimizedBody327_40

def optimizedBody327_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody327_11 optimizedBody327_41

def optimizedBody327_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody327_2 optimizedBody327_42

def optimizedBody327_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody327_32 optimizedBody327_43

def optimizedBody327_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody327_13 optimizedBody327_44

def optimizedBody327_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody327_18 optimizedBody327_45

def optimizedBody327_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody327_11 optimizedBody327_46

def optimizedBody327_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody327_2 optimizedBody327_47

def optimizedBody327_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody327_2 optimizedBody327_48

def optimizedBody327_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody327_17 optimizedBody327_49

def optimizedBody327_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody327_13 optimizedBody327_50

def optimizedBody327_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody327_12 optimizedBody327_51

def optimizedBody327_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody327_11 optimizedBody327_52

def optimizedBody327_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody327_2 optimizedBody327_53

def optimizedBody327_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody327_2 optimizedBody327_54

def optimizedBody327_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody327_10 optimizedBody327_55

def optimizedBody327_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody327_1 optimizedBody327_56

def optimizedBody327_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody327_0 optimizedBody327_57

def optimized327 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(327, 2, optimizedBody327_58)
end InitECandidate.Proofs.StackAnalysis
