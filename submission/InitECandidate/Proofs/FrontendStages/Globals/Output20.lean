import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data20
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody20_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody20_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody20_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "i"]))
  (Flapjack.Exp.const 0#64)) globalBody20_0 globalBody20_1

def globalBody20_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody20_4 : Prog (BitVec 64) :=
.seq globalBody20_2 globalBody20_3

def globalBody20_5 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) globalBody20_4

def globalBody20_6 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody20_7 : Prog (BitVec 64) :=
.seq globalBody20_5 globalBody20_6

def globalBody20_8 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody20_7

def globalData20 : Decl (BitVec 64) :=
.function { name := "is_zero_bytes", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := globalBody20_8, returnShape := (Flapjack.Shape.one) }
def globalOutput20 := Pancake.PanLang.declToHOL globalData20
end InitECandidate.Proofs.FrontendStages.Declarations
