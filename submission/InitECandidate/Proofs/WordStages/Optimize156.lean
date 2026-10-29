import InitECandidate.Proofs.WordStages.Optimize140
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source156
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody156_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody156_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 26 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody156_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody156_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 44 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody156_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody156_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 40 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody156_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 46 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody156_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 2 40#64))

def optimizedBody156_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 54 (Flapjack.WordLangAddr.addr 2 48#64))

def optimizedBody156_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 36 (Flapjack.WordLangAddr.addr 2 56#64))

def optimizedBody156_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 2 64#64))

def optimizedBody156_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 72#64))

def optimizedBody156_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 48 (Flapjack.WordLangAddr.addr 2 80#64))

def optimizedBody156_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 88#64))

def optimizedBody156_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 2 96#64))

def optimizedBody156_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 2 104#64))

def optimizedBody156_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody156_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 2 120#64))

def optimizedBody156_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 50 (Flapjack.WordLangAddr.addr 2 128#64))

def optimizedBody156_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 2 136#64))

def optimizedBody156_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24 (Flapjack.WordLangAddr.addr 2 144#64))

def optimizedBody156_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 52 (Flapjack.WordLangAddr.addr 2 152#64))

def optimizedBody156_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 34 (Flapjack.WordLangAddr.addr 2 160#64))

def optimizedBody156_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 28 (Flapjack.WordLangAddr.addr 2 168#64))

def optimizedBody156_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 38 (Flapjack.WordLangAddr.addr 2 176#64))

def optimizedBody156_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 32 (Flapjack.WordLangAddr.addr 2 184#64))

def optimizedBody156_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 30 (Flapjack.WordLangAddr.addr 2 192#64))

def optimizedBody156_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 42 0#64)

def optimizedBody156_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody156_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 0), (20, 24), (0, 20), (24, 26), (40, 40), (54, 18), (22, 22), (2, 42), (50, 38), (12, 16), (18, 34), (48, 32),
    (14, 14), (8, 12), (6, 8), (58, 2), (46, 30), (28, 28), (56, 6), (10, 10), (4, 4), (26, 44), (16, 46), (34, 48),
    (36, 36), (38, 50), (52, 52), (42, 54)]

def optimizedBody156_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(60, 2)]

def optimizedBody156_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 24#64)

def optimizedBody156_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(64, 0), (18, 18)]

def optimizedBody156_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 0 18 (Flapjack.WordRegImm.reg 64)))

def optimizedBody156_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(32, 34)]

def optimizedBody156_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 0 0 (Flapjack.WordRegImm.reg 32)))

def optimizedBody156_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(76, 14)]

def optimizedBody156_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 0 0 (Flapjack.WordRegImm.reg 76)))

def optimizedBody156_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 24)]

def optimizedBody156_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody156_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(30, 38), (62, 28)]

def optimizedBody156_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 14 62 (Flapjack.WordRegImm.reg 30)))

def optimizedBody156_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(74, 6)]

def optimizedBody156_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 6 14 (Flapjack.WordRegImm.reg 74)))

def optimizedBody156_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(42, 42)]

def optimizedBody156_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 6 6 (Flapjack.WordRegImm.reg 42)))

def optimizedBody156_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(26, 26)]

def optimizedBody156_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 34 6 (Flapjack.WordRegImm.reg 26)))

def optimizedBody156_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(72, 12), (28, 50)]

def optimizedBody156_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 6 28 (Flapjack.WordRegImm.reg 72)))

def optimizedBody156_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody156_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 6 6 (Flapjack.WordRegImm.reg 10)))

def optimizedBody156_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 36)]

def optimizedBody156_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 6 6 (Flapjack.WordRegImm.reg 24)))

def optimizedBody156_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(70, 4)]

def optimizedBody156_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 6 6 (Flapjack.WordRegImm.reg 70)))

def optimizedBody156_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 20), (48, 48)]

def optimizedBody156_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 4 48 (Flapjack.WordRegImm.reg 12)))

def optimizedBody156_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 22)]

def optimizedBody156_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 4 4 (Flapjack.WordRegImm.reg 22)))

def optimizedBody156_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(68, 8)]

def optimizedBody156_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 4 4 (Flapjack.WordRegImm.reg 68)))

def optimizedBody156_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(40, 40)]

def optimizedBody156_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 38 4 (Flapjack.WordRegImm.reg 40)))

def optimizedBody156_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 52), (14, 46)]

def optimizedBody156_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 4 14 (Flapjack.WordRegImm.reg 20)))

def optimizedBody156_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(66, 54)]

def optimizedBody156_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 4 4 (Flapjack.WordRegImm.reg 66)))

def optimizedBody156_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 56)]

def optimizedBody156_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 4 4 (Flapjack.WordRegImm.reg 36)))

def optimizedBody156_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody156_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 8 4 (Flapjack.WordRegImm.reg 16)))

def optimizedBody156_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 34)]

def optimizedBody156_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.ror 4 50 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody156_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody156_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 34 4 (Flapjack.WordRegImm.reg 8)))

def optimizedBody156_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 6)]

def optimizedBody156_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.ror 4 46 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody156_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody156_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 4 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody156_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(38, 38)]

def optimizedBody156_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.ror 6 38 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody156_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 50)]

def optimizedBody156_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 6 6 (Flapjack.WordRegImm.reg 50)))

def optimizedBody156_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.ror 8 8 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody156_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46)]

def optimizedBody156_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 8 8 (Flapjack.WordRegImm.reg 46)))

def optimizedBody156_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.ror 0 0 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody156_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 38 0 (Flapjack.WordRegImm.reg 38)))

def optimizedBody156_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 2), (34, 34)]

def optimizedBody156_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 2 34 (Flapjack.WordRegImm.reg 0)))

def optimizedBody156_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 42), (4, 4)]

def optimizedBody156_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 0 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody156_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.ror 0 0 (Flapjack.WordRegImm.imm 20#64)))

def optimizedBody156_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (6, 6)]

def optimizedBody156_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 10 6 (Flapjack.WordRegImm.reg 10)))

def optimizedBody156_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.ror 10 10 (Flapjack.WordRegImm.imm 21#64)))

def optimizedBody156_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (8, 8)]

def optimizedBody156_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 12 8 (Flapjack.WordRegImm.reg 12)))

def optimizedBody156_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.ror 12 12 (Flapjack.WordRegImm.imm 43#64)))

def optimizedBody156_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (38, 38)]

def optimizedBody156_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 14 38 (Flapjack.WordRegImm.reg 14)))

def optimizedBody156_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.ror 14 14 (Flapjack.WordRegImm.imm 50#64)))

def optimizedBody156_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (10, 10)]

def optimizedBody156_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 42 10 (Flapjack.WordRegImm.reg 0)))

def optimizedBody156_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 42 42 (Flapjack.WordRegImm.reg 0)))

