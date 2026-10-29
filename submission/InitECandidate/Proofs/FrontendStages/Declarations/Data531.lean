import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify515
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body531_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "require_not_static" []

def body531_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 100#64]

def body531_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "u256_to_be32"
  [Flapjack.Exp.var Flapjack.VarKind.local "kv", Flapjack.Exp.var Flapjack.VarKind.local "key"]

def body531_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "set_transient_storage"
  [Flapjack.Exp.var Flapjack.VarKind.local "target", Flapjack.Exp.var Flapjack.VarKind.local "key",
    Flapjack.Exp.var Flapjack.VarKind.local "v"]

def body531_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body531_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body531_6 : Prog (BitVec 64) :=
.seq body531_4 body531_5

def body531_7 : Prog (BitVec 64) :=
.seq body531_3 body531_6

def body531_8 : Prog (BitVec 64) :=
.dec ("target") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64]),
      Flapjack.Exp.const 32#64])) body531_7

def body531_9 : Prog (BitVec 64) :=
.seq body531_2 body531_8

def body531_10 : Prog (BitVec 64) :=
.dec ("key") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "evm_key_buf") body531_9

def body531_11 : Prog (BitVec 64) :=
.seq body531_1 body531_10

def body531_12 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body531_11

def body531_13 : Prog (BitVec 64) :=
.decCall ("kv") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body531_12

def body531_14 : Prog (BitVec 64) :=
.seq body531_0 body531_13

def body531_15 : Prog (BitVec 64) :=
.seq body531_3 body531_4

def body531_16 : Prog (BitVec 64) :=
.seq body531_15 body531_5

def body531_17 : Prog (BitVec 64) :=
.dec ("target") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64]),
      Flapjack.Exp.const 32#64])) body531_16

def body531_18 : Prog (BitVec 64) :=
.seq body531_2 body531_17

def body531_19 : Prog (BitVec 64) :=
.dec ("key") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "evm_key_buf") body531_18

def body531_20 : Prog (BitVec 64) :=
.seq body531_1 body531_19

def body531_21 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body531_20

def body531_22 : Prog (BitVec 64) :=
.decCall ("kv") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body531_21

def body531_23 : Prog (BitVec 64) :=
.seq body531_0 body531_22

def originalData531 : Decl (BitVec 64) :=
.function { name := "op_tstore", inline := false, exported := false, params := [], body := body531_14, returnShape := (Flapjack.Shape.one) }
def simplifiedData531 : Decl (BitVec 64) :=
.function { name := "op_tstore", inline := false, exported := false, params := [], body := body531_23, returnShape := (Flapjack.Shape.one) }
def original531 := Pancake.PanLang.declToHOL originalData531
def simplified531 := Pancake.PanLang.declToHOL simplifiedData531
end InitECandidate.Proofs.FrontendStages.Declarations
