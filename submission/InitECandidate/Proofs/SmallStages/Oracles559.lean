import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source559
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles559
def optimizedBody559_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody559_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody559_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody559_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody559_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody559_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody559_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody559_4 optimizedBody559_5

def optimizedBody559_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody559_3, 559, 2)) (some 472) ([2]) (some (2, optimizedBody559_6, 559, 3))

def optimizedBody559_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody559_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody559_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody559_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody559_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody559_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 112#64))

def optimizedBody559_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 56#64))

def optimizedBody559_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 64#64))

def optimizedBody559_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 72#64))

def optimizedBody559_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 80#64))

def optimizedBody559_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody559_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody559_3, 559, 4)) (some 478) ([2, 4, 6, 8]) (some (2, optimizedBody559_6, 559, 5))

def optimizedBody559_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody559_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody559_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody559_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody559_22 optimizedBody559_5

def optimizedBody559_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody559_21, 559, 6)) (some 492) ([2]) (some (2, optimizedBody559_23, 559, 7))

def optimizedBody559_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody559_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody559_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody559_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody559_26 optimizedBody559_27

def optimizedBody559_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody559_25 optimizedBody559_28

def optimizedBody559_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody559_8 optimizedBody559_29

def optimizedBody559_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody559_24 optimizedBody559_30

def optimizedBody559_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody559_4 optimizedBody559_31

def optimizedBody559_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody559_20 optimizedBody559_32

def optimizedBody559_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody559_8 optimizedBody559_33

def optimizedBody559_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody559_19 optimizedBody559_34

def optimizedBody559_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody559_18 optimizedBody559_35

def optimizedBody559_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody559_17 optimizedBody559_36

def optimizedBody559_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody559_0 optimizedBody559_37

def optimizedBody559_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody559_16 optimizedBody559_38

def optimizedBody559_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody559_0 optimizedBody559_39

def optimizedBody559_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody559_15 optimizedBody559_40

def optimizedBody559_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody559_0 optimizedBody559_41

def optimizedBody559_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody559_14 optimizedBody559_42

def optimizedBody559_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody559_13 optimizedBody559_43

def optimizedBody559_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody559_12 optimizedBody559_44

def optimizedBody559_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody559_11 optimizedBody559_45

def optimizedBody559_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody559_10 optimizedBody559_46

def optimizedBody559_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody559_9 optimizedBody559_47

def optimizedBody559_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody559_8 optimizedBody559_48

def optimizedBody559_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody559_7 optimizedBody559_49

def optimizedBody559_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody559_2 optimizedBody559_50

def optimizedBody559_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody559_1 optimizedBody559_51

def optimizedBody559_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody559_0 optimizedBody559_52

def oracle559 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
          0
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)) 0
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
            1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 22 (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln) 22
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))))
def optimized559 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(559, 1, optimizedBody559_53)
end InitECandidate.Proofs.SmallStages.Oracles559
