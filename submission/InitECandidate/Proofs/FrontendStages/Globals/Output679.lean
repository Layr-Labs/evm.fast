import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data679
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate663
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody679_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 1152#64]

def globalBody679_1 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "out")
  (Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.var Flapjack.VarKind.local "g1"))

def globalBody679_2 : Prog (BitVec 64) :=
.seq globalBody679_0 globalBody679_1

def globalBody679_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 384#64])
  (Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "g1", Flapjack.Exp.const 32#64]))

def globalBody679_4 : Prog (BitVec 64) :=
.seq globalBody679_2 globalBody679_3

def globalBody679_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "out",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.const 384#64]])
  (Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "g1", Flapjack.Exp.const 64#64]))

def globalBody679_6 : Prog (BitVec 64) :=
.seq globalBody679_4 globalBody679_5

def globalBody679_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody679_8 : Prog (BitVec 64) :=
.seq globalBody679_6 globalBody679_7

def globalData679 : Decl (BitVec 64) :=
.function { name := "fq12_cast", inline := false, exported := false, params := [("out", Flapjack.Shape.one), ("g1", Flapjack.Shape.one)], body := globalBody679_8, returnShape := (Flapjack.Shape.one) }
def globalOutput679 := Pancake.PanLang.declToHOL globalData679
end InitECandidate.Proofs.FrontendStages.Declarations