def optimizedBody156_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 56 42 (Flapjack.WordRegImm.reg 2)))

def optimizedBody156_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (12, 12)]

def optimizedBody156_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 42 12 (Flapjack.WordRegImm.reg 10)))

def optimizedBody156_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 42 42 (Flapjack.WordRegImm.reg 10)))

def optimizedBody156_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 54 42 (Flapjack.WordRegImm.reg 0)))

def optimizedBody156_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (14, 14)]

def optimizedBody156_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 42 14 (Flapjack.WordRegImm.reg 12)))

def optimizedBody156_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody156_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 42 42 (Flapjack.WordRegImm.reg 12)))

def optimizedBody156_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 14), (2, 2)]

def optimizedBody156_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 14 2 (Flapjack.WordRegImm.reg 10)))

def optimizedBody156_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 14 14 (Flapjack.WordRegImm.reg 10)))

def optimizedBody156_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 52 14 (Flapjack.WordRegImm.reg 12)))

def optimizedBody156_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody156_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody156_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 50 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody156_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(40, 40), (8, 8)]

def optimizedBody156_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 0 8 (Flapjack.WordRegImm.reg 40)))

def optimizedBody156_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.ror 0 0 (Flapjack.WordRegImm.imm 36#64)))

def optimizedBody156_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 36), (38, 38)]

def optimizedBody156_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 2 38 (Flapjack.WordRegImm.reg 36)))

def optimizedBody156_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.ror 10 2 (Flapjack.WordRegImm.imm 44#64)))

def optimizedBody156_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(32, 32), (34, 34)]

def optimizedBody156_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 2 34 (Flapjack.WordRegImm.reg 32)))

def optimizedBody156_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.ror 2 2 (Flapjack.WordRegImm.imm 61#64)))

def optimizedBody156_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(30, 30), (4, 4)]

def optimizedBody156_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 12 4 (Flapjack.WordRegImm.reg 30)))

def optimizedBody156_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.ror 12 12 (Flapjack.WordRegImm.imm 19#64)))

def optimizedBody156_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 28), (6, 6)]

def optimizedBody156_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 14 6 (Flapjack.WordRegImm.reg 28)))

def optimizedBody156_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.ror 14 14 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody156_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (2, 2)]

def optimizedBody156_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 28 2 (Flapjack.WordRegImm.reg 10)))

def optimizedBody156_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 28 28 (Flapjack.WordRegImm.reg 10)))

def optimizedBody156_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 30 28 (Flapjack.WordRegImm.reg 0)))

def optimizedBody156_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12)]

def optimizedBody156_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 28 12 (Flapjack.WordRegImm.reg 2)))

def optimizedBody156_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 28 28 (Flapjack.WordRegImm.reg 2)))

def optimizedBody156_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 32 28 (Flapjack.WordRegImm.reg 10)))

def optimizedBody156_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 28 14 (Flapjack.WordRegImm.reg 12)))

def optimizedBody156_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 28 28 (Flapjack.WordRegImm.reg 12)))

def optimizedBody156_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 14), (0, 0)]

def optimizedBody156_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 14 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody156_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 14 14 (Flapjack.WordRegImm.reg 2)))

def optimizedBody156_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 36 14 (Flapjack.WordRegImm.reg 12)))

def optimizedBody156_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 10 10 (Flapjack.WordRegImm.reg 0)))

def optimizedBody156_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 0 10 (Flapjack.WordRegImm.reg 0)))

def optimizedBody156_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 40 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody156_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(26, 26), (4, 4)]

def optimizedBody156_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 0 4 (Flapjack.WordRegImm.reg 26)))

def optimizedBody156_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.ror 2 0 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody156_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 24), (6, 6)]

def optimizedBody156_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 0 6 (Flapjack.WordRegImm.reg 24)))

def optimizedBody156_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.ror 10 0 (Flapjack.WordRegImm.imm 58#64)))

def optimizedBody156_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 22), (8, 8)]

def optimizedBody156_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 0 8 (Flapjack.WordRegImm.reg 22)))

def optimizedBody156_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.ror 0 0 (Flapjack.WordRegImm.imm 39#64)))

def optimizedBody156_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20), (38, 38)]

def optimizedBody156_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 12 38 (Flapjack.WordRegImm.reg 20)))

def optimizedBody156_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.ror 12 12 (Flapjack.WordRegImm.imm 56#64)))

def optimizedBody156_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (34, 34)]

def optimizedBody156_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 14 34 (Flapjack.WordRegImm.reg 18)))

def optimizedBody156_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.ror 14 14 (Flapjack.WordRegImm.imm 46#64)))

def optimizedBody156_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (0, 0)]

def optimizedBody156_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 18 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody156_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 18 18 (Flapjack.WordRegImm.reg 10)))

def optimizedBody156_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 20 18 (Flapjack.WordRegImm.reg 2)))

def optimizedBody156_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (12, 12)]

def optimizedBody156_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 18 12 (Flapjack.WordRegImm.reg 0)))

def optimizedBody156_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 18 18 (Flapjack.WordRegImm.reg 0)))

def optimizedBody156_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 22 18 (Flapjack.WordRegImm.reg 10)))

def optimizedBody156_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 18 14 (Flapjack.WordRegImm.reg 12)))

def optimizedBody156_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 18 18 (Flapjack.WordRegImm.reg 12)))

def optimizedBody156_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 14), (2, 2)]

def optimizedBody156_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 14 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody156_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 14 14 (Flapjack.WordRegImm.reg 0)))

def optimizedBody156_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 24 14 (Flapjack.WordRegImm.reg 12)))

def optimizedBody156_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def optimizedBody156_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 10 10 (Flapjack.WordRegImm.reg 2)))

def optimizedBody156_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 2 10 (Flapjack.WordRegImm.reg 2)))

def optimizedBody156_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 26 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody156_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (38, 38)]

def optimizedBody156_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 0 38 (Flapjack.WordRegImm.reg 16)))

def optimizedBody156_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.ror 2 0 (Flapjack.WordRegImm.imm 37#64)))

def optimizedBody156_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 76), (34, 34)]

def optimizedBody156_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 0 34 (Flapjack.WordRegImm.reg 0)))

def optimizedBody156_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.ror 10 0 (Flapjack.WordRegImm.imm 28#64)))

def optimizedBody156_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 74), (4, 4)]

def optimizedBody156_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.ror 0 0 (Flapjack.WordRegImm.imm 54#64)))

def optimizedBody156_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 72), (6, 6)]

def optimizedBody156_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 12 6 (Flapjack.WordRegImm.reg 12)))

def optimizedBody156_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.ror 12 12 (Flapjack.WordRegImm.imm 49#64)))

def optimizedBody156_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 48), (8, 8)]

def optimizedBody156_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 14 8 (Flapjack.WordRegImm.reg 14)))

