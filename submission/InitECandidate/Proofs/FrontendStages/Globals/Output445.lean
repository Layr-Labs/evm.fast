import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data445
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate424
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody445_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be32"
  [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "v")]

def globalBody445_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 4#64],
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "v")]

def globalBody445_2 : Prog (BitVec 64) :=
.seq globalBody445_0 globalBody445_1

def globalBody445_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 12#64],
    Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "v")]

def globalBody445_4 : Prog (BitVec 64) :=
.seq globalBody445_2 globalBody445_3

def globalBody445_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "a")

def globalBody445_6 : Prog (BitVec 64) :=
.seq globalBody445_4 globalBody445_5

def globalBody445_7 : Prog (BitVec 64) :=
.dec ("a") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
    Flapjack.Exp.const 240#64]) globalBody445_6

def globalData445 : Decl (BitVec 64) :=
.function { name := "to_address_masked", inline := false, exported := false, params := [("v", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody445_7, returnShape := (Flapjack.Shape.one) }
def globalOutput445 := Pancake.PanLang.declToHOL globalData445
end InitECandidate.Proofs.FrontendStages.Declarations
