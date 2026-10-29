import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify221
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body237_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 10#64)

def body237_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body237_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ok") (Flapjack.Exp.const 0#64)) body237_0 body237_1

def body237_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "parent_base_fee")

def body237_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "parent_gas_used")
  (Flapjack.Exp.var Flapjack.VarKind.local "parent_gas_target")) body237_3 body237_1

def body237_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "bfd"), none)) "u256_from_word" [Flapjack.Exp.const 1#64]

def body237_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 0#64)) body237_5 body237_1

def body237_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "r")

def body237_8 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_add") ([Flapjack.Exp.var Flapjack.VarKind.local "parent_base_fee", Flapjack.Exp.var Flapjack.VarKind.local "bfd"]) body237_7

def body237_9 : Prog (BitVec 64) :=
.seq body237_6 body237_8

def body237_10 : Prog (BitVec 64) :=
.decCall ("z") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "bfd"]) body237_9

def body237_11 : Prog (BitVec 64) :=
.decCall ("bfd") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_div") ([Flapjack.Exp.var Flapjack.VarKind.local "tfd", Flapjack.Exp.var Flapjack.VarKind.local "eight"]) body237_10

def body237_12 : Prog (BitVec 64) :=
.decCall ("tfd") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_div") ([Flapjack.Exp.var Flapjack.VarKind.local "pfd", Flapjack.Exp.var Flapjack.VarKind.local "tgt"]) body237_11

def body237_13 : Prog (BitVec 64) :=
.decCall ("pfd") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "parent_base_fee", Flapjack.Exp.var Flapjack.VarKind.local "delta"]) body237_12

def body237_14 : Prog (BitVec 64) :=
.decCall ("delta") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_word") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "parent_gas_used",
      Flapjack.Exp.var Flapjack.VarKind.local "parent_gas_target"]]) body237_13

def body237_15 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "parent_gas_target")
  (Flapjack.Exp.var Flapjack.VarKind.local "parent_gas_used")) body237_14 body237_1

def body237_16 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "r2")

def body237_17 : Prog (BitVec 64) :=
.decCall ("r2") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_sub") ([Flapjack.Exp.var Flapjack.VarKind.local "parent_base_fee", Flapjack.Exp.var Flapjack.VarKind.local "bfd2"]) body237_16

def body237_18 : Prog (BitVec 64) :=
.decCall ("bfd2") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_div") ([Flapjack.Exp.var Flapjack.VarKind.local "tfd2", Flapjack.Exp.var Flapjack.VarKind.local "eight"]) body237_17

def body237_19 : Prog (BitVec 64) :=
.decCall ("tfd2") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_div") ([Flapjack.Exp.var Flapjack.VarKind.local "pfd2", Flapjack.Exp.var Flapjack.VarKind.local "tgt"]) body237_18

def body237_20 : Prog (BitVec 64) :=
.decCall ("pfd2") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "parent_base_fee", Flapjack.Exp.var Flapjack.VarKind.local "delta2"]) body237_19

def body237_21 : Prog (BitVec 64) :=
.decCall ("delta2") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_word") ([Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "parent_gas_target",
      Flapjack.Exp.var Flapjack.VarKind.local "parent_gas_used"]]) body237_20

def body237_22 : Prog (BitVec 64) :=
.seq body237_15 body237_21

def body237_23 : Prog (BitVec 64) :=
.decCall ("eight") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_word") ([Flapjack.Exp.const 8#64]) body237_22

def body237_24 : Prog (BitVec 64) :=
.decCall ("tgt") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_word") ([Flapjack.Exp.var Flapjack.VarKind.local "parent_gas_target"]) body237_23

def body237_25 : Prog (BitVec 64) :=
.seq body237_4 body237_24

def body237_26 : Prog (BitVec 64) :=
.seq body237_2 body237_25

def body237_27 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("check_gas_limit") ([Flapjack.Exp.var Flapjack.VarKind.local "block_gas_limit", Flapjack.Exp.var Flapjack.VarKind.local "parent_gas_limit"]) body237_26

def body237_28 : Prog (BitVec 64) :=
.dec ("parent_gas_target") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "parent_gas_limit")
  (Flapjack.Exp.const 1#64)) body237_27

def body237_29 : Prog (BitVec 64) :=
.seq body237_2 body237_4

def body237_30 : Prog (BitVec 64) :=
.seq body237_29 body237_24

def body237_31 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("check_gas_limit") ([Flapjack.Exp.var Flapjack.VarKind.local "block_gas_limit", Flapjack.Exp.var Flapjack.VarKind.local "parent_gas_limit"]) body237_30

def body237_32 : Prog (BitVec 64) :=
.dec ("parent_gas_target") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "parent_gas_limit")
  (Flapjack.Exp.const 1#64)) body237_31

def originalData237 : Decl (BitVec 64) :=
.function { name := "calculate_base_fee_per_gas", inline := false, exported := false, params := [("block_gas_limit", Flapjack.Shape.one), ("parent_gas_limit", Flapjack.Shape.one),
  ("parent_gas_used", Flapjack.Shape.one),
  ("parent_base_fee",
    Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body237_28, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData237 : Decl (BitVec 64) :=
.function { name := "calculate_base_fee_per_gas", inline := false, exported := false, params := [("block_gas_limit", Flapjack.Shape.one), ("parent_gas_limit", Flapjack.Shape.one),
  ("parent_gas_used", Flapjack.Shape.one),
  ("parent_base_fee",
    Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body237_32, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def original237 := Pancake.PanLang.declToHOL originalData237
def simplified237 := Pancake.PanLang.declToHOL simplifiedData237
end InitECandidate.Proofs.FrontendStages.Declarations