def optimizedBody156_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.ror 14 14 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody156_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 16 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody156_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 16 16 (Flapjack.WordRegImm.reg 10)))

def optimizedBody156_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 48 16 (Flapjack.WordRegImm.reg 2)))

def optimizedBody156_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 16 12 (Flapjack.WordRegImm.reg 0)))

def optimizedBody156_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 16 16 (Flapjack.WordRegImm.reg 0)))

def optimizedBody156_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 46 16 (Flapjack.WordRegImm.reg 10)))

def optimizedBody156_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 16 14 (Flapjack.WordRegImm.reg 12)))

def optimizedBody156_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 16 16 (Flapjack.WordRegImm.reg 12)))

def optimizedBody156_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 12 14 (Flapjack.WordRegImm.reg 12)))

def optimizedBody156_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 14 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody156_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 70), (6, 6)]

def optimizedBody156_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 0 6 (Flapjack.WordRegImm.reg 0)))

def optimizedBody156_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.ror 0 0 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody156_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 68), (8, 8)]

def optimizedBody156_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 2 8 (Flapjack.WordRegImm.reg 2)))

def optimizedBody156_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.ror 2 2 (Flapjack.WordRegImm.imm 9#64)))

def optimizedBody156_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 66), (38, 38)]

def optimizedBody156_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 6 38 (Flapjack.WordRegImm.reg 6)))

def optimizedBody156_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.ror 6 6 (Flapjack.WordRegImm.imm 25#64)))

def optimizedBody156_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 64), (34, 34)]

def optimizedBody156_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 8 34 (Flapjack.WordRegImm.reg 8)))

def optimizedBody156_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.ror 8 8 (Flapjack.WordRegImm.imm 23#64)))

def optimizedBody156_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 62), (4, 4)]

def optimizedBody156_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 4 4 (Flapjack.WordRegImm.reg 10)))

def optimizedBody156_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.ror 4 4 (Flapjack.WordRegImm.imm 62#64)))

def optimizedBody156_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody156_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 10 6 (Flapjack.WordRegImm.reg 2)))

def optimizedBody156_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 10 10 (Flapjack.WordRegImm.reg 2)))

def optimizedBody156_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 34 10 (Flapjack.WordRegImm.reg 0)))

def optimizedBody156_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (8, 8)]

def optimizedBody156_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 10 8 (Flapjack.WordRegImm.reg 6)))

def optimizedBody156_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody156_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 10 10 (Flapjack.WordRegImm.reg 6)))

def optimizedBody156_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 38 10 (Flapjack.WordRegImm.reg 2)))

def optimizedBody156_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (4, 4)]

def optimizedBody156_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 10 4 (Flapjack.WordRegImm.reg 8)))

def optimizedBody156_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 10 10 (Flapjack.WordRegImm.reg 8)))

def optimizedBody156_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody156_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody156_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody156_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 6 6 (Flapjack.WordRegImm.reg 4)))

def optimizedBody156_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 6 6 (Flapjack.WordRegImm.reg 8)))

def optimizedBody156_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 2)]

def optimizedBody156_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody156_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 0 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody156_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 0 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody156_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(2, 60), (10, 0), (12, 6), (56, 10), (38, 38), (34, 34), (14, 14), (46, 12), (16, 16), (4, 46), (48, 48), (54, 26),
    (52, 24), (18, 18), (22, 22), (20, 20), (40, 40), (36, 36), (28, 28), (32, 32), (30, 30), (6, 50), (50, 52),
    (42, 42), (8, 54), (0, 56)]

def optimizedBody156_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody156_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 26 Flapjack.WordStore.heapLength

def optimizedBody156_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 26 26 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody156_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 26 26

def optimizedBody156_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 26 (Flapjack.WordLangAddr.addr 26 18446744073709551552#64))

def optimizedBody156_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24 24 (Flapjack.WordRegImm.reg 26)))

def optimizedBody156_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24 (Flapjack.WordLangAddr.addr 24 0#64))

def optimizedBody156_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 0 24 (Flapjack.WordRegImm.reg 0)))

def optimizedBody156_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (24, 0)]

def optimizedBody156_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody156_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(20, 46), (0, 48), (24, 24), (40, 50), (54, 54), (22, 52), (2, 0), (50, 56), (12, 16), (18, 34), (48, 12), (14, 30),
    (8, 36), (6, 22), (46, 10), (28, 38), (56, 40), (10, 18), (4, 42), (26, 8), (16, 6), (34, 20), (36, 28), (38, 4),
    (52, 14), (42, 32)]

def optimizedBody156_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody156_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_258 optimizedBody156_259

def optimizedBody156_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_257 optimizedBody156_260

def optimizedBody156_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_256 optimizedBody156_261

def optimizedBody156_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_255 optimizedBody156_262

def optimizedBody156_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_78 optimizedBody156_263

def optimizedBody156_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_254 optimizedBody156_264

def optimizedBody156_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_253 optimizedBody156_265

def optimizedBody156_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_252 optimizedBody156_266

def optimizedBody156_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_251 optimizedBody156_267

def optimizedBody156_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_250 optimizedBody156_268

def optimizedBody156_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_249 optimizedBody156_269

def optimizedBody156_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_248 optimizedBody156_270

def optimizedBody156_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_247 optimizedBody156_271

def optimizedBody156_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_246 optimizedBody156_272

def optimizedBody156_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_240 optimizedBody156_273

def optimizedBody156_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_245 optimizedBody156_274

def optimizedBody156_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_78 optimizedBody156_275

def optimizedBody156_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_244 optimizedBody156_276

def optimizedBody156_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_243 optimizedBody156_277

def optimizedBody156_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_242 optimizedBody156_278

def optimizedBody156_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_74 optimizedBody156_279

def optimizedBody156_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_241 optimizedBody156_280

def optimizedBody156_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_240 optimizedBody156_281

def optimizedBody156_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_239 optimizedBody156_282

def optimizedBody156_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_238 optimizedBody156_283

def optimizedBody156_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_233 optimizedBody156_284

def optimizedBody156_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_232 optimizedBody156_285

def optimizedBody156_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_237 optimizedBody156_286

def optimizedBody156_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_74 optimizedBody156_287

def optimizedBody156_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_236 optimizedBody156_288

def optimizedBody156_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_235 optimizedBody156_289

def optimizedBody156_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_234 optimizedBody156_290

def optimizedBody156_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_291

def optimizedBody156_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_233 optimizedBody156_292

def optimizedBody156_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_232 optimizedBody156_293

def optimizedBody156_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_231 optimizedBody156_294

def optimizedBody156_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_230 optimizedBody156_295

def optimizedBody156_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_229 optimizedBody156_296

def optimizedBody156_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_78 optimizedBody156_297

def optimizedBody156_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_228 optimizedBody156_298

def optimizedBody156_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_299

def optimizedBody156_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_227 optimizedBody156_300

