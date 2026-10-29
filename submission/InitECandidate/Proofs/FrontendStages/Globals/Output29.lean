import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data29
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate13
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody29_0 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "p") (Flapjack.Exp.var Flapjack.VarKind.local "w")

def globalBody29_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody29_2 : Prog (BitVec 64) :=
.seq globalBody29_0 globalBody29_1

def globalBody29_3 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("bswap64") ([Flapjack.Exp.var Flapjack.VarKind.local "v"]) globalBody29_2

def globalBody29_4 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody29_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 7#64])
  (Flapjack.Exp.const 0#64)) globalBody29_3 globalBody29_4

def globalBody29_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be32"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "v") (Flapjack.Exp.const 32#64)]

def globalBody29_7 : Prog (BitVec 64) :=
.seq globalBody29_5 globalBody29_6

def globalBody29_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be32"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 4#64],
    Flapjack.Exp.var Flapjack.VarKind.local "v"]

def globalBody29_9 : Prog (BitVec 64) :=
.seq globalBody29_7 globalBody29_8

def globalBody29_10 : Prog (BitVec 64) :=
.seq globalBody29_9 globalBody29_1

def globalData29 : Decl (BitVec 64) :=
.function { name := "st_be64", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("v", Flapjack.Shape.one)], body := globalBody29_10, returnShape := (Flapjack.Shape.one) }
def globalOutput29 := Pancake.PanLang.declToHOL globalData29
end InitECandidate.Proofs.FrontendStages.Declarations
