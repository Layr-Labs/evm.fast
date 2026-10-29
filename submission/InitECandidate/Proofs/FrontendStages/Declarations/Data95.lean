import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify79
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body95_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be32"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "out",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 4#64]],
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "stp",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])]

def body95_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body95_2 : Prog (BitVec 64) :=
.seq body95_0 body95_1

def body95_3 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 8#64)) body95_2

def body95_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body95_5 : Prog (BitVec 64) :=
.seq body95_3 body95_4

def body95_6 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body95_5

def originalData95 : Decl (BitVec 64) :=
.function { name := "sha256_finish", inline := false, exported := false, params := [("stp", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body95_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData95 : Decl (BitVec 64) :=
.function { name := "sha256_finish", inline := false, exported := false, params := [("stp", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body95_6, returnShape := (Flapjack.Shape.one) }
def original95 := Pancake.PanLang.declToHOL originalData95
def simplified95 := Pancake.PanLang.declToHOL simplifiedData95
end InitECandidate.Proofs.FrontendStages.Declarations