def optimizedBody156_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_226 optimizedBody156_301

def optimizedBody156_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_225 optimizedBody156_302

def optimizedBody156_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_224 optimizedBody156_303

def optimizedBody156_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_223 optimizedBody156_304

def optimizedBody156_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_222 optimizedBody156_305

def optimizedBody156_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_221 optimizedBody156_306

def optimizedBody156_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_220 optimizedBody156_307

def optimizedBody156_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_219 optimizedBody156_308

def optimizedBody156_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_218 optimizedBody156_309

def optimizedBody156_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_217 optimizedBody156_310

def optimizedBody156_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_216 optimizedBody156_311

def optimizedBody156_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_215 optimizedBody156_312

def optimizedBody156_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_214 optimizedBody156_313

def optimizedBody156_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_213 optimizedBody156_314

def optimizedBody156_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_212 optimizedBody156_315

def optimizedBody156_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_211 optimizedBody156_316

def optimizedBody156_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_210 optimizedBody156_317

def optimizedBody156_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_78 optimizedBody156_318

def optimizedBody156_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_185 optimizedBody156_319

def optimizedBody156_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_320

def optimizedBody156_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_184 optimizedBody156_321

def optimizedBody156_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_183 optimizedBody156_322

def optimizedBody156_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_209 optimizedBody156_323

def optimizedBody156_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_113 optimizedBody156_324

def optimizedBody156_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_181 optimizedBody156_325

def optimizedBody156_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_78 optimizedBody156_326

def optimizedBody156_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_180 optimizedBody156_327

def optimizedBody156_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_179 optimizedBody156_328

def optimizedBody156_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_205 optimizedBody156_329

def optimizedBody156_331 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_78 optimizedBody156_330

def optimizedBody156_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_208 optimizedBody156_331

def optimizedBody156_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_113 optimizedBody156_332

def optimizedBody156_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_207 optimizedBody156_333

def optimizedBody156_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_111 optimizedBody156_334

def optimizedBody156_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_206 optimizedBody156_335

def optimizedBody156_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_50 optimizedBody156_336

def optimizedBody156_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_205 optimizedBody156_337

def optimizedBody156_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_78 optimizedBody156_338

def optimizedBody156_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_204 optimizedBody156_339

def optimizedBody156_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_173 optimizedBody156_340

def optimizedBody156_342 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_203 optimizedBody156_341

def optimizedBody156_343 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_342

def optimizedBody156_344 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_202 optimizedBody156_343

def optimizedBody156_345 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_50 optimizedBody156_344

def optimizedBody156_346 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_201 optimizedBody156_345

def optimizedBody156_347 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_169 optimizedBody156_346

def optimizedBody156_348 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_200 optimizedBody156_347

def optimizedBody156_349 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_199 optimizedBody156_348

def optimizedBody156_350 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_198 optimizedBody156_349

def optimizedBody156_351 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_197 optimizedBody156_350

def optimizedBody156_352 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_196 optimizedBody156_351

def optimizedBody156_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_195 optimizedBody156_352

def optimizedBody156_354 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_194 optimizedBody156_353

def optimizedBody156_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_92 optimizedBody156_354

def optimizedBody156_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_193 optimizedBody156_355

def optimizedBody156_357 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_192 optimizedBody156_356

def optimizedBody156_358 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_191 optimizedBody156_357

def optimizedBody156_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_190 optimizedBody156_358

def optimizedBody156_360 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_189 optimizedBody156_359

def optimizedBody156_361 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_188 optimizedBody156_360

def optimizedBody156_362 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_187 optimizedBody156_361

def optimizedBody156_363 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_186 optimizedBody156_362

def optimizedBody156_364 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_78 optimizedBody156_363

def optimizedBody156_365 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_185 optimizedBody156_364

def optimizedBody156_366 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_365

def optimizedBody156_367 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_184 optimizedBody156_366

def optimizedBody156_368 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_183 optimizedBody156_367

def optimizedBody156_369 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_182 optimizedBody156_368

def optimizedBody156_370 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_113 optimizedBody156_369

def optimizedBody156_371 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_181 optimizedBody156_370

def optimizedBody156_372 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_78 optimizedBody156_371

def optimizedBody156_373 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_180 optimizedBody156_372

def optimizedBody156_374 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_179 optimizedBody156_373

def optimizedBody156_375 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_175 optimizedBody156_374

def optimizedBody156_376 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_78 optimizedBody156_375

def optimizedBody156_377 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_178 optimizedBody156_376

def optimizedBody156_378 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_113 optimizedBody156_377

def optimizedBody156_379 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_177 optimizedBody156_378

def optimizedBody156_380 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_111 optimizedBody156_379

def optimizedBody156_381 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_176 optimizedBody156_380

def optimizedBody156_382 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_50 optimizedBody156_381

def optimizedBody156_383 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_175 optimizedBody156_382

def optimizedBody156_384 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_78 optimizedBody156_383

def optimizedBody156_385 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_174 optimizedBody156_384

def optimizedBody156_386 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_173 optimizedBody156_385

def optimizedBody156_387 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_172 optimizedBody156_386

def optimizedBody156_388 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_387

def optimizedBody156_389 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_171 optimizedBody156_388

def optimizedBody156_390 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_50 optimizedBody156_389

def optimizedBody156_391 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_170 optimizedBody156_390

def optimizedBody156_392 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_169 optimizedBody156_391

def optimizedBody156_393 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_168 optimizedBody156_392

def optimizedBody156_394 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_167 optimizedBody156_393

def optimizedBody156_395 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_166 optimizedBody156_394

def optimizedBody156_396 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_165 optimizedBody156_395

def optimizedBody156_397 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_164 optimizedBody156_396

def optimizedBody156_398 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_163 optimizedBody156_397

def optimizedBody156_399 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_162 optimizedBody156_398

def optimizedBody156_400 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_161 optimizedBody156_399

def optimizedBody156_401 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_160 optimizedBody156_400

def optimizedBody156_402 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_159 optimizedBody156_401

def optimizedBody156_403 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_158 optimizedBody156_402

def optimizedBody156_404 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_157 optimizedBody156_403

def optimizedBody156_405 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_156 optimizedBody156_404

def optimizedBody156_406 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_155 optimizedBody156_405

def optimizedBody156_407 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_154 optimizedBody156_406

def optimizedBody156_408 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_153 optimizedBody156_407

def optimizedBody156_409 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_408

def optimizedBody156_410 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_152 optimizedBody156_409

def optimizedBody156_411 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_78 optimizedBody156_410

def optimizedBody156_412 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_151 optimizedBody156_411

def optimizedBody156_413 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_103 optimizedBody156_412

def optimizedBody156_414 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_150 optimizedBody156_413

def optimizedBody156_415 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_113 optimizedBody156_414

def optimizedBody156_416 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_149 optimizedBody156_415

def optimizedBody156_417 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_416

