import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data322
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate306
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody322_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "total"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "total", Flapjack.Exp.var Flapjack.VarKind.local "eh",
      Flapjack.Exp.var Flapjack.VarKind.local "entry"])

def globalBody322_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody322_2 : Prog (BitVec 64) :=
.seq globalBody322_0 globalBody322_1

def globalBody322_3 : Prog (BitVec 64) :=
.decCall ("eh") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.var Flapjack.VarKind.local "entry"]) globalBody322_2

def globalBody322_4 : Prog (BitVec 64) :=
.dec ("entry") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.const 21#64, Flapjack.Exp.var Flapjack.VarKind.local "ih",
    Flapjack.Exp.var Flapjack.VarKind.local "inner"]) globalBody322_3

def globalBody322_5 : Prog (BitVec 64) :=
.decCall ("ih") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.var Flapjack.VarKind.local "inner"]) globalBody322_4

def globalBody322_6 : Prog (BitVec 64) :=
.dec ("inner") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul
  [Flapjack.Exp.const 33#64,
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "recs",
          Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 24#64],
          Flapjack.Exp.const 16#64])]) globalBody322_5

def globalBody322_7 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) globalBody322_6

def globalBody322_8 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "total")

def globalBody322_9 : Prog (BitVec 64) :=
.seq globalBody322_7 globalBody322_8

def globalBody322_10 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody322_9

def globalBody322_11 : Prog (BitVec 64) :=
.dec ("total") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody322_10

def globalData322 : Decl (BitVec 64) :=
.function { name := "access_list_payload_len", inline := false, exported := false, params := [("recs", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := globalBody322_11, returnShape := (Flapjack.Shape.one) }
def globalOutput322 := Pancake.PanLang.declToHOL globalData322
end InitECandidate.Proofs.FrontendStages.Declarations
