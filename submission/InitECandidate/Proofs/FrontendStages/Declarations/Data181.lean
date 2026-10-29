import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify165
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body181_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body181_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body181_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "v") (Flapjack.Exp.const 28#64)) body181_0 body181_1

def body181_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "v") (Flapjack.Exp.const 27#64)) body181_2 body181_1

def body181_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "secp256k1_address_of_point"
  [Flapjack.Exp.var Flapjack.VarKind.local "pub", Flapjack.Exp.var Flapjack.VarKind.local "out20"]

def body181_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ok") (Flapjack.Exp.const 1#64)) body181_4 body181_1

def body181_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body181_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "ok")

def body181_8 : Prog (BitVec 64) :=
.seq body181_6 body181_7

def body181_9 : Prog (BitVec 64) :=
.seq body181_5 body181_8

def body181_10 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("secp256k1_recover") ([Flapjack.Exp.var Flapjack.VarKind.local "msg_hash", Flapjack.Exp.var Flapjack.VarKind.local "r",
  Flapjack.Exp.var Flapjack.VarKind.local "s",
  Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "v", Flapjack.Exp.const 27#64],
  Flapjack.Exp.var Flapjack.VarKind.local "pub"]) body181_9

def body181_11 : Prog (BitVec 64) :=
.decCall ("pub") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 64#64]) body181_10

def body181_12 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body181_11

def body181_13 : Prog (BitVec 64) :=
.seq body181_3 body181_12

def body181_14 : Prog (BitVec 64) :=
.seq body181_5 body181_6

def body181_15 : Prog (BitVec 64) :=
.seq body181_14 body181_7

def body181_16 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("secp256k1_recover") ([Flapjack.Exp.var Flapjack.VarKind.local "msg_hash", Flapjack.Exp.var Flapjack.VarKind.local "r",
  Flapjack.Exp.var Flapjack.VarKind.local "s",
  Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "v", Flapjack.Exp.const 27#64],
  Flapjack.Exp.var Flapjack.VarKind.local "pub"]) body181_15

def body181_17 : Prog (BitVec 64) :=
.decCall ("pub") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 64#64]) body181_16

def body181_18 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body181_17

def body181_19 : Prog (BitVec 64) :=
.seq body181_3 body181_18

def originalData181 : Decl (BitVec 64) :=
.function { name := "secp256k1_ecrecover", inline := false, exported := false, params := [("msg_hash", Flapjack.Shape.one), ("v", Flapjack.Shape.one),
  ("r", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("s", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("out20", Flapjack.Shape.one)], body := body181_13, returnShape := (Flapjack.Shape.one) }
def simplifiedData181 : Decl (BitVec 64) :=
.function { name := "secp256k1_ecrecover", inline := false, exported := false, params := [("msg_hash", Flapjack.Shape.one), ("v", Flapjack.Shape.one),
  ("r", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("s", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("out20", Flapjack.Shape.one)], body := body181_19, returnShape := (Flapjack.Shape.one) }
def original181 := Pancake.PanLang.declToHOL originalData181
def simplified181 := Pancake.PanLang.declToHOL simplifiedData181
end InitECandidate.Proofs.FrontendStages.Declarations