def optimizedBody156_418 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_148 optimizedBody156_417

def optimizedBody156_419 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_147 optimizedBody156_418

def optimizedBody156_420 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_143 optimizedBody156_419

def optimizedBody156_421 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_420

def optimizedBody156_422 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_146 optimizedBody156_421

def optimizedBody156_423 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_113 optimizedBody156_422

def optimizedBody156_424 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_145 optimizedBody156_423

def optimizedBody156_425 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_111 optimizedBody156_424

def optimizedBody156_426 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_144 optimizedBody156_425

def optimizedBody156_427 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_50 optimizedBody156_426

def optimizedBody156_428 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_143 optimizedBody156_427

def optimizedBody156_429 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_428

def optimizedBody156_430 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_142 optimizedBody156_429

def optimizedBody156_431 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_141 optimizedBody156_430

def optimizedBody156_432 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_140 optimizedBody156_431

def optimizedBody156_433 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_78 optimizedBody156_432

def optimizedBody156_434 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_139 optimizedBody156_433

def optimizedBody156_435 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_50 optimizedBody156_434

def optimizedBody156_436 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_138 optimizedBody156_435

def optimizedBody156_437 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_137 optimizedBody156_436

def optimizedBody156_438 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_136 optimizedBody156_437

def optimizedBody156_439 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_135 optimizedBody156_438

def optimizedBody156_440 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_134 optimizedBody156_439

def optimizedBody156_441 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_133 optimizedBody156_440

def optimizedBody156_442 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_132 optimizedBody156_441

def optimizedBody156_443 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_131 optimizedBody156_442

def optimizedBody156_444 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_130 optimizedBody156_443

def optimizedBody156_445 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_129 optimizedBody156_444

def optimizedBody156_446 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_128 optimizedBody156_445

def optimizedBody156_447 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_127 optimizedBody156_446

def optimizedBody156_448 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_126 optimizedBody156_447

def optimizedBody156_449 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_125 optimizedBody156_448

def optimizedBody156_450 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_124 optimizedBody156_449

def optimizedBody156_451 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_123 optimizedBody156_450

def optimizedBody156_452 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_122 optimizedBody156_451

def optimizedBody156_453 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_121 optimizedBody156_452

def optimizedBody156_454 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_50 optimizedBody156_453

def optimizedBody156_455 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_39 optimizedBody156_454

def optimizedBody156_456 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_455

def optimizedBody156_457 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_120 optimizedBody156_456

def optimizedBody156_458 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_119 optimizedBody156_457

def optimizedBody156_459 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_118 optimizedBody156_458

def optimizedBody156_460 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_113 optimizedBody156_459

def optimizedBody156_461 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_117 optimizedBody156_460

def optimizedBody156_462 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_50 optimizedBody156_461

def optimizedBody156_463 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_116 optimizedBody156_462

def optimizedBody156_464 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_115 optimizedBody156_463

def optimizedBody156_465 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_109 optimizedBody156_464

def optimizedBody156_466 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_50 optimizedBody156_465

def optimizedBody156_467 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_114 optimizedBody156_466

def optimizedBody156_468 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_113 optimizedBody156_467

def optimizedBody156_469 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_112 optimizedBody156_468

def optimizedBody156_470 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_111 optimizedBody156_469

def optimizedBody156_471 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_110 optimizedBody156_470

def optimizedBody156_472 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_78 optimizedBody156_471

def optimizedBody156_473 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_109 optimizedBody156_472

def optimizedBody156_474 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_50 optimizedBody156_473

def optimizedBody156_475 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_108 optimizedBody156_474

def optimizedBody156_476 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_107 optimizedBody156_475

def optimizedBody156_477 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_106 optimizedBody156_476

def optimizedBody156_478 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_477

def optimizedBody156_479 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_105 optimizedBody156_478

def optimizedBody156_480 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_78 optimizedBody156_479

def optimizedBody156_481 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_104 optimizedBody156_480

def optimizedBody156_482 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_103 optimizedBody156_481

def optimizedBody156_483 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_102 optimizedBody156_482

def optimizedBody156_484 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_101 optimizedBody156_483

def optimizedBody156_485 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_100 optimizedBody156_484

def optimizedBody156_486 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_99 optimizedBody156_485

def optimizedBody156_487 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_98 optimizedBody156_486

def optimizedBody156_488 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_97 optimizedBody156_487

def optimizedBody156_489 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_96 optimizedBody156_488

def optimizedBody156_490 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_95 optimizedBody156_489

def optimizedBody156_491 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_94 optimizedBody156_490

def optimizedBody156_492 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_93 optimizedBody156_491

def optimizedBody156_493 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_92 optimizedBody156_492

def optimizedBody156_494 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_91 optimizedBody156_493

def optimizedBody156_495 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_90 optimizedBody156_494

def optimizedBody156_496 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_89 optimizedBody156_495

def optimizedBody156_497 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_88 optimizedBody156_496

def optimizedBody156_498 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_80 optimizedBody156_497

def optimizedBody156_499 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_87 optimizedBody156_498

def optimizedBody156_500 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_78 optimizedBody156_499

def optimizedBody156_501 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_86 optimizedBody156_500

def optimizedBody156_502 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_85 optimizedBody156_501

def optimizedBody156_503 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_84 optimizedBody156_502

def optimizedBody156_504 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_74 optimizedBody156_503

def optimizedBody156_505 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_83 optimizedBody156_504

def optimizedBody156_506 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_82 optimizedBody156_505

def optimizedBody156_507 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_81 optimizedBody156_506

def optimizedBody156_508 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_80 optimizedBody156_507

def optimizedBody156_509 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_79 optimizedBody156_508

def optimizedBody156_510 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_78 optimizedBody156_509

def optimizedBody156_511 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_77 optimizedBody156_510

def optimizedBody156_512 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_76 optimizedBody156_511

def optimizedBody156_513 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_75 optimizedBody156_512

def optimizedBody156_514 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_74 optimizedBody156_513

def optimizedBody156_515 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_73 optimizedBody156_514

def optimizedBody156_516 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_72 optimizedBody156_515

def optimizedBody156_517 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_71 optimizedBody156_516

def optimizedBody156_518 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_70 optimizedBody156_517

def optimizedBody156_519 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_69 optimizedBody156_518

def optimizedBody156_520 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_68 optimizedBody156_519

def optimizedBody156_521 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_67 optimizedBody156_520

def optimizedBody156_522 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_66 optimizedBody156_521

def optimizedBody156_523 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_65 optimizedBody156_522

def optimizedBody156_524 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_64 optimizedBody156_523

def optimizedBody156_525 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_63 optimizedBody156_524

def optimizedBody156_526 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_62 optimizedBody156_525

def optimizedBody156_527 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_61 optimizedBody156_526

def optimizedBody156_528 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_60 optimizedBody156_527

def optimizedBody156_529 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_59 optimizedBody156_528

