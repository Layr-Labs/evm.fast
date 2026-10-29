import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify514
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body530_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 100#64]

def body530_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "u256_to_be32"
  [Flapjack.Exp.var Flapjack.VarKind.local "kv", Flapjack.Exp.var Flapjack.VarKind.local "key"]

def body530_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push" [Flapjack.Exp.var Flapjack.VarKind.local "v"]

def body530_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body530_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body530_5 : Prog (BitVec 64) :=
.seq body530_3 body530_4

def body530_6 : Prog (BitVec 64) :=
.seq body530_2 body530_5

def body530_7 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("get_transient_storage") ([Flapjack.Exp.var Flapjack.VarKind.local "target", Flapjack.Exp.var Flapjack.VarKind.local "key"]) body530_6

def body530_8 : Prog (BitVec 64) :=
.dec ("target") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64]),
      Flapjack.Exp.const 32#64])) body530_7

def body530_9 : Prog (BitVec 64) :=
.seq body530_1 body530_8

def body530_10 : Prog (BitVec 64) :=
.dec ("key") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "evm_key_buf") body530_9

def body530_11 : Prog (BitVec 64) :=
.seq body530_0 body530_10

def body530_12 : Prog (BitVec 64) :=
.decCall ("kv") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body530_11

def body530_13 : Prog (BitVec 64) :=
.seq body530_2 body530_3

def body530_14 : Prog (BitVec 64) :=
.seq body530_13 body530_4

def body530_15 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("get_transient_storage") ([Flapjack.Exp.var Flapjack.VarKind.local "target", Flapjack.Exp.var Flapjack.VarKind.local "key"]) body530_14

def body530_16 : Prog (BitVec 64) :=
.dec ("target") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64]),
      Flapjack.Exp.const 32#64])) body530_15

def body530_17 : Prog (BitVec 64) :=
.seq body530_1 body530_16

def body530_18 : Prog (BitVec 64) :=
.dec ("key") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "evm_key_buf") body530_17

def body530_19 : Prog (BitVec 64) :=
.seq body530_0 body530_18

def body530_20 : Prog (BitVec 64) :=
.decCall ("kv") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body530_19

def originalData530 : Decl (BitVec 64) :=
.function { name := "op_tload", inline := false, exported := false, params := [], body := body530_12, returnShape := (Flapjack.Shape.one) }
def simplifiedData530 : Decl (BitVec 64) :=
.function { name := "op_tload", inline := false, exported := false, params := [], body := body530_20, returnShape := (Flapjack.Shape.one) }
def original530 := Pancake.PanLang.declToHOL originalData530
def simplified530 := Pancake.PanLang.declToHOL simplifiedData530
end InitECandidate.Proofs.FrontendStages.Declarations
