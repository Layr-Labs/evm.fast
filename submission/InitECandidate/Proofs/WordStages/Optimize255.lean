import InitECandidate.Proofs.WordStages.Optimize239
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source255
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody255_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 0), (46, 8), (50, 4), (48, 2), (52, 6)]

def optimizedBody255_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (4, 4), (44, 44), (0, 46), (50, 50), (46, 48), (48, 52)]

def optimizedBody255_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (50, 50), (46, 48), (48, 52)]

def optimizedBody255_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody255_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody255_2 optimizedBody255_3

def optimizedBody255_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody255_1, 255, 2)) (some 251) ([2, 4, 6]) (some (2, optimizedBody255_4, 255, 3))

def optimizedBody255_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody255_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody255_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 0), (50, 50), (46, 46), (8, 8), (48, 48), (6, 6), (4, 4)]

def optimizedBody255_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (6, 6)]

def optimizedBody255_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody255_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 6 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody255_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody255_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody255_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody255_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 70#64)

def optimizedBody255_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (50, 50), (48, 46), (52, 8), (54, 48), (56, 6), (58, 4)]

def optimizedBody255_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 44), (0, 46), (12, 50), (14, 48), (8, 52), (16, 54), (6, 56), (4, 58)]

def optimizedBody255_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 44), (0, 46), (12, 50), (14, 48), (8, 52), (16, 54), (6, 56), (4, 58)]

def optimizedBody255_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody255_18 optimizedBody255_3

def optimizedBody255_20 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody255_17, 255, 4)) (some 245) ([2]) (some (2, optimizedBody255_19, 255, 5))

def optimizedBody255_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (0, 0), (12, 12), (14, 14), (8, 8), (16, 16), (6, 6), (4, 4)]

def optimizedBody255_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody255_6 optimizedBody255_21

def optimizedBody255_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody255_20 optimizedBody255_22

def optimizedBody255_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody255_16 optimizedBody255_23

def optimizedBody255_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody255_15 optimizedBody255_24

def optimizedBody255_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody255_6 optimizedBody255_25

def optimizedBody255_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 44), (0, 0), (12, 50), (14, 46), (8, 8), (16, 48), (6, 6), (4, 4)]

def optimizedBody255_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody255_6 optimizedBody255_27

def optimizedBody255_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 2) optimizedBody255_26 optimizedBody255_28

def optimizedBody255_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody255_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody255_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 10), (0, 0), (50, 12), (46, 14), (8, 8), (48, 16), (6, 6), (4, 4)]

def optimizedBody255_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody255_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody255_32 optimizedBody255_33

def optimizedBody255_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody255_31 optimizedBody255_34

def optimizedBody255_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody255_30 optimizedBody255_35

def optimizedBody255_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody255_6 optimizedBody255_36

def optimizedBody255_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody255_29 optimizedBody255_37

def optimizedBody255_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody255_14 optimizedBody255_38

def optimizedBody255_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody255_13 optimizedBody255_39

def optimizedBody255_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody255_12 optimizedBody255_40

def optimizedBody255_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody255_11 optimizedBody255_41

def optimizedBody255_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody255_10 optimizedBody255_42

def optimizedBody255_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody255_6 optimizedBody255_43

def optimizedBody255_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody255_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody255_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody255_45 optimizedBody255_46

def optimizedBody255_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody255_6 optimizedBody255_47

def optimizedBody255_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 6 (Flapjack.WordRegImm.reg 4) optimizedBody255_44 optimizedBody255_48

def optimizedBody255_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (0, 0), (50, 10), (46, 12), (8, 8), (48, 14), (6, 6), (4, 4)]

def optimizedBody255_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody255_6 optimizedBody255_50

def optimizedBody255_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody255_49 optimizedBody255_51

def optimizedBody255_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody255_9 optimizedBody255_52

def optimizedBody255_54 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody255_53 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  Flapjack.Spt.ln)

def optimizedBody255_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 8), (4, 4)]

def optimizedBody255_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2, 4]

def optimizedBody255_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody255_55 optimizedBody255_56

def optimizedBody255_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody255_6 optimizedBody255_57

def optimizedBody255_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody255_54 optimizedBody255_58

def optimizedBody255_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody255_8 optimizedBody255_59

def optimizedBody255_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody255_6 optimizedBody255_60

def optimizedBody255_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody255_7 optimizedBody255_61

def optimizedBody255_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody255_6 optimizedBody255_62

def optimizedBody255_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody255_5 optimizedBody255_63

def optimizedBody255_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody255_0 optimizedBody255_64

def oracle255 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 4 (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 3 (Flapjack.Spt.ls 8))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 25 (Flapjack.Spt.ls 0)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 22
                (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 4 (Flapjack.Spt.ls 7))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 22)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 3))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 24 (Flapjack.Spt.ls 4))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 2 Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 8))
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 23 (Flapjack.Spt.ls 6))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 5)) 23
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 3))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) (Flapjack.Spt.ls 24)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) (Flapjack.Spt.ls 25)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) (Flapjack.Spt.ls 26))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))))))))
def optimized255 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(255, 5, optimizedBody255_65)
theorem optimize255_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source255, oracle255) = optimized255 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize255_eq
end InitECandidate.Proofs.WordStages