def optimizedBody156_530 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_58 optimizedBody156_529

def optimizedBody156_531 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_57 optimizedBody156_530

def optimizedBody156_532 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_56 optimizedBody156_531

def optimizedBody156_533 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_55 optimizedBody156_532

def optimizedBody156_534 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_54 optimizedBody156_533

def optimizedBody156_535 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_53 optimizedBody156_534

def optimizedBody156_536 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_52 optimizedBody156_535

def optimizedBody156_537 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_51 optimizedBody156_536

def optimizedBody156_538 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_50 optimizedBody156_537

def optimizedBody156_539 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_49 optimizedBody156_538

def optimizedBody156_540 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_48 optimizedBody156_539

def optimizedBody156_541 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_47 optimizedBody156_540

def optimizedBody156_542 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_46 optimizedBody156_541

def optimizedBody156_543 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_45 optimizedBody156_542

def optimizedBody156_544 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_44 optimizedBody156_543

def optimizedBody156_545 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_43 optimizedBody156_544

def optimizedBody156_546 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_42 optimizedBody156_545

def optimizedBody156_547 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_41 optimizedBody156_546

def optimizedBody156_548 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_40 optimizedBody156_547

def optimizedBody156_549 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_39 optimizedBody156_548

def optimizedBody156_550 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_38 optimizedBody156_549

def optimizedBody156_551 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_37 optimizedBody156_550

def optimizedBody156_552 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_36 optimizedBody156_551

def optimizedBody156_553 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_35 optimizedBody156_552

def optimizedBody156_554 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_34 optimizedBody156_553

def optimizedBody156_555 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_33 optimizedBody156_554

def optimizedBody156_556 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_32 optimizedBody156_555

def optimizedBody156_557 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_28 optimizedBody156_556

def optimizedBody156_558 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody156_559 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_28 optimizedBody156_558

def optimizedBody156_560 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 60 (Flapjack.WordRegImm.reg 2) optimizedBody156_557 optimizedBody156_559

def optimizedBody156_561 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(20, 46), (0, 48), (24, 50), (40, 52), (54, 0), (22, 2), (2, 4), (50, 6), (12, 8), (18, 10), (48, 12), (14, 14),
    (8, 16), (6, 18), (46, 20), (28, 22), (56, 24), (10, 26), (4, 28), (26, 30), (16, 32), (34, 34), (36, 36), (38, 38),
    (52, 40), (42, 42)]

def optimizedBody156_562 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_28 optimizedBody156_561

def optimizedBody156_563 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_560 optimizedBody156_562

def optimizedBody156_564 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_31 optimizedBody156_563

def optimizedBody156_565 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_30 optimizedBody156_564

def optimizedBody156_566 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody156_565 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody156_567 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 58), (2, 24)]

def optimizedBody156_568 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 24 0#64))

def optimizedBody156_569 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 24)]

def optimizedBody156_570 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 24 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody156_571 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (26, 26)]

def optimizedBody156_572 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 26 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody156_573 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 24 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody156_574 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody156_575 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody156_576 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 24 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody156_577 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (40, 40)]

def optimizedBody156_578 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 40 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody156_579 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 24 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody156_580 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (16, 16)]

def optimizedBody156_581 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody156_582 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 24 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody156_583 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (14, 14)]

def optimizedBody156_584 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody156_585 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody156_586 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (42, 42)]

def optimizedBody156_587 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 42 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody156_588 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 56#64)))

def optimizedBody156_589 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (36, 36)]

def optimizedBody156_590 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 36 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody156_591 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody156_592 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (8, 8)]

def optimizedBody156_593 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody156_594 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 2 (Flapjack.WordRegImm.imm 72#64)))

def optimizedBody156_595 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (4, 56)]

def optimizedBody156_596 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody156_597 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 80#64)))

def optimizedBody156_598 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (34, 34)]

def optimizedBody156_599 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 34 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody156_600 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 88#64)))

def optimizedBody156_601 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (6, 6)]

def optimizedBody156_602 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody156_603 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody156_604 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (10, 10)]

def optimizedBody156_605 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody156_606 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 104#64)))

def optimizedBody156_607 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (22, 22)]

def optimizedBody156_608 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 22 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody156_609 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.imm 112#64)))

def optimizedBody156_610 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 54)]

def optimizedBody156_611 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody156_612 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody156_613 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody156_614 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 2 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody156_615 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (38, 38)]

def optimizedBody156_616 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 38 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody156_617 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 2 (Flapjack.WordRegImm.imm 136#64)))

def optimizedBody156_618 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody156_619 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 2 (Flapjack.WordRegImm.imm 144#64)))

def optimizedBody156_620 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (20, 20)]

def optimizedBody156_621 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody156_622 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 152#64)))

def optimizedBody156_623 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 52)]

def optimizedBody156_624 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 2 (Flapjack.WordRegImm.imm 160#64)))

def optimizedBody156_625 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (18, 18)]

def optimizedBody156_626 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody156_627 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 2 (Flapjack.WordRegImm.imm 168#64)))

def optimizedBody156_628 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (28, 28)]

def optimizedBody156_629 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 28 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody156_630 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 176#64)))

def optimizedBody156_631 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 50)]

def optimizedBody156_632 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 184#64)))

def optimizedBody156_633 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 48)]

def optimizedBody156_634 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody156_635 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 46)]

def optimizedBody156_636 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody156_637 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody156_638 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody156_639 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_638

def optimizedBody156_640 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_637 optimizedBody156_639

def optimizedBody156_641 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_636 optimizedBody156_640

def optimizedBody156_642 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_635 optimizedBody156_641

def optimizedBody156_643 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_634 optimizedBody156_642

def optimizedBody156_644 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_643

def optimizedBody156_645 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_613 optimizedBody156_644

def optimizedBody156_646 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_633 optimizedBody156_645

def optimizedBody156_647 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_632 optimizedBody156_646

def optimizedBody156_648 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_647

def optimizedBody156_649 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_613 optimizedBody156_648

def optimizedBody156_650 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_631 optimizedBody156_649

def optimizedBody156_651 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_630 optimizedBody156_650

def optimizedBody156_652 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_651

def optimizedBody156_653 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_629 optimizedBody156_652

def optimizedBody156_654 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_628 optimizedBody156_653

def optimizedBody156_655 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_627 optimizedBody156_654

def optimizedBody156_656 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_655

def optimizedBody156_657 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_626 optimizedBody156_656

def optimizedBody156_658 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_625 optimizedBody156_657

def optimizedBody156_659 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_624 optimizedBody156_658

def optimizedBody156_660 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_659

def optimizedBody156_661 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_613 optimizedBody156_660

def optimizedBody156_662 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_623 optimizedBody156_661

def optimizedBody156_663 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_622 optimizedBody156_662

