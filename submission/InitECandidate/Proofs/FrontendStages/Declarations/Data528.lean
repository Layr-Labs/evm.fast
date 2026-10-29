import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify512
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body528_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "u256_to_be32"
  [Flapjack.Exp.var Flapjack.VarKind.local "kv", Flapjack.Exp.var Flapjack.VarKind.local "key"]

def body528_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 100#64]

def body528_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 2100#64]

def body528_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "warm_storage_key"
  [Flapjack.Exp.var Flapjack.VarKind.local "target", Flapjack.Exp.var Flapjack.VarKind.local "key"]

def body528_4 : Prog (BitVec 64) :=
.seq body528_2 body528_3

def body528_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "warm") (Flapjack.Exp.const 0#64)) body528_1 body528_4

def body528_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push" [Flapjack.Exp.var Flapjack.VarKind.local "v"]

def body528_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body528_8 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body528_9 : Prog (BitVec 64) :=
.seq body528_7 body528_8

def body528_10 : Prog (BitVec 64) :=
.seq body528_6 body528_9

def body528_11 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("get_storage") ([Flapjack.Exp.var Flapjack.VarKind.local "target", Flapjack.Exp.var Flapjack.VarKind.local "key"]) body528_10

def body528_12 : Prog (BitVec 64) :=
.seq body528_5 body528_11

def body528_13 : Prog (BitVec 64) :=
.decCall ("warm") (Flapjack.Shape.one) ("is_warm_storage_key") ([Flapjack.Exp.var Flapjack.VarKind.local "target", Flapjack.Exp.var Flapjack.VarKind.local "key"]) body528_12

def body528_14 : Prog (BitVec 64) :=
.dec ("target") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64]),
      Flapjack.Exp.const 32#64])) body528_13

def body528_15 : Prog (BitVec 64) :=
.seq body528_0 body528_14

def body528_16 : Prog (BitVec 64) :=
.dec ("key") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "evm_key_buf") body528_15

def body528_17 : Prog (BitVec 64) :=
.decCall ("kv") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body528_16

def body528_18 : Prog (BitVec 64) :=
.seq body528_6 body528_7

def body528_19 : Prog (BitVec 64) :=
.seq body528_18 body528_8

def body528_20 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("get_storage") ([Flapjack.Exp.var Flapjack.VarKind.local "target", Flapjack.Exp.var Flapjack.VarKind.local "key"]) body528_19

def body528_21 : Prog (BitVec 64) :=
.seq body528_5 body528_20

def body528_22 : Prog (BitVec 64) :=
.decCall ("warm") (Flapjack.Shape.one) ("is_warm_storage_key") ([Flapjack.Exp.var Flapjack.VarKind.local "target", Flapjack.Exp.var Flapjack.VarKind.local "key"]) body528_21

def body528_23 : Prog (BitVec 64) :=
.dec ("target") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64]),
      Flapjack.Exp.const 32#64])) body528_22

def body528_24 : Prog (BitVec 64) :=
.seq body528_0 body528_23

def body528_25 : Prog (BitVec 64) :=
.dec ("key") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "evm_key_buf") body528_24

def body528_26 : Prog (BitVec 64) :=
.decCall ("kv") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body528_25

def originalData528 : Decl (BitVec 64) :=
.function { name := "op_sload", inline := false, exported := false, params := [], body := body528_17, returnShape := (Flapjack.Shape.one) }
def simplifiedData528 : Decl (BitVec 64) :=
.function { name := "op_sload", inline := false, exported := false, params := [], body := body528_26, returnShape := (Flapjack.Shape.one) }
def original528 := Pancake.PanLang.declToHOL originalData528
def simplified528 := Pancake.PanLang.declToHOL simplifiedData528
end InitECandidate.Proofs.FrontendStages.Declarations
