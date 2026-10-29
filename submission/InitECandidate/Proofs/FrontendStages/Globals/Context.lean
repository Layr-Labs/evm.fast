import InitECandidate.Proofs.FrontendStages.Declarations.Data1
import InitECandidate.Proofs.FrontendStages.Declarations.Data2
import InitECandidate.Proofs.FrontendStages.Declarations.Data5
import InitECandidate.Proofs.FrontendStages.Declarations.Data6
import InitECandidate.Proofs.FrontendStages.Declarations.Data38
import InitECandidate.Proofs.FrontendStages.Declarations.Data90
import InitECandidate.Proofs.FrontendStages.Declarations.Data91
import InitECandidate.Proofs.FrontendStages.Declarations.Data98
import InitECandidate.Proofs.FrontendStages.Declarations.Data99
import InitECandidate.Proofs.FrontendStages.Declarations.Data100
import InitECandidate.Proofs.FrontendStages.Declarations.Data148
import InitECandidate.Proofs.FrontendStages.Declarations.Data183
import InitECandidate.Proofs.FrontendStages.Declarations.Data184
import InitECandidate.Proofs.FrontendStages.Declarations.Data185
import InitECandidate.Proofs.FrontendStages.Declarations.Data238
import InitECandidate.Proofs.FrontendStages.Declarations.Data242
import InitECandidate.Proofs.FrontendStages.Declarations.Data243
import InitECandidate.Proofs.FrontendStages.Declarations.Data244
import InitECandidate.Proofs.FrontendStages.Declarations.Data245
import InitECandidate.Proofs.FrontendStages.Declarations.Data246
import InitECandidate.Proofs.FrontendStages.Declarations.Data349
import InitECandidate.Proofs.FrontendStages.Declarations.Data350
import InitECandidate.Proofs.FrontendStages.Declarations.Data351
import InitECandidate.Proofs.FrontendStages.Declarations.Data352
import InitECandidate.Proofs.FrontendStages.Declarations.Data353
import InitECandidate.Proofs.FrontendStages.Declarations.Data354
import InitECandidate.Proofs.FrontendStages.Declarations.Data404
import InitECandidate.Proofs.FrontendStages.Declarations.Data405
import InitECandidate.Proofs.FrontendStages.Declarations.Data406
import InitECandidate.Proofs.FrontendStages.Declarations.Data407
import InitECandidate.Proofs.FrontendStages.Declarations.Data408
import InitECandidate.Proofs.FrontendStages.Declarations.Data437
import InitECandidate.Proofs.FrontendStages.Declarations.Data438
import InitECandidate.Proofs.FrontendStages.Declarations.Data439
import InitECandidate.Proofs.FrontendStages.Declarations.Data440
import InitECandidate.Proofs.FrontendStages.Declarations.Data563
import InitECandidate.Proofs.FrontendStages.Declarations.Data564
import InitECandidate.Proofs.FrontendStages.Declarations.Data565
import InitECandidate.Proofs.FrontendStages.Declarations.Data566
import InitECandidate.Proofs.FrontendStages.Declarations.Data609
import InitECandidate.Proofs.FrontendStages.Declarations.Data610
import InitECandidate.Proofs.FrontendStages.Declarations.Data611
import InitECandidate.Proofs.FrontendStages.Declarations.Data612
import InitECandidate.Proofs.FrontendStages.Declarations.Data619
import InitECandidate.Proofs.FrontendStages.Declarations.Data620
import InitECandidate.Proofs.FrontendStages.Declarations.Data621
import InitECandidate.Proofs.FrontendStages.Declarations.Data647
import InitECandidate.Proofs.FrontendStages.Declarations.Data648
import InitECandidate.Proofs.FrontendStages.Declarations.Data696
import InitECandidate.Proofs.FrontendStages.Declarations.Data811
import InitECandidate.Proofs.FrontendStages.Declarations.Data846
import InitECandidate.Proofs.FrontendStages.Declarations.Data847
import InitECandidate.Proofs.FrontendStages.Declarations.Data848
import InitECandidate.Proofs.FrontendStages.Declarations.Data849
import InitECandidate.Proofs.FrontendStages.Declarations.Data850
import InitECandidate.Proofs.FrontendStages.Declarations.Data851
import InitECandidate.Proofs.FrontendStages.Declarations.Data852
import InitECandidate.Proofs.FrontendStages.Declarations.Data853
import InitECandidate.Proofs.FrontendStages.Declarations.Data854
import InitECandidate.Proofs.FrontendStages.Declarations.Data855
import InitECandidate.Proofs.FrontendStages.Declarations.Data856
import InitECandidate.Proofs.FrontendStages.Declarations.Data857
import InitECandidate.Proofs.FrontendStages.Declarations.Data858
import InitECandidate.Proofs.FrontendStages.Declarations.Data859
import InitECandidate.Proofs.FrontendStages.Declarations.Data860
import InitECandidate.Proofs.FrontendStages.Declarations.Data864
import InitECandidate.Proofs.FrontendStages.Declarations.Data889
import InitECandidate.Proofs.GlobalsComputation
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalDeclarations : List (Pancake.PanLang.DeclHOL 64) := [simplified1, simplified2, simplified5, simplified6, simplified38, simplified90, simplified91, simplified98, simplified99, simplified100, simplified148, simplified183, simplified184, simplified185, simplified238, simplified242, simplified243, simplified244, simplified245, simplified246, simplified349, simplified350, simplified351, simplified352, simplified353, simplified354, simplified404, simplified405, simplified406, simplified407, simplified408, simplified437, simplified438, simplified439, simplified440, simplified563, simplified564, simplified565, simplified566, simplified609, simplified610, simplified611, simplified612, simplified619, simplified620, simplified621, simplified647, simplified648, simplified696, simplified811, simplified846, simplified847, simplified848, simplified849, simplified850, simplified851, simplified852, simplified853, simplified854, simplified855, simplified856, simplified857, simplified858, simplified859, simplified860, simplified864, simplified889]
def globalInitial : PanGlobalsContextExact 64 :=
  { globals := HolFiniteMapExact.empty, globalsSize := 0,
    maxGlobalsSize := cakeBytesInWord 64 * BitVec.ofNat 64 67 }
def globalContext : PanGlobalsContextExact 64 :=
  (compileDecsExactHOL globalInitial globalDeclarations).2.2.2
def globalStart : Basis.Pure.MlString.MlString := Basis.Pure.MlString.ofString "main"
def globalNewStart : Basis.Pure.MlString.MlString := Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 97#8, 105#8, 110#8, 39#8]
end InitECandidate.Proofs.FrontendStages.Declarations