def optimizedBody156_664 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_663

def optimizedBody156_665 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_621 optimizedBody156_664

def optimizedBody156_666 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_620 optimizedBody156_665

def optimizedBody156_667 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_619 optimizedBody156_666

def optimizedBody156_668 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_667

def optimizedBody156_669 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_618 optimizedBody156_668

def optimizedBody156_670 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_173 optimizedBody156_669

def optimizedBody156_671 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_617 optimizedBody156_670

def optimizedBody156_672 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_671

def optimizedBody156_673 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_616 optimizedBody156_672

def optimizedBody156_674 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_615 optimizedBody156_673

def optimizedBody156_675 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_614 optimizedBody156_674

def optimizedBody156_676 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_675

def optimizedBody156_677 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_613 optimizedBody156_676

def optimizedBody156_678 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_238 optimizedBody156_677

def optimizedBody156_679 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_612 optimizedBody156_678

def optimizedBody156_680 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_679

def optimizedBody156_681 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_611 optimizedBody156_680

def optimizedBody156_682 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_610 optimizedBody156_681

def optimizedBody156_683 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_609 optimizedBody156_682

def optimizedBody156_684 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_683

def optimizedBody156_685 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_608 optimizedBody156_684

def optimizedBody156_686 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_607 optimizedBody156_685

def optimizedBody156_687 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_606 optimizedBody156_686

def optimizedBody156_688 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_687

def optimizedBody156_689 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_605 optimizedBody156_688

def optimizedBody156_690 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_604 optimizedBody156_689

def optimizedBody156_691 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_603 optimizedBody156_690

def optimizedBody156_692 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_691

def optimizedBody156_693 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_602 optimizedBody156_692

def optimizedBody156_694 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_601 optimizedBody156_693

def optimizedBody156_695 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_600 optimizedBody156_694

def optimizedBody156_696 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_695

def optimizedBody156_697 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_599 optimizedBody156_696

def optimizedBody156_698 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_598 optimizedBody156_697

def optimizedBody156_699 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_597 optimizedBody156_698

def optimizedBody156_700 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_699

def optimizedBody156_701 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_596 optimizedBody156_700

def optimizedBody156_702 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_595 optimizedBody156_701

def optimizedBody156_703 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_594 optimizedBody156_702

def optimizedBody156_704 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_703

def optimizedBody156_705 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_593 optimizedBody156_704

def optimizedBody156_706 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_592 optimizedBody156_705

def optimizedBody156_707 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_591 optimizedBody156_706

def optimizedBody156_708 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_707

def optimizedBody156_709 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_590 optimizedBody156_708

def optimizedBody156_710 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_589 optimizedBody156_709

def optimizedBody156_711 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_588 optimizedBody156_710

def optimizedBody156_712 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_711

def optimizedBody156_713 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_587 optimizedBody156_712

def optimizedBody156_714 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_586 optimizedBody156_713

def optimizedBody156_715 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_585 optimizedBody156_714

def optimizedBody156_716 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_38 optimizedBody156_715

def optimizedBody156_717 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_584 optimizedBody156_716

def optimizedBody156_718 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_583 optimizedBody156_717

def optimizedBody156_719 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_582 optimizedBody156_718

def optimizedBody156_720 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_569 optimizedBody156_719

def optimizedBody156_721 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_581 optimizedBody156_720

def optimizedBody156_722 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_580 optimizedBody156_721

def optimizedBody156_723 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_579 optimizedBody156_722

def optimizedBody156_724 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_569 optimizedBody156_723

def optimizedBody156_725 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_578 optimizedBody156_724

def optimizedBody156_726 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_577 optimizedBody156_725

def optimizedBody156_727 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_576 optimizedBody156_726

def optimizedBody156_728 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_569 optimizedBody156_727

def optimizedBody156_729 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_575 optimizedBody156_728

def optimizedBody156_730 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_574 optimizedBody156_729

def optimizedBody156_731 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_573 optimizedBody156_730

def optimizedBody156_732 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_569 optimizedBody156_731

def optimizedBody156_733 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_572 optimizedBody156_732

def optimizedBody156_734 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_571 optimizedBody156_733

def optimizedBody156_735 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_570 optimizedBody156_734

def optimizedBody156_736 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_569 optimizedBody156_735

def optimizedBody156_737 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_568 optimizedBody156_736

def optimizedBody156_738 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_567 optimizedBody156_737

def optimizedBody156_739 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_28 optimizedBody156_738

def optimizedBody156_740 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_566 optimizedBody156_739

def optimizedBody156_741 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_29 optimizedBody156_740

def optimizedBody156_742 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_28 optimizedBody156_741

def optimizedBody156_743 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_27 optimizedBody156_742

def optimizedBody156_744 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_26 optimizedBody156_743

def optimizedBody156_745 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_744

def optimizedBody156_746 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_25 optimizedBody156_745

def optimizedBody156_747 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_746

def optimizedBody156_748 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_24 optimizedBody156_747

def optimizedBody156_749 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_748

def optimizedBody156_750 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_23 optimizedBody156_749

def optimizedBody156_751 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_750

def optimizedBody156_752 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_22 optimizedBody156_751

def optimizedBody156_753 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_752

def optimizedBody156_754 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_21 optimizedBody156_753

def optimizedBody156_755 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_754

def optimizedBody156_756 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_20 optimizedBody156_755

def optimizedBody156_757 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_756

def optimizedBody156_758 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_19 optimizedBody156_757

def optimizedBody156_759 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_758

def optimizedBody156_760 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_18 optimizedBody156_759

def optimizedBody156_761 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_760

def optimizedBody156_762 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_17 optimizedBody156_761

def optimizedBody156_763 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_762

def optimizedBody156_764 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_16 optimizedBody156_763

def optimizedBody156_765 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_764

def optimizedBody156_766 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_15 optimizedBody156_765

def optimizedBody156_767 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_766

def optimizedBody156_768 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_14 optimizedBody156_767

def optimizedBody156_769 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_768

def optimizedBody156_770 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_13 optimizedBody156_769

def optimizedBody156_771 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_770

def optimizedBody156_772 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_12 optimizedBody156_771

def optimizedBody156_773 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_772

def optimizedBody156_774 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_11 optimizedBody156_773

def optimizedBody156_775 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_774

def optimizedBody156_776 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_10 optimizedBody156_775

def optimizedBody156_777 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_776

def optimizedBody156_778 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_9 optimizedBody156_777

def optimizedBody156_779 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_778

def optimizedBody156_780 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_8 optimizedBody156_779

def optimizedBody156_781 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_780

def optimizedBody156_782 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_7 optimizedBody156_781

def optimizedBody156_783 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_782

def optimizedBody156_784 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_6 optimizedBody156_783

def optimizedBody156_785 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_784

def optimizedBody156_786 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_5 optimizedBody156_785

def optimizedBody156_787 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_786

def optimizedBody156_788 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_4 optimizedBody156_787

