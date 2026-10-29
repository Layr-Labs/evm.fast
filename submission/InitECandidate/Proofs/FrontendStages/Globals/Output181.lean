import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data181
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate165
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody181_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody181_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody181_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "v") (Flapjack.Exp.const 28#64)) globalBody181_0 globalBody181_1

def globalBody181_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "v") (Flapjack.Exp.const 27#64)) globalBody181_2 globalBody181_1

def globalBody181_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "secp256k1_address_of_point"
  [Flapjack.Exp.var Flapjack.VarKind.local "pub", Flapjack.Exp.var Flapjack.VarKind.local "out20"]

def globalBody181_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ok") (Flapjack.Exp.const 1#64)) globalBody181_4 globalBody181_1

def globalBody181_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody181_7 : Prog (BitVec 64) :=
.seq globalBody181_5 globalBody181_6

def globalBody181_8 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "ok")

def globalBody181_9 : Prog (BitVec 64) :=
.seq globalBody181_7 globalBody181_8

def globalBody181_10 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("secp256k1_recover") ([Flapjack.Exp.var Flapjack.VarKind.local "msg_hash", Flapjack.Exp.var Flapjack.VarKind.local "r",
  Flapjack.Exp.var Flapjack.VarKind.local "s",
  Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "v", Flapjack.Exp.const 27#64],
  Flapjack.Exp.var Flapjack.VarKind.local "pub"]) globalBody181_9

def globalBody181_11 : Prog (BitVec 64) :=
.decCall ("pub") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 64#64]) globalBody181_10

def globalBody181_12 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody181_11

def globalBody181_13 : Prog (BitVec 64) :=
.seq globalBody181_3 globalBody181_12

def globalData181 : Decl (BitVec 64) :=
.function { name := "secp256k1_ecrecover", inline := false, exported := false, params := [("msg_hash", Flapjack.Shape.one), ("v", Flapjack.Shape.one),
  ("r", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("s", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("out20", Flapjack.Shape.one)], body := globalBody181_13, returnShape := (Flapjack.Shape.one) }
def globalOutput181 := Pancake.PanLang.declToHOL globalData181
end InitECandidate.Proofs.FrontendStages.Declarations
