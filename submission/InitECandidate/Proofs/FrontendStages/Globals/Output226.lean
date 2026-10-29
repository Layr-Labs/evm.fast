import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data226
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate208
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody226_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "HdrErr" (Flapjack.Exp.const 6#64)

def globalBody226_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody226_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "it"))
  (Flapjack.Exp.const 0#64)) globalBody226_0 globalBody226_1

def globalBody226_3 : Prog (BitVec 64) :=
Flapjack.Prog.raise "HdrErr" (Flapjack.Exp.const 7#64)

def globalBody226_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "it"))
  (Flapjack.Exp.var Flapjack.VarKind.local "width")) globalBody226_3 globalBody226_1

def globalBody226_5 : Prog (BitVec 64) :=
.seq globalBody226_2 globalBody226_4

def globalBody226_6 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "it"))

def globalBody226_7 : Prog (BitVec 64) :=
.seq globalBody226_5 globalBody226_6

def globalBody226_8 : Prog (BitVec 64) :=
.decCall ("it") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_item") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64]]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64],
        Flapjack.Exp.const 8#64])]) globalBody226_7

def globalData226 : Decl (BitVec 64) :=
.function { name := "hdr_bytes_field", inline := false, exported := false, params := [("arr", Flapjack.Shape.one), ("i", Flapjack.Shape.one), ("width", Flapjack.Shape.one)], body := globalBody226_8, returnShape := (Flapjack.Shape.one) }
def globalOutput226 := Pancake.PanLang.declToHOL globalData226
end InitECandidate.Proofs.FrontendStages.Declarations