def optimizedBody156_789 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_788

def optimizedBody156_790 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_3 optimizedBody156_789

def optimizedBody156_791 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_2 optimizedBody156_790

def optimizedBody156_792 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_1 optimizedBody156_791

def optimizedBody156_793 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody156_0 optimizedBody156_792

def oracle156 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 21) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 2))) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 19 (Flapjack.Spt.ls 1)) 0 (Flapjack.Spt.ls 6)))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 21 (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.ls 1))) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)) 2 (Flapjack.Spt.ls 14))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 7 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 12))) 4
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0)) 25 (Flapjack.Spt.ls 20)))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)) 6 (Flapjack.Spt.ls 9)) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 14 (Flapjack.Spt.ls 6))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 21))) 13
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 19 (Flapjack.Spt.ls 5)))
                  1
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 21) 0 (Flapjack.Spt.ls 0)) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1)) 5
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 26)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 6 (Flapjack.Spt.ls 19)) 27
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)) 10 (Flapjack.Spt.ls 6)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) 0 (Flapjack.Spt.ls 5)) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 4)) 38
                      (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 13)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) 19
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0)) 4 (Flapjack.Spt.ls 0)))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 16) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 12))) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 35 (Flapjack.Spt.ls 7))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 17 (Flapjack.Spt.ls 1))) 6
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)) 18 (Flapjack.Spt.ls 5)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 5 (Flapjack.Spt.ls 6)) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 17)) 31 (Flapjack.Spt.ls 7)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))) 14
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 10)) 23 (Flapjack.Spt.ls 1)))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)) 7 (Flapjack.Spt.ls 6)) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)) 17 (Flapjack.Spt.ls 15))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 27 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))) 10
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0)) 17 (Flapjack.Spt.ls 7)) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)) 32
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 17))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 19 (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 2))) 21
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 9)) 23 (Flapjack.Spt.ls 10)))
                  1
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 18) 6 (Flapjack.Spt.ls 7)) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 3)) 24 (Flapjack.Spt.ls 14))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 7 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 8))) 24
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 8 (Flapjack.Spt.ls 0)))
                  0
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2)) 5 (Flapjack.Spt.ls 9)) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 1)) 7
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 8))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 2))) 5
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 0 (Flapjack.Spt.ls 12)))
                  1
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 7 (Flapjack.Spt.ls 6)) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 5)) 36
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 6 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 12))) 12
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 19 (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2)) 1 (Flapjack.Spt.ls 5)) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 16
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 15)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 1))) 17
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2)) 25 (Flapjack.Spt.ls 11)))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 12 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 24)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 17) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 19)) 33 (Flapjack.Spt.ls 5)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 0 (Flapjack.Spt.ls 1)) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 2)) 1
                      (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 11))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 26 (Flapjack.Spt.ls 0)) 29
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)) 4 (Flapjack.Spt.ls 13)))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) 6 (Flapjack.Spt.ls 11)) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)) 3
                      (Flapjack.Spt.bs Flapjack.Spt.ln 14 (Flapjack.Spt.ls 4)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 21 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))) 21
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)) 2 (Flapjack.Spt.ls 14)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 19 (Flapjack.Spt.ls 9)) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 4))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 17 (Flapjack.Spt.ls 19)))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 18 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1))) 30
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) 4 (Flapjack.Spt.ls 6)))
                  18
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 20) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 13))) 16
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 6 (Flapjack.Spt.ls 6))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1))) 7
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 6)) 4 (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 4 (Flapjack.Spt.ls 0)) 10
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)) 37
                      (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 7))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 6)) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 2)) 2 (Flapjack.Spt.ls 0)))
                  20
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 5 (Flapjack.Spt.ls 9)) 26
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 2)) 3
                      (Flapjack.Spt.bs Flapjack.Spt.ln 14 (Flapjack.Spt.ls 0)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 21 (Flapjack.Spt.bs Flapjack.Spt.ln 13 (Flapjack.Spt.ls 1))) 20
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 19 (Flapjack.Spt.ls 1)) 7 (Flapjack.Spt.ls 7)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 2 (Flapjack.Spt.ls 9)) 4
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 2)) 0
                      (Flapjack.Spt.bs Flapjack.Spt.ln 15 (Flapjack.Spt.ls 14)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 20 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 2))) 18
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 3 (Flapjack.Spt.ls 0)))
                  7
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 15) 21 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 12)))
                    14
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 11)) 3
                      (Flapjack.Spt.bs Flapjack.Spt.ln 16 (Flapjack.Spt.ls 23)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 19) 21 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 12)))
                    25 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 17 (Flapjack.Spt.ls 0)) 2 (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)) 3 (Flapjack.Spt.ls 10)) 11
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 14 (Flapjack.Spt.ls 10))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 7))) 23
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 17 (Flapjack.Spt.ls 0)))
                  22
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)) 19 (Flapjack.Spt.ls 7)) 8
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 1)) 13
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 0 (Flapjack.Spt.ls 5)) 22
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2)) 34 (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 14)) 19 (Flapjack.Spt.ls 7)) 3
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 2)) 9
                      (Flapjack.Spt.bs Flapjack.Spt.ln 16 (Flapjack.Spt.ls 18))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 18))) 26
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 4 (Flapjack.Spt.ls 19)))
                  27
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 28 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))) 19
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)) 3 (Flapjack.Spt.ls 6))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 5 (Flapjack.Spt.ls 0)) 9
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0)) 2 (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0)) 5 (Flapjack.Spt.ls 0)) 9
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 2)) 15
                      (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 9))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 1))) 28
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0)) 2 (Flapjack.Spt.ls 3)))
                  2
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 7 (Flapjack.Spt.ls 9)) 12
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 14 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 2)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 7 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) 20 (Flapjack.Spt.ls 7)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1)) 0 (Flapjack.Spt.ls 0)) 24
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 4)) 0
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 16)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 25 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 2))) 8
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 17 (Flapjack.Spt.ls 0)) 3 (Flapjack.Spt.ls 4)))
                  23
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 21 (Flapjack.Spt.ls 9)) 17
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 3
                      (Flapjack.Spt.bs Flapjack.Spt.ln 14 (Flapjack.Spt.ls 25)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 21 (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 20))) 11
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 2 (Flapjack.Spt.ls 18)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)) 0 (Flapjack.Spt.ls 9)) 5
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 1)) 0
                      (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 12))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 6 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))) 3
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)) 2 (Flapjack.Spt.ls 2)))
                  13
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 6 (Flapjack.Spt.ls 5)) 25
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 21
                      (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 5)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 12))) 15
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) 11 (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)) 0 (Flapjack.Spt.ls 17)) 6
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 20))))))))))
      Flapjack.Spt.ln))
def optimized156 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(156, 2, optimizedBody156_793)
theorem optimize156_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source156, oracle156) = optimized156 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize156_eq
end InitECandidate.Proofs.WordStages
